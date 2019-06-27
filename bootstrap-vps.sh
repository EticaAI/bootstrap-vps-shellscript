#!/bin/bash
#===============================================================================
#
#          FILE:  bootstrap-vps.sh
#
#         USAGE:  ./bootstrap-vps.sh
#
#   DESCRIPTION:
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#          TODO:  Implement parameters by file
#         NOTES:  ---
#        AUTHOR:  Emerson Rocha <rocha(at)ieee.org>
#       COMPANY:  Etica.AI
#       VERSION:  1.0
#       CREATED:  2019-06-27 02:27 BRT
#      REVISION:  ---
#===============================================================================

function usage {
    echo "`basename $0` usage: "
    echo "With PARAMETERS:"
    echo ""
    echo "usage: `basename $0` -p ThePassWord -u root -h example.com -f all"
    echo "  -f      [REQUIRED] force run script (you agree with security notices"
    echo "  -h      [optional] user@host"
    echo "  -k      [optional] specify a public key to use"
    echo ""
    echo "With ENVIROMENT VARIABLES"
    echo "   PASSWORD=PassWords HOST=host `basename $0` -f"
    echo "With FILES (Recomended!)"
    echo ""
    echo " (not implemented yet)"
    echo ""
    echo "Security notes:"
    echo ""
    echo " 1. This script have similar security as the use of sshpass."
    echo " 2. This script (when forcing remove know_hosts) is not recommented."
    echo ""
    exit 1
}

while getopts "fhkup:" opt; do
  case $opt in
    f)
      echo "-f was triggered, Parameter: $OPTARG" >&2
      ;;
    h)
      echo "-h was triggered, Parameter: $OPTARG" >&2
      ;;
    k)
      echo "-k was triggered, Parameter: $OPTARG" >&2
      ;;
    p)
      echo "-p was triggered, Parameter: $OPTARG" >&2
      ;;
    p)
      echo "-u was triggered, Parameter: $OPTARG" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    #:)
    #  echo "Option -$OPTARG requires an argument." >&2
    #  exit 1
    #  ;;
  esac
done

echo "VPS_PASS: $BVPS_PASS"

[ -z $1 ] && { usage; }
usage

echo 'oi oi'

exit
