const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('get-key').setDescription('Gets your own key'),
  async execute(interaction) {

  },
};
