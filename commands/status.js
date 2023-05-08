const { SlashCommandBuilder } = require('@discordjs/builders');
const { MessageEmbed } = require('discord.js');
const axios = require('axios');
const moment = require('moment');

const apiUrl = 'https://api.whatexploitsare.online/status/Synapse';

module.exports = {data: new SlashCommandBuilder().setName('status').setDescription('gets synapse x status'),
  async execute(interaction) {
    try {
      const response = await axios.get(apiUrl);
      const exploitData = response.data[0]['Synapse'];

      let status; switch (exploitData.status_code) {case 0:status = 'Updated';break;case 1:status = 'Not Updated';
      break;
        case 2:
          status = 'Issues Reported';
          break;
        case 3:
          status = 'API Outage';
          break;
        case 4:
          status = 'In Testing';
          break;
      }

      const embed = new MessageEmbed()
        .setColor('#2b2d31')
        .addFields(
          { name: 'Status', value: status },
          { name: 'Synapse Version', value: exploitData.exploit_version },
          { name: 'Roblox Version', value: exploitData.roblox_version },
        );
        const timestamp = moment().format('MM/DD/YYYY, h:mm:ss A');
        embed.setTimestamp(timestamp);

      interaction.reply({ embeds: [embed] });
    } catch (error) {
      console.error(error);
      interaction.reply({ content: `[Could not complete this command, Error: ${error.message}]`, ephemeral: true });
    }
  },
};
