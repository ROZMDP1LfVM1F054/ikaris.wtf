const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');
const fs = require('fs');
const path = require('path');

module.exports = {data: new SlashCommandBuilder().setName('help').setDescription('Displays all available commands.'),
  execute(interaction) {
    const embed = new MessageEmbed()
      .setColor('#2b2d31')
      .setDescription('```asciidoc\n= Command List =\n\n== 1. Commands ==\n');

    const commandFiles = fs
      .readdirSync(path.join(__dirname, '..', 'commands'))
      .filter((file) => file.endsWith('.js'));

    for (const file of commandFiles) {
      const command = require(path.join(__dirname, '..', 'commands', file));
      embed.description += `/${command.data.name}           :: ${command.data.description}\n`;
    }

    embed.description += '```';
    interaction.reply({ embeds: [embed] });
  },
};
