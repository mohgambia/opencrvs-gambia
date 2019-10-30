#! /bin/sh
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.
#
# OpenCRVS is also distributed under the terms of the Civil Registration
# & Healthcare Disclaimer located at http://opencrvs.org/license.
#
# Copyright (C) The OpenCRVS Authors. OpenCRVS and the OpenCRVS
# graphic logo are (registered/a) trademark(s) of Plan International.

ts-node -r tsconfig-paths/register src/zmb/features/administrative/scripts/prepare-locations.ts
ts-node -r tsconfig-paths/register src/zmb/features/administrative/scripts/assign-admin-structure-to-locations.ts
ts-node -r tsconfig-paths/register src/zmb/features/facilities/scripts/prepare-source-facilities.ts
ts-node -r tsconfig-paths/register src/zmb/features/facilities/scripts/assign-facilities-to-locations.ts
ts-node -r tsconfig-paths/register src/zmb/features/employees/scripts/prepare-source-employees.ts
ts-node -r tsconfig-paths/register src/zmb/features/employees/scripts/assign-employees-to-practitioners.ts