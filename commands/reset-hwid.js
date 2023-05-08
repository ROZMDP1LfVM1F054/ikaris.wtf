const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('reset-hwid').setDescription('resets users hwid').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)),
  async execute(interaction) {

  },
};
