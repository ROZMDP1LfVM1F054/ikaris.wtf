const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');

module.exports = {data: new SlashCommandBuilder().setName('add-tag').setDescription('adds tag to users account').addUserOption(option => option.setName('target').setDescription('input').setRequired(true)).addStringOption(option => option.setName('tag').setDescription('input').setRequired(true)),
  async execute(interaction) {

  },
};
