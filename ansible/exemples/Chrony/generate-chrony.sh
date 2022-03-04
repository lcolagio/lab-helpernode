#!/bin/bash
set -e

echo "Creating MachineConfig for chrony configuration..."
echo "$(cat day1_config/machineconfig/masters-chrony-configuration_template.yaml | sed s/\$CHRONY_CONF_B64/$CHRONY_CONF_B64/g)" > $INSTALL_DIRNAME/openshift/99_openshift-machineconfig_99-masters-chrony.yaml
echo "$(cat day1_config/machineconfig/workers-chrony-configuration_template.yaml | sed s/\$CHRONY_CONF_B64/$CHRONY_CONF_B64/g)" > $INSTALL_DIRNAME/openshift/99_openshift-machineconfig_99-workers-chrony.yaml
 
