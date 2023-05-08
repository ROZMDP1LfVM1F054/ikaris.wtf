const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');
const { luaguardapi, ownerid } = require('../config.json');
const moment = require('moment');
const luawl = require('luawl');

luawl.token = luaguardapi;

module.exports = {data: new SlashCommandBuilder().setName('whitelist').setDescription('Whitelists specified user.').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)),
  async execute(interaction) {
    const discord_id = interaction.options.getUser('target');
    const timestamp = moment().format('MM/DD/YYYY, h:mm:ss A');

    if (interaction.user.id !== ownerid) {
      return interaction.reply({ content: 'You dont have permission to whitelist this user', ephemeral: true });
    }

    if (!interaction.guild.members.cache.get(discord_id.id)) {
      return interaction.reply({content: '[Could not complete this command, Error: User is not in this GUILD]', ephemeral: true});
    }

    try {
      await luawl.addWhitelist(discord_id.id, undefined, '19506');

      const embed = new MessageEmbed()
        .setColor('#2ceb5b')
        .setAuthor({name: `${discord_id.username}#${discord_id.discriminator}`, iconURL: discord_id.avatarURL()})
        .setDescription(`**Success**\nWhitelisted **${discord_id.username}#${discord_id.discriminator}**`);
      embed.setTimestamp(timestamp);

      if (discord_id.dmChannel) {
        embed.setDescription(`${embed.description}\nFailed to dm user their key`);
      } else {
        console.log(`Attempting to DM ${discord_id.username}#${discord_id.discriminator}`);
        embed.setDescription(`${embed.description}\nSuccessfully dmed user their key`);
        await discord_id.send('Successfully whitelisted!');
      }
  
      await interaction.reply({ embeds: [embed] });
    } catch (error) {
      console.error(error);
      await interaction.reply({ content: `[Could not complete this command, Error: ${error.message}]`, ephemeral: true });
      return;
    }
  },
};
