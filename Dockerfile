###############################################################################
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
###############################################################################
FROM wmoim/dim_eccodes_baseimage:jammy-2.36.0

EXPOSE 8888

RUN apt-get update && apt-get install ca-certificates libudunits2-dev libgdal-dev python3 python3-pip -y && update-ca-certificates

USER root

WORKDIR /root

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

ENTRYPOINT ["jupyter", "notebook","--ip=0.0.0.0","--allow-root","--no-browser","--log-level=30","--ZMQChannelsWebsocketConnection.iopub_data_rate_limit=10000000.0","--ZMQChannelsWebsocketConnection.rate_limit_window=30.0"]