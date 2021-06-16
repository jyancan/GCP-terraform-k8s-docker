#!/bin/bash
sagcp1=gcpuser1
sagcp2=(gcloud iam service-accounts create $gcpuser1)
##export $sagcp1 
iam=(gcloud iam service-accounts list --filter $sagcp2)
key=(gcloud iam service-accounts keys create $sagcp1.json --iam-account $iam)

