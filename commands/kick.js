const { SlashCommandBuilder } = require('@discordjs/builders');
const { Permissions } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('kick').setDescription('Kicks a user').addMentionableOption(option =>option.setName('target').setDescription('input').setRequired(true)),
  async execute(interaction) {
    try {
      const guildMember = interaction.options.getMentionable('target');

      if (!interaction.member.permissions.has(Permissions.FLAGS.KICK_MEMBERS)) {
        return await interaction.reply({content: 'You dont have [KICK_MEMBERS] permission to kick members', ephemeral: true});
      }

      await guildMember.kick();
      await interaction.reply({content: `Successfully kicked **${guildMember.user.tag}** - **${guildMember.id}**`, ephemeral: false});
    } catch (error) {
      console.error(error);
      await interaction.reply({ content: `[Could not complete this command, Error: ${error.message}]`, ephemeral: true });
      if (error.code === 'MISSING_PERMISSIONS') {
        return await interaction.reply({ content: 'I am missing [KICK_MEMBERS] permission', ephemeral: true });
      }
    }
  }
};
