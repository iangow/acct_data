#!/usr/bin/env bash
./wrds_to_pg_v2.pl dealscan.borrowerbase
./wrds_to_pg_v2.pl dealscan.company
./wrds_to_pg_v2.pl dealscan.currfacpricing
./wrds_to_pg_v2.pl dealscan.dealamendment
./wrds_to_pg_v2.pl dealscan.dealpurposecomment
./wrds_to_pg_v2.pl dealscan.facility
./wrds_to_pg_v2.pl dealscan.facilityamendment
./wrds_to_pg_v2.pl dealscan.facilitydates
./wrds_to_pg_v2.pl dealscan.facilityguarantor
./wrds_to_pg_v2.pl dealscan.facilitypaymentschedule
./wrds_to_pg_v2.pl dealscan.facilitysecurity
./wrds_to_pg_v2.pl dealscan.facilitysponsor
./wrds_to_pg_v2.pl dealscan.financialcovenant
./wrds_to_pg_v2.pl dealscan.financialratios
./wrds_to_pg_v2.pl dealscan.lendershares
./wrds_to_pg_v2.pl dealscan.link_table
./wrds_to_pg_v2.pl dealscan.lins
./wrds_to_pg_v2.pl dealscan.marketsegment
./wrds_to_pg_v2.pl dealscan.networthcovenant
./wrds_to_pg_v2.pl dealscan.organizationtype
./wrds_to_pg_v2.pl dealscan.package
./wrds_to_pg_v2.pl dealscan.packageassignmentcomment
./wrds_to_pg_v2.pl dealscan.packageprepaymentcomment
./wrds_to_pg_v2.pl dealscan.performancepricing
./wrds_to_pg_v2.pl dealscan.performancepricingcomments
./wrds_to_pg_v2.pl dealscan.sublimits
./wrds_to_pg_v2.pl dealscan.link_table
./wrds_to_pg_v2.pl dealscan.link_table
./wrds_to_pg_v2.pl dealscan.dbo_df_fac_dates_data

pg_dump --format custom --no-tablespaces --verbose \
    --file $PGBACKUP_DIR/dealscan.backup --schema "dealscan" "crsp"
