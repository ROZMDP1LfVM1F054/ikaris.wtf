const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('whitelist').setDescription('closes targets script connection').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)),
  async execute(interaction) {

  },
};
