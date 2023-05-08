const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('blacklist').setDescription('Blacklists specified user.').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)),
  async execute(interaction) {

  },
};
