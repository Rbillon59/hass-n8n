# Workflow Organization Example

This example demonstrates how to organize your n8n automations into separate files using the source control features.

## Configuration

Add these environment variables to your Home Assistant addon configuration:

```yaml
env_vars_list:
  - "N8N_SOURCE_CONTROL_ENABLED: true"
  - "N8N_VERSION_CONTROL_ENABLED: true"
  - "N8N_WORKFLOWS_FOLDER: /data/workflows"
```

## Example Workflow Structure

After enabling source control, your workflows will be organized like this:

```
/data/workflows/
├── home-automation/
│   ├── lighting-control.json
│   ├── temperature-monitoring.json
│   └── security-system.json
├── notifications/
│   ├── daily-summary.json
│   ├── alert-system.json
│   └── status-updates.json
└── integrations/
    ├── weather-api.json
    ├── calendar-sync.json
    └── backup-automation.json
```

## Sample Workflow File

Here's what a workflow file looks like when exported:

```json
{
  "name": "Home Temperature Monitoring",
  "nodes": [
    {
      "parameters": {},
      "name": "Schedule Trigger",
      "type": "n8n-nodes-base.scheduleTrigger",
      "typeVersion": 1.1,
      "position": [240, 300]
    },
    {
      "parameters": {
        "resource": "state",
        "entityId": "sensor.living_room_temperature"
      },
      "name": "Home Assistant",
      "type": "n8n-nodes-base.homeAssistant",
      "typeVersion": 1,
      "position": [460, 300]
    }
  ],
  "connections": {
    "Schedule Trigger": {
      "main": [
        [
          {
            "node": "Home Assistant",
            "type": "main",
            "index": 0
          }
        ]
      ]
    }
  },
  "active": true,
  "settings": {},
  "createdAt": "2024-01-01T00:00:00.000Z",
  "updatedAt": "2024-01-01T00:00:00.000Z",
  "id": "workflow-123"
}
```

## Git Repository Setup

1. Create a new git repository for your workflows
2. Initialize the repository in n8n's source control settings
3. Configure git credentials for automatic syncing
4. Commit and push your workflows to version control

## Benefits

- **Version Control**: Track changes to your automations over time
- **Backup**: Your git repository serves as a complete backup
- **Collaboration**: Multiple users can work on workflows
- **Organization**: Group related workflows by functionality
- **Portability**: Easy to migrate workflows between n8n instances