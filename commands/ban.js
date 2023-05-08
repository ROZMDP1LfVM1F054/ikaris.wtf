const { SlashCommandBuilder } = require('@discordjs/builders');
const { Permissions } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('ban').setDescription('Permanently bans a user.').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)).addStringOption(option => option.setName('reason').setDescription('input')),
  async execute(interaction) {
    const user = interaction.options.getUser('target');
    const reason = interaction.options.getString('reason') || 'Unspecified';

    if (!interaction.member.permissions.has(Permissions.FLAGS.BAN_MEMBERS)) {
      return interaction.reply({ content: 'You dont have [BAN_MEMBERS] permission to ban members', ephemeral: true });
    }

    try {
      await interaction.guild.bans.create(user, { reason: reason });
      const bannedUser = await interaction.client.users.fetch(user.id);
      interaction.reply(`Successfully banned **${bannedUser.tag}** - **${bannedUser.id}** for **${reason}**`);
    } catch (error) {
      console.error(error);
      interaction.reply({ content: `[Could not complete this command, Error: ${error.message}]`, ephemeral: true });
      
      if (error.code === 'MISSING_PERMISSIONS') {
        return interaction.reply({ content: 'I am missing [BAN_MEMBERS] permission', ephemeral: true });
      }
      return;
    }
  },
};