# Changelog

## [4.6.0](https://github.com/Rbillon59/hass-n8n/compare/4.5.0...4.6.0) (2026-11-10)


### Features

* **deps:** update n8nio/n8n docker tag from 3.1.0 to 3.2.0 ([release notes](https://github.com/n8n-io/n8n/releases/tag/n8n%403.2.0)) ([#723](https://github.com/Rbillon59/hass-n8n/issues/723)) ([dff19bb](https://github.com/Rbillon59/hass-n8n/commit/dff19bb4e62898c2fa349872fc92122792a725ab))

## [4.5.0](https://github.com/Rbillon59/hass-n8n/compare/4.4.50...4.5.0) (2026-11-04)


### Features

* **deps:** update n8nio/n8n docker tag from 3.0.1 to 3.1.0 ([release notes](https://github.com/n8n-io/n8n/releases/tag/n8n%403.1.0)) ([#721](https://github.com/Rbillon59/hass-n8n/issues/721)) ([8e3df25](https://github.com/Rbillon59/hass-n8n/commit/8e3df25a49ef8341dabe7ddc83ba548cf1cdf336))

<!-- n8n-release-notes -->
### n8n release notes

#### [n8n 3.1.0](https://github.com/n8n-io/n8n/releases/tag/n8n%403.1.0)

##### Bug Fixes

* Add missing period to data table storage limit banner copy ([#37943](https://github.com/n8n-io/n8n/issues/37943)) ([d1dc4d6](https://github.com/n8n-io/n8n/commit/d1dc4d6cd3496618d3afdf75962fc2f4e51cec81))
* **AI Agent Node:** Point the deprecated agent type callout to an action that works ([#42898](https://github.com/n8n-io/n8n/issues/42898)) ([7a44fcb](https://github.com/n8n-io/n8n/commit/7a44fcbc4f9fb39c110545c8874c7a4da088ac15))
* **ai-builder:** Include instance admins in team self-healing reviews ([#42325](https://github.com/n8n-io/n8n/issues/42325)) ([58f160d](https://github.com/n8n-io/n8n/commit/58f160d1d5df90c231f9e2099ef20d4f700c7a67))
* **ai-builder:** Open self-healing chat in the result project ([#42399](https://github.com/n8n-io/n8n/issues/42399)) ([0b1849a](https://github.com/n8n-io/n8n/commit/0b1849a54608eb0630f55cfe9722fd79baf252b9))
* **ai-builder:** Update the Assistant chat title when you build a new agent ([#42739](https://github.com/n8n-io/n8n/issues/42739)) ([c98324f](https://github.com/n8n-io/n8n/commit/c98324fabb0c9f04a034661d14fe427a396c5194))
* Align logs panel header button styles and spacing ([#42162](https://github.com/n8n-io/n8n/issues/42162)) ([f5329d0](https://github.com/n8n-io/n8n/commit/f5329d0e5cf5c73dbe34d0a1d5efac3cd5aeec97))
* Align promotion binding and blocker typography ([#42681](https://github.com/n8n-io/n8n/issues/42681)) ([4f8bbb6](https://github.com/n8n-io/n8n/commit/4f8bbb6c6d4fa8182ec4b36900ef23d993e02ff1))
* **API:** Escape unsafe ids in package export paths ([#42038](https://github.com/n8n-io/n8n/issues/42038)) ([1576aef](https://github.com/n8n-io/n8n/commit/1576aef2678dc0c288a9cc64d0179e372ad66ab5))
* **API:** Use planned publication actions for package imports ([#42899](https://github.com/n8n-io/n8n/issues/42899)) ([a60e58c](https://github.com/n8n-io/n8n/commit/a60e58c9ec8e3c832c8f94a7eaa25d3a594f0b4a))
* Apply execution redaction to MCP workflow run errors ([#42574](https://github.com/n8n-io/n8n/issues/42574)) ([53bf60c](https://github.com/n8n-io/n8n/commit/53bf60c598e217a459d92b91c855685652495e00))
* Apply project scopes to folder list queries ([#42171](https://github.com/n8n-io/n8n/issues/42171)) ([cd64ada](https://github.com/n8n-io/n8n/commit/cd64ada6c79894a095c35c5b0acfdac1ff1800e0))
* Apply project scopes to MCP instance context run summaries ([#42173](https://github.com/n8n-io/n8n/issues/42173)) ([1e3335f](https://github.com/n8n-io/n8n/commit/1e3335faee2ed1c2397100a3d4d4076a5091d4f0))
* Bound Agent token counting and guard settled errors ([#42569](https://github.com/n8n-io/n8n/issues/42569)) ([9281106](https://github.com/n8n-io/n8n/commit/9281106068fdab2dd8fcc31ec98aba1423dba265))
* Clear workflow search when entering a folder ([#42884](https://github.com/n8n-io/n8n/issues/42884)) ([4877e1d](https://github.com/n8n-io/n8n/commit/4877e1dc8a64a6c872c5f2872c0bc3d4f8cc43dc))
* Community package supportedNodesApiVersion v3 compatibility ([8232046](https://github.com/n8n-io/n8n/commit/8232046b68b3770a3dd4d9d501e6d4e3fdc34875))
* **core, editor:** Align agent cleanup and telemetry ([#42910](https://github.com/n8n-io/n8n/issues/42910)) ([a7c5271](https://github.com/n8n-io/n8n/commit/a7c527122a45c10d2b92993207200da5fc3ae5d8))
* **core, editor:** Use the managed OAuth app after a switch from a custom app ([#42593](https://github.com/n8n-io/n8n/issues/42593)) ([3cbe84c](https://github.com/n8n-io/n8n/commit/3cbe84c42afefb811eff60e366796daca9ac73de))
* **core:** Add a cooldown before resending migration owner reminders ([#42419](https://github.com/n8n-io/n8n/issues/42419)) ([dddcc70](https://github.com/n8n-io/n8n/commit/dddcc7052f1d674d43cf0ccf1d009ddfc394fa12))
* **core:** Add row details to the missing execution data report ([#42897](https://github.com/n8n-io/n8n/issues/42897)) ([d33d38a](https://github.com/n8n-io/n8n/commit/d33d38a75b7018c95b3ceace200d610ad79d1238))
* **core:** Align GitLab token guidance with merge request requirements ([#42628](https://github.com/n8n-io/n8n/issues/42628)) ([a85b88d](https://github.com/n8n-io/n8n/commit/a85b88dc9c44627527b9a539c74e571dde3623cc))
* **core:** Close promotion reviews when their environment target changes ([#42555](https://github.com/n8n-io/n8n/issues/42555)) ([de61319](https://github.com/n8n-io/n8n/commit/de61319fed192ef0b9b76b54e97ccf605f528fde))
* **core:** Count unsaved crashed executions for auto-deactivation ([#41947](https://github.com/n8n-io/n8n/issues/41947)) ([fc4c4c3](https://github.com/n8n-io/n8n/commit/fc4c4c31a54e027cdbafab7c0f7841f285492262))
* **core:** Expand default blocked IP ranges for outbound request guard ([#38912](https://github.com/n8n-io/n8n/issues/38912)) ([e291ba4](https://github.com/n8n-io/n8n/commit/e291ba43f01343030897ccc538a2bdccf09edc04))
* **core:** Export the stored last success of durable system tasks on every main ([#42319](https://github.com/n8n-io/n8n/issues/42319)) ([db28d8b](https://github.com/n8n-io/n8n/commit/db28d8b94db48cc0b2c137fb94a76c592b8a3047))
* **core:** Give each new queue job to one idle worker in turn ([#42367](https://github.com/n8n-io/n8n/issues/42367)) ([b45761c](https://github.com/n8n-io/n8n/commit/b45761cea3bae14e4365c521f0d71244e054ff76))
* **core:** Guard misconfigured s3 binary data mode at boot and normalize removed-mode detection ([#37337](https://github.com/n8n-io/n8n/issues/37337)) ([84f21c7](https://github.com/n8n-io/n8n/commit/84f21c794beb4bc82e8772c85791afd76cddef7b))
* **core:** Guide agents to valid JSON Pointers in offloaded tool results ([#42909](https://github.com/n8n-io/n8n/issues/42909)) ([86d52c3](https://github.com/n8n-io/n8n/commit/86d52c32e42602f2df9eeb3ce8d6a0ab992df92c))
* **core:** Handle concurrent source control initialization ([#42248](https://github.com/n8n-io/n8n/issues/42248)) ([bd1c731](https://github.com/n8n-io/n8n/commit/bd1c731981fe9b6cedd9687db27bd4561c86c076))
* **core:** Improve credential resolution for node parameter loading ([#41764](https://github.com/n8n-io/n8n/issues/41764)) ([6c9d310](https://github.com/n8n-io/n8n/commit/6c9d31099360e82305cd7e4696e4a891645542f0))
* **core:** Improve removed-node and Edit Image entries in v3 migration report ([#42244](https://github.com/n8n-io/n8n/issues/42244)) ([8ed6f20](https://github.com/n8n-io/n8n/commit/8ed6f20abfb8e6ef8ea61bbbb786b2b38b86efab))
* **core:** Include jobs in the claiming list when reading waiting queue jobs ([#42405](https://github.com/n8n-io/n8n/issues/42405)) ([42f59f6](https://github.com/n8n-io/n8n/commit/42f59f62b52a464e1ab8113b84b145340a09f79d))
* **core:** Keep agent sandbox file writes within the sandbox file size limit ([#42479](https://github.com/n8n-io/n8n/issues/42479)) ([f416643](https://github.com/n8n-io/n8n/commit/f416643da97042595dfb72cdaad1386bf179c506))
* **core:** Keep Agent token counting from blocking the event loop ([#42436](https://github.com/n8n-io/n8n/issues/42436)) ([cdc3f4c](https://github.com/n8n-io/n8n/commit/cdc3f4c253b6069cf1087eabc88d1b0144a9b8da))
* **core:** Keep draft channel settings when a user completes channel setup ([#42302](https://github.com/n8n-io/n8n/issues/42302)) ([b3142f5](https://github.com/n8n-io/n8n/commit/b3142f5a0bf906e7a8a6e348cedab10b43c1c44b))
* **core:** Keep internal-only error metadata out of REST error responses ([#42703](https://github.com/n8n-io/n8n/issues/42703)) ([c2d1003](https://github.com/n8n-io/n8n/commit/c2d10035125ef11791092be9b7c4962f0c9c0b27))
* **core:** Keep own __proto__ keys in values that cross the expression runtime ([#42766](https://github.com/n8n-io/n8n/issues/42766)) ([20c7401](https://github.com/n8n-io/n8n/commit/20c7401e3fc9ec42b73469bb9280c5b29ff085dc))
* **core:** Keep template literal text next to interpolations when the literal contains new lines ([#42181](https://github.com/n8n-io/n8n/issues/42181)) ([e54adab](https://github.com/n8n-io/n8n/commit/e54adabf122018cf2967cd3013e4a2eb966ffa25))
* **core:** Keep the ExpressionError name in minified builds ([#42269](https://github.com/n8n-io/n8n/issues/42269)) ([96cfba9](https://github.com/n8n-io/n8n/commit/96cfba94015a2a96c0e769a43ac6303285b2f479))
* **core:** Keep the name and fields of an Error that an expression returns ([#42767](https://github.com/n8n-io/n8n/issues/42767)) ([8acfffe](https://github.com/n8n-io/n8n/commit/8acfffe5cae2a72b7918112ca34aafc9b8c63e65))
* **core:** Keep the workflow dependency index current after source-control pull and unpublish ([#42407](https://github.com/n8n-io/n8n/issues/42407)) ([56fd96d](https://github.com/n8n-io/n8n/commit/56fd96db135035963d0d3e9e27517f8b56f55cb1))
* **core:** Keep undefined values in QuickJS expression results ([#42253](https://github.com/n8n-io/n8n/issues/42253)) ([248d069](https://github.com/n8n-io/n8n/commit/248d06904f73f441137cc0b7274477bde96886ae))
* **core:** Let expressions read Error objects in item data ([#42768](https://github.com/n8n-io/n8n/issues/42768)) ([c16f6f2](https://github.com/n8n-io/n8n/commit/c16f6f21dc10e41b58e4b4e06962cde6ca937db7))
* **core:** Limit resume attempts for waiting and queued executions ([#42135](https://github.com/n8n-io/n8n/issues/42135)) ([c08ba2d](https://github.com/n8n-io/n8n/commit/c08ba2dd33b2955577971e0e210c77c66ca7bd7e))
* **core:** Limit Sentry trace header propagation ([#42749](https://github.com/n8n-io/n8n/issues/42749)) ([37c9f05](https://github.com/n8n-io/n8n/commit/37c9f05e416565ffcad166edaf17f136d209528b))
* **core:** Measure the memory guard heap ratio on the old generation ([#42380](https://github.com/n8n-io/n8n/issues/42380)) ([4538dd7](https://github.com/n8n-io/n8n/commit/4538dd77c68bac407ced5753e6bdf8e7e73abf59))
* **core:** Normalize tool suffixes in agent node type checks ([#42228](https://github.com/n8n-io/n8n/issues/42228)) ([5168dd3](https://github.com/n8n-io/n8n/commit/5168dd3ab61ea980215f2a4a595ec8a7a6228334))
* **core:** Publish and unpublish workflows from the CLI through the workflow service ([#42320](https://github.com/n8n-io/n8n/issues/42320)) ([6c21bb1](https://github.com/n8n-io/n8n/commit/6c21bb173d4d9b071b736b9a30fe35e2daf0dba5))
* **core:** Re-sync the migration finding table after an n8n upgrade ([#42384](https://github.com/n8n-io/n8n/issues/42384)) ([3d271ac](https://github.com/n8n-io/n8n/commit/3d271ac4e68911e95c5c76faef0e3fa330944fab))
* **core:** Read Data Table rows without taking the SQLite write lock ([#42598](https://github.com/n8n-io/n8n/issues/42598)) ([c92280e](https://github.com/n8n-io/n8n/commit/c92280e0ef07cb3e18fcd40d10348834e2ca0bb8))
* **core:** Read item fields named like Object.prototype methods through computed keys ([#42364](https://github.com/n8n-io/n8n/issues/42364)) ([686c3e8](https://github.com/n8n-io/n8n/commit/686c3e8f928aef372290fb9862d2a4729a71a2e6))
* **core:** Read named array keys in expressions ([#42912](https://github.com/n8n-io/n8n/issues/42912)) ([a19d843](https://github.com/n8n-io/n8n/commit/a19d843f7a258005912d884a87601682fff33c7b))
* **core:** Rebuild the Postgres pool only when a fresh connection shows the database is reachable ([#42202](https://github.com/n8n-io/n8n/issues/42202)) ([91fa27d](https://github.com/n8n-io/n8n/commit/91fa27da29a527db49d8cfa93ab86ddfd47a113f))
* **core:** Recommend moving alerting into the preExecute hook in the v3 migration report ([#42279](https://github.com/n8n-io/n8n/issues/42279)) ([1063a6e](https://github.com/n8n-io/n8n/commit/1063a6e034b1b1f0a82ce3c0407c65559c53fcbb))
* **core:** Record dynamic time saved for executions in queue mode ([#42397](https://github.com/n8n-io/n8n/issues/42397)) ([0b3321a](https://github.com/n8n-io/n8n/commit/0b3321a77e00e20dc64cc02e44a6227341c103c4))
* **core:** Refresh the variables cache when a project is deleted ([#42310](https://github.com/n8n-io/n8n/issues/42310)) ([c93a93f](https://github.com/n8n-io/n8n/commit/c93a93f8289034e5a1e825b85868c3174c95ec27))
* **core:** Remove exportedAt from n8n package manifests ([#42278](https://github.com/n8n-io/n8n/issues/42278)) ([df2f6ed](https://github.com/n8n-io/n8n/commit/df2f6ed4904d036db657c917bc09660fa6c7fca2))
* **core:** Remove waiting executions from memory on queue workers ([#42662](https://github.com/n8n-io/n8n/issues/42662)) ([ed912a6](https://github.com/n8n-io/n8n/commit/ed912a6f4b34ce003ec39da87c54745f64ab9586))
* **core:** Require execution:read when workflow-scoped routes read execution data ([#42305](https://github.com/n8n-io/n8n/issues/42305)) ([cbe4d6c](https://github.com/n8n-io/n8n/commit/cbe4d6c8dfc70f4f8df2f1eaa32fb765b19184fd))
* **core:** Resolve host data paths once per expression evaluation ([#42571](https://github.com/n8n-io/n8n/issues/42571)) ([d50a446](https://github.com/n8n-io/n8n/commit/d50a44698bfb08f368dad62bb9fde7e2947da396))
* **core:** Resolve IMAP trigger expressions after activation ([#42579](https://github.com/n8n-io/n8n/issues/42579)) ([a5aeea6](https://github.com/n8n-io/n8n/commit/a5aeea6fd54049b2a18428fb1dac7f28618d5dc3))
* **core:** Resolve linked items across long pagination loops ([#42744](https://github.com/n8n-io/n8n/issues/42744)) ([c2c5c57](https://github.com/n8n-io/n8n/commit/c2c5c5770cc0fe035071eefb5f83c3cb881b3ada))
* **core:** Return user data with an __isError key as data in expressions ([#42316](https://github.com/n8n-io/n8n/issues/42316)) ([5d640a2](https://github.com/n8n-io/n8n/commit/5d640a22b8ca26781eacd6f3489654c561c51d21))
* **core:** Route Assistant fetch and model fallback through environment proxies ([#41901](https://github.com/n8n-io/n8n/issues/41901)) ([e0fd81c](https://github.com/n8n-io/n8n/commit/e0fd81cb88eb4d767a171f0746a2499790e22b49))
* **core:** Route error items to the error output when the paired item lookup fails ([#41943](https://github.com/n8n-io/n8n/issues/41943)) ([8ae06e2](https://github.com/n8n-io/n8n/commit/8ae06e238a5f37e5dcd57ed298f9d26df4e0c16e))
* **core:** Run partial manual executions when the workflow has NULL pinned data ([#42376](https://github.com/n8n-io/n8n/issues/42376)) ([6813162](https://github.com/n8n-io/n8n/commit/6813162dd4858a2b300a678549ae526db3028410))
* **core:** Show MCP webhook header names for team-project credentials ([#42885](https://github.com/n8n-io/n8n/issues/42885)) ([7ea4731](https://github.com/n8n-io/n8n/commit/7ea4731caa0fbdbb514331283413a6924ca82ddc))
* **core:** Show the paid plan when a Registered Community license is also active ([#42920](https://github.com/n8n-io/n8n/issues/42920)) ([c07ba0c](https://github.com/n8n-io/n8n/commit/c07ba0c3ae62f6472678e64d13dddee697851a74))
* **core:** Stop a queue-mode job on the worker when the stop request comes from a different process ([#42311](https://github.com/n8n-io/n8n/issues/42311)) ([d8b80c8](https://github.com/n8n-io/n8n/commit/d8b80c8352f261b668dd284d60211d37dad83e42))
* **core:** Stop counting runs that fail before their first node as billable ([#41638](https://github.com/n8n-io/n8n/issues/41638)) ([cd37d78](https://github.com/n8n-io/n8n/commit/cd37d7802ea8c0fadfef4a082b6fc84496136b05))
* **core:** Stop self-referencing parameter expressions from crashing n8n on startup ([#42317](https://github.com/n8n-io/n8n/issues/42317)) ([43af959](https://github.com/n8n-io/n8n/commit/43af95958525b2854fc201cc3cfca84b69ccf98f))
* **core:** Use UTC day boundaries when compacting Insights metrics ([#42581](https://github.com/n8n-io/n8n/issues/42581)) ([c20b847](https://github.com/n8n-io/n8n/commit/c20b84726e0bb5fb0c61544ea8bdcc66ab5cbf0f))
* Display tooltips above open select menus ([#42261](https://github.com/n8n-io/n8n/issues/42261)) ([f0942c8](https://github.com/n8n-io/n8n/commit/f0942c8670bbfa4b54f7cb1b45fc864df219427f))
* **editor:** Add icons to Agent configuration actions ([#42031](https://github.com/n8n-io/n8n/issues/42031)) ([1a00f5d](https://github.com/n8n-io/n8n/commit/1a00f5ddfe7deb8524ed530a86dc58f501af14f8))
* **editor:** Align the icon and list of the migration report How to fix panel ([#42788](https://github.com/n8n-io/n8n/issues/42788)) ([f3097ec](https://github.com/n8n-io/n8n/commit/f3097ec20ebd1ce08554858bccdc72341617b70d))
* **editor:** Enlarge the preference modals and their text areas ([#42682](https://github.com/n8n-io/n8n/issues/42682)) ([e112130](https://github.com/n8n-io/n8n/commit/e1121309e1e23e8dc594d4b1688b54b47622c51b))
* **editor:** Fix sticky note color selector padding and toolbar visibility ([#23789](https://github.com/n8n-io/n8n/issues/23789)) ([b921757](https://github.com/n8n-io/n8n/commit/b9217579c97229af2d712c5296c7a817ff9feb67))
* **editor:** Hide Finish setup for published agents ([#42689](https://github.com/n8n-io/n8n/issues/42689)) ([9c09a6f](https://github.com/n8n-io/n8n/commit/9c09a6f190ef278f65b5133ae081e3971ac9811d))
* **editor:** Load the insights summary when the agents list mounts ([#42282](https://github.com/n8n-io/n8n/issues/42282)) ([f8e7ded](https://github.com/n8n-io/n8n/commit/f8e7ded216debea1579814f47211e0f3135867e3))
* **editor:** Localize the more details and retrying text on the credential error banner ([#42817](https://github.com/n8n-io/n8n/issues/42817)) ([3bb3cc2](https://github.com/n8n-io/n8n/commit/3bb3cc2a8052703cfc77ff324ca7928d2579923b))
* **editor:** Localize the value missing labels on the variables page ([#42586](https://github.com/n8n-io/n8n/issues/42586)) ([d93f613](https://github.com/n8n-io/n8n/commit/d93f6130fa3f488c0ccc045fee7c3c507de3c999))
* **editor:** Match compact sidebar icon sizes ([#42323](https://github.com/n8n-io/n8n/issues/42323)) ([5065fe4](https://github.com/n8n-io/n8n/commit/5065fe439ee75ae350e0c778e2203262a9a91772))
* **editor:** Move an AI node's sub-nodes with it when an insert shifts it ([#41961](https://github.com/n8n-io/n8n/issues/41961)) ([b4f115a](https://github.com/n8n-io/n8n/commit/b4f115a67811315b5bfcadf33873017a57088a72))
* **editor:** Open Assistant by default for unpublished agents ([#42447](https://github.com/n8n-io/n8n/issues/42447)) ([df325ca](https://github.com/n8n-io/n8n/commit/df325ca480e689b69c3dccf902291b9672fe96f3))
* **editor:** Open form test popup without a background request to the webhook host ([#41107](https://github.com/n8n-io/n8n/issues/41107)) ([7cb7d0b](https://github.com/n8n-io/n8n/commit/7cb7d0b307bd663d2772e90277d75bb58b876a77))
* **editor:** Reconnect the push connection when the backend comes back online ([#42461](https://github.com/n8n-io/n8n/issues/42461)) ([b379c65](https://github.com/n8n-io/n8n/commit/b379c655d987d98917d8ff2b0ecd358ddcb4ed7f))
* **editor:** Remove the optional marker from the version description label ([#42753](https://github.com/n8n-io/n8n/issues/42753)) ([71987de](https://github.com/n8n-io/n8n/commit/71987de7da0f8cfc79a7a887c06cb5133f9d0ce6))
* **editor:** Render the migration rule detail table one page at a time ([#42784](https://github.com/n8n-io/n8n/issues/42784)) ([662905b](https://github.com/n8n-io/n8n/commit/662905b33f3bd8075211c416a46ddc40b16a497d))
* **editor:** Replace self-healing loading text with placeholders ([#42313](https://github.com/n8n-io/n8n/issues/42313)) ([b9e51b7](https://github.com/n8n-io/n8n/commit/b9e51b78cf82410fdc8f9c8bef0d0b7c40f057d7))
* **editor:** Show a readable label for native tool search in agent chat ([#42402](https://github.com/n8n-io/n8n/issues/42402)) ([6d9a049](https://github.com/n8n-io/n8n/commit/6d9a0494b6a0f631d21574e1184e9ddd10ac203b))
* **editor:** Show how many owners a bulk migration notification emails ([#42440](https://github.com/n8n-io/n8n/issues/42440)) ([d654c48](https://github.com/n8n-io/n8n/commit/d654c48ce35f8694679b32139bb59e872310e8ac))
* **editor:** Show scroll hints on horizontally scrollable tables and pin the User column on Settings > Users ([#42459](https://github.com/n8n-io/n8n/issues/42459)) ([f8db621](https://github.com/n8n-io/n8n/commit/f8db621678ce34caf985bac4ba2d7983d9f65abc))
* **editor:** Show the New test action with a flask icon on Agent cards ([#42433](https://github.com/n8n-io/n8n/issues/42433)) ([1b0dc15](https://github.com/n8n-io/n8n/commit/1b0dc15137b668f716ece9a0d023b1690d6058f6))
* **editor:** Show the workflow project under its name in the migration report ([#42580](https://github.com/n8n-io/n8n/issues/42580)) ([a4962d4](https://github.com/n8n-io/n8n/commit/a4962d40d661d9431fdc9ebae8769aae2fe71a49))
* **editor:** Snap programmatic node positions to the nearest grid line ([#41964](https://github.com/n8n-io/n8n/issues/41964)) ([8e19522](https://github.com/n8n-io/n8n/commit/8e195224e5d24272d1756122075e8c4631733e96))
* **editor:** Stop dialogs from clipping select dropdowns ([#42684](https://github.com/n8n-io/n8n/issues/42684)) ([74b16a7](https://github.com/n8n-io/n8n/commit/74b16a77d6f1993d5fd26075c3422c22cf3aa4b6))
* **editor:** Stop production checklist from reopening on every workflow load ([#42460](https://github.com/n8n-io/n8n/issues/42460)) ([a386563](https://github.com/n8n-io/n8n/commit/a386563d36b681954292b9310c61bb8700790ed0))
* **editor:** Stop sending agent instructions in test chat telemetry ([#42906](https://github.com/n8n-io/n8n/issues/42906)) ([d4b04a0](https://github.com/n8n-io/n8n/commit/d4b04a024fa54fc22e017e21b4fa058b2a3b1f46))
* **editor:** Translate the HTML display mode label and hide its unused pagination bar ([#42401](https://github.com/n8n-io/n8n/issues/42401)) ([757ab8c](https://github.com/n8n-io/n8n/commit/757ab8c4c9ce7a401634c56d881c03f0b91b50e9))
* Fix clipped add-row hover and inconsistent data table dividers ([#42533](https://github.com/n8n-io/n8n/issues/42533)) ([5dc4ab3](https://github.com/n8n-io/n8n/commit/5dc4ab32185565f0eab8bfcf944f26e153c42da7))
* Handle missing conference properties ([#41115](https://github.com/n8n-io/n8n/issues/41115)) ([4a04606](https://github.com/n8n-io/n8n/commit/4a04606dfa06cf73b8d40bda2f3687abed38d2a9))
* **Jenkins Node:** Support CSRF crumb and queue redirect responses ([#41301](https://github.com/n8n-io/n8n/issues/41301)) ([e7ffa7a](https://github.com/n8n-io/n8n/commit/e7ffa7a8910e8c8947d5d8e2fcbd87eecbb2a21e))
* **MCP Client Tool Node:** Preserve user `tool` argument in Agent V3 ([#35067](https://github.com/n8n-io/n8n/issues/35067)) ([c131349](https://github.com/n8n-io/n8n/commit/c131349e1c73dc7c6ee532acc4ee5c47fbbec01e))
* **Microsoft Teams Trigger Node:** Keep one subscription per resource and remove orphans ([#41735](https://github.com/n8n-io/n8n/issues/41735)) ([4546b39](https://github.com/n8n-io/n8n/commit/4546b39d6f20edb42bc49a467ad88aec140a8d65))
* **n8n Node:** Fail the credential test when the Base URL has no API path ([#41791](https://github.com/n8n-io/n8n/issues/41791)) ([beae5f2](https://github.com/n8n-io/n8n/commit/beae5f236acf605601a3caefbb670b3dd9e0c40e))
* **node-cli:** Give each n8n image its own dev data volume ([649f779](https://github.com/n8n-io/n8n/commit/649f779b5f187a2049613d916a72abd53555d05d))
* **node-cli:** Harden the dev command against shell, timeout and port issues ([3718515](https://github.com/n8n-io/n8n/commit/37185156563b681e57d9512bbd8278ff455c809e))
* **node-cli:** Report why a dev reload did not reach n8n ([74d748d](https://github.com/n8n-io/n8n/commit/74d748d08ef1ee1d4f99a65eb12748e3a78f9a2f))
* **node-cli:** Watch asset roots created after dev starts ([fe66ed5](https://github.com/n8n-io/n8n/commit/fe66ed56a5b417e9075e3306640dcd449b861034))
* Pin runners base images and update launcher, urllib3 and moment ([#42901](https://github.com/n8n-io/n8n/issues/42901)) ([3fcd12e](https://github.com/n8n-io/n8n/commit/3fcd12ee1ce035ca9d4620af505984c0986a15da))
* Preserve literal keys in external secret discovery ([#42607](https://github.com/n8n-io/n8n/issues/42607)) ([c820696](https://github.com/n8n-io/n8n/commit/c82069684624395b54a4903791cf09167df9d81c))
* Preserve MCP webhook details when credential lookup fails ([#42808](https://github.com/n8n-io/n8n/issues/42808)) ([50bdfb2](https://github.com/n8n-io/n8n/commit/50bdfb2ea8b431a84ce56419d8b39129a5186353))
* Read instance name from configured sources for apps ([#42896](https://github.com/n8n-io/n8n/issues/42896)) ([b8aee9c](https://github.com/n8n-io/n8n/commit/b8aee9c0a3d40c8186cecc9d6d332224d0c46efa))
* Remove LangChain Code example prompts from Instance AI examples ([cd212da](https://github.com/n8n-io/n8n/commit/cd212da8630c36a2411b582871e6d2674663bc7a))
* Return execution details for MCP test_workflow credential ([#42746](https://github.com/n8n-io/n8n/issues/42746)) ([3198958](https://github.com/n8n-io/n8n/commit/31989583737efa15a0098b32f1db8a1cb2c8a5c6))
* Run nodes-base watch tasks sequentially ([#42858](https://github.com/n8n-io/n8n/issues/42858)) ([77623e9](https://github.com/n8n-io/n8n/commit/77623e97f0622a104de44b823b2c2592bb37147f))
* Scope workflow dependencies by resource type ([#42133](https://github.com/n8n-io/n8n/issues/42133)) ([7252b98](https://github.com/n8n-io/n8n/commit/7252b987e91411efedda648cda44d9898fd4fd1d))
* Show the real error when node parameter options fail to load ([#42448](https://github.com/n8n-io/n8n/issues/42448)) ([6e3704a](https://github.com/n8n-io/n8n/commit/6e3704af9ad1e0a6d6abad328ec51d75b5249d75))
* **Snowflake Node:** Return node errors for failed Snowflake requests ([#41697](https://github.com/n8n-io/n8n/issues/41697)) ([f8fa484](https://github.com/n8n-io/n8n/commit/f8fa484d41fb8997635e0b134ca037e25bbadab0))
* **Splunk Node:** Read Return All and Limit from the item being processed ([#38648](https://github.com/n8n-io/n8n/issues/38648)) ([77bd594](https://github.com/n8n-io/n8n/commit/77bd5942f4757a17222dd04a505927431ec972b8))
* **Splunk Node:** Stop turning a relative time bound into the string NaN ([#38650](https://github.com/n8n-io/n8n/issues/38650)) ([d42c701](https://github.com/n8n-io/n8n/commit/d42c701731efa8e9d8bcf3f203316f330a4ff1ce))
* Validate and serialize log streaming destination saves ([#42161](https://github.com/n8n-io/n8n/issues/42161)) ([e8fc187](https://github.com/n8n-io/n8n/commit/e8fc1878badc88d8603e45c60e46548db083d231))
* Validate credentials with the Agent models endpoint ([#41017](https://github.com/n8n-io/n8n/issues/41017)) ([c084848](https://github.com/n8n-io/n8n/commit/c084848360b20e0bc3d214317c8587ba8f2f6202))

##### Features

* Add an on/off switch and env var for the n8n Assistant ([#42121](https://github.com/n8n-io/n8n/issues/42121)) ([d5bea2f](https://github.com/n8n-io/n8n/commit/d5bea2f387b1c918ce78a915e3bebe03688724ce))
* Add Apps frontend module and list page ([#42180](https://github.com/n8n-io/n8n/issues/42180)) ([24905aa](https://github.com/n8n-io/n8n/commit/24905aa3eabe291b86957bbb16bd99b814df028d))
* Add command bar entries for the Skills and Preferences settings ([#42944](https://github.com/n8n-io/n8n/issues/42944)) ([3656bb9](https://github.com/n8n-io/n8n/commit/3656bb9e9861a982006fdfbc5814bc5fd4de16e5))
* Add publish Apps in UI ([#42634](https://github.com/n8n-io/n8n/issues/42634)) ([8ec26d5](https://github.com/n8n-io/n8n/commit/8ec26d5e3463e9edba1f5993afff957f7e69f2d2))
* **ai-builder:** Add project members as self-healing reviewers ([#42283](https://github.com/n8n-io/n8n/issues/42283)) ([72e5802](https://github.com/n8n-io/n8n/commit/72e58021c361540bd61592f52c95e71385dec3c8))
* **ai-builder:** Send request labels on direct Assistant model calls ([#41951](https://github.com/n8n-io/n8n/issues/41951)) ([073e2f8](https://github.com/n8n-io/n8n/commit/073e2f82b4cf237a27df8e0ee877b618cc1587e1))
* App detail route and the app view component ([#42410](https://github.com/n8n-io/n8n/issues/42410)) ([e0df089](https://github.com/n8n-io/n8n/commit/e0df089c01f10d76e224938f560948ae22c8f998))
* Apps preview frontend ([#42552](https://github.com/n8n-io/n8n/issues/42552)) ([73f7064](https://github.com/n8n-io/n8n/commit/73f7064c3cbbaeb6a624bdc9eb6b0112b241501d))
* Bump N8N_NODES_API_VERSION to 3 ([2d2e5d0](https://github.com/n8n-io/n8n/commit/2d2e5d04ee845355223591af40a11f617ec645b1))
* Configure App view with basics ([#42704](https://github.com/n8n-io/n8n/issues/42704)) ([bd05c81](https://github.com/n8n-io/n8n/commit/bd05c81f3a93b0aae4be907e61aad03ad9e9b54a))
* **core, ai-builder:** Allow Assistant and MCP to update credential descriptions ([#42425](https://github.com/n8n-io/n8n/issues/42425)) ([0c10bc5](https://github.com/n8n-io/n8n/commit/0c10bc5fd042a1c1484603671fcfe7b56140b236))
* **core, editor:** Add Agent version history and publication timeline ([#42296](https://github.com/n8n-io/n8n/issues/42296)) ([66a82cb](https://github.com/n8n-io/n8n/commit/66a82cb412ab1b02bb881f151605d43ee46b1008))
* **core, editor:** Create missing projects from Apply connections ([#42870](https://github.com/n8n-io/n8n/issues/42870)) ([243eec2](https://github.com/n8n-io/n8n/commit/243eec2250a8a3e8277bf621b8c192b893d9ae83))
* **core:** Add $evaluateExpression rule and align v3 migration report copy with docs ([#42298](https://github.com/n8n-io/n8n/issues/42298)) ([0179883](https://github.com/n8n-io/n8n/commit/0179883d135420c5e0238d8b59c3c628017f35ce))
* **core:** Add Agent version and publication storage ([#41816](https://github.com/n8n-io/n8n/issues/41816)) ([caa6e27](https://github.com/n8n-io/n8n/commit/caa6e274b9c887bed0b2e5ef79fa05d754cc9ddc))
* **core:** Add capture guidance for cross-session memory ([#42170](https://github.com/n8n-io/n8n/issues/42170)) ([1075876](https://github.com/n8n-io/n8n/commit/107587622fe688992da3807ae93d32edb622171c))
* **core:** Add CIMD support to outbound MCP OAuth ([#42608](https://github.com/n8n-io/n8n/issues/42608)) ([929779f](https://github.com/n8n-io/n8n/commit/929779fc83efe3db0c822b2dbc9dee187cc5ea44))
* **core:** Add MCP tools to read Agent session logs ([#42190](https://github.com/n8n-io/n8n/issues/42190)) ([6d47284](https://github.com/n8n-io/n8n/commit/6d47284624bfc3c70c99692b775ed13690e202ca))
* **core:** Add pagination for more than 10 options for whatsapp list… ([#41705](https://github.com/n8n-io/n8n/issues/41705)) ([6820f73](https://github.com/n8n-io/n8n/commit/6820f735e52543389678c052584d5347a0390332))
* **core:** Add the otel.configure external hook ([#42164](https://github.com/n8n-io/n8n/issues/42164)) ([721a3db](https://github.com/n8n-io/n8n/commit/721a3db880178ca0b12655ec1fd4d6966627b916))
* **core:** Improve episodic memory recall and consolidate captured facts ([#42438](https://github.com/n8n-io/n8n/issues/42438)) ([4761830](https://github.com/n8n-io/n8n/commit/47618308ca5cf40f423432cceb5826f547b976ce))
* **core:** Increase the agent knowledge file upload limit to 25 MB ([#42395](https://github.com/n8n-io/n8n/issues/42395)) ([5cba4ba](https://github.com/n8n-io/n8n/commit/5cba4ba69e74469be24a396547d098a8394189a9))
* **core:** Let the n8n Assistant read unsaved manual executions ([#42125](https://github.com/n8n-io/n8n/issues/42125)) ([681ad50](https://github.com/n8n-io/n8n/commit/681ad5062ff4c16b247e3f5c6d11fc521af899e3))
* **core:** Load the promotions module by default and remove its rollout flag ([#42247](https://github.com/n8n-io/n8n/issues/42247)) ([5fcad47](https://github.com/n8n-io/n8n/commit/5fcad475f3a01de279fac6b0bb5ba0e054c7a51a))
* **core:** Pass W3C baggage from webhooks to outbound requests ([#42532](https://github.com/n8n-io/n8n/issues/42532)) ([a8cde7f](https://github.com/n8n-io/n8n/commit/a8cde7ff6c5e90895e5ecc1948496c57ea76f8b1))
* **core:** Publish saved Agent versions independently of drafts ([#41817](https://github.com/n8n-io/n8n/issues/41817)) ([8791d76](https://github.com/n8n-io/n8n/commit/8791d7683db72568ffdabb32ff1c8c7b76078499))
* **core:** Select managed OAuth app by version stored on the credential ([#41623](https://github.com/n8n-io/n8n/issues/41623)) ([1a222dd](https://github.com/n8n-io/n8n/commit/1a222dd76c380e11d1f4d8f6fb5d5beea291f36e))
* **core:** Send WhatsApp template messages outside the customer serv… ([#41133](https://github.com/n8n-io/n8n/issues/41133)) ([df2086b](https://github.com/n8n-io/n8n/commit/df2086b7960bcc5185084e84b44d2047c95a5212))
* **core:** Show recalled and flagged memories in agent session traces ([#42434](https://github.com/n8n-io/n8n/issues/42434)) ([2abfa99](https://github.com/n8n-io/n8n/commit/2abfa995a954cfa6d034bf3426a9b966c24eaf90))
* **core:** Turn off the chat hub module by default ([#38612](https://github.com/n8n-io/n8n/issues/38612)) ([ce33f2e](https://github.com/n8n-io/n8n/commit/ce33f2e6859561a92782ca92219dabf012717137))
* **core:** Upgrade Sentry to v11 and set up OpenTelemetry once at startup ([#41584](https://github.com/n8n-io/n8n/issues/41584)) ([9f8dc74](https://github.com/n8n-io/n8n/commit/9f8dc740b5ed37bdf59c70181e2fd1026fce24d0))
* **editor:** Add Agent builder layout experiments ([#41879](https://github.com/n8n-io/n8n/issues/41879)) ([f4006d0](https://github.com/n8n-io/n8n/commit/f4006d0d9d7e393843b38605142c2b41e9f05347))
* **editor:** Add resolution guidance to the migration rule detail page ([#42531](https://github.com/n8n-io/n8n/issues/42531)) ([576e4fe](https://github.com/n8n-io/n8n/commit/576e4fe3287663f315ca124374bd148e8fd225b9))
* **editor:** Open a resource from the Assistant header when no tabs are open ([#42671](https://github.com/n8n-io/n8n/issues/42671)) ([66f6b7e](https://github.com/n8n-io/n8n/commit/66f6b7e03c9cf35c2fb5fd873d648eecda337b0f))
* **editor:** Redesign the agent session trace ([#41536](https://github.com/n8n-io/n8n/issues/41536)) ([53c8296](https://github.com/n8n-io/n8n/commit/53c829637eddadebb07cd43d3306ab13cd9c9e45))
* **editor:** Show agent test chat over the Assistant chat ([#42328](https://github.com/n8n-io/n8n/issues/42328)) ([45ea5b2](https://github.com/n8n-io/n8n/commit/45ea5b2b4453d21a6a7864b196a6dbc264cf227c))
* **editor:** Show app blueprint card before creating an app ([#42815](https://github.com/n8n-io/n8n/issues/42815)) ([3eae292](https://github.com/n8n-io/n8n/commit/3eae292c02e0706b336641035691e8a54b78f72b))
* **editor:** Show Meta review status and a removal warning for the W… ([#41580](https://github.com/n8n-io/n8n/issues/41580)) ([5f55c42](https://github.com/n8n-io/n8n/commit/5f55c42d485b60201a74cf166fc49439bd2bfd34))
* **editor:** Show the project of each workflow in the migration report ([#41989](https://github.com/n8n-io/n8n/issues/41989)) ([b3210ec](https://github.com/n8n-io/n8n/commit/b3210ec22c7da10c536eecf55efc7d41a5ee8893))
* **editor:** Warn before a move into a project that restricts its types ([#41870](https://github.com/n8n-io/n8n/issues/41870)) ([18f1234](https://github.com/n8n-io/n8n/commit/18f12340030c047cc1f688198fde862f1f08fcb9))
* Integrate App building in n8n assistant ([#42636](https://github.com/n8n-io/n8n/issues/42636)) ([ddd9aa0](https://github.com/n8n-io/n8n/commit/ddd9aa0ab349526ccf39e2b023e1f2eb961741e4))
* **Mailchimp Trigger Node:** Add webhook signature verification ([#41561](https://github.com/n8n-io/n8n/issues/41561)) ([bf6a4de](https://github.com/n8n-io/n8n/commit/bf6a4de3843ac246e7af8ca1ec2e000a41dde91c))
* **Microsoft Agent 365 Node:** Send spans to Microsoft through the OpenTelemetry setup ([#42174](https://github.com/n8n-io/n8n/issues/42174)) ([e7ce327](https://github.com/n8n-io/n8n/commit/e7ce327e0b153064322a292f0d49eab3a38a9507))
* **n8n Node:** Add user get operation ([#42566](https://github.com/n8n-io/n8n/issues/42566)) ([7514f84](https://github.com/n8n-io/n8n/commit/7514f8445cc68a8fa24737dba7083a39dccf4c4d))
* **OpenWeatherMap Node:** Use the credential base URL and authentication ([#42184](https://github.com/n8n-io/n8n/issues/42184)) ([02cb18e](https://github.com/n8n-io/n8n/commit/02cb18e19c8626adbc2d50122a71e7cb230dd856))
* **Postgres Node:** Add custom SSL certificate support ([#41593](https://github.com/n8n-io/n8n/issues/41593)) ([a428c28](https://github.com/n8n-io/n8n/commit/a428c2831ff57c25da3c027c003410083ec17e37))
* Remove dead nodes ([#34327](https://github.com/n8n-io/n8n/issues/34327)) ([54f1b8e](https://github.com/n8n-io/n8n/commit/54f1b8e92404465fd0ff5865fe916c34e743c0e6))
* Remove Edit Image v1-1.1 ([12344c2](https://github.com/n8n-io/n8n/commit/12344c279053faeb033b423f366229b3601511e5))
* Show skills created or edited by the n8n Assistant as artifacts ([#41631](https://github.com/n8n-io/n8n/issues/41631)) ([4d45133](https://github.com/n8n-io/n8n/commit/4d4513388d457aceff36595a97ecbd9f58acfe0f))
* **Venafi TLS Protect Cloud Trigger Node:** Add webhook signature verification ([#42250](https://github.com/n8n-io/n8n/issues/42250)) ([ec21c27](https://github.com/n8n-io/n8n/commit/ec21c2785d2604fd525755c4da77a9fa630181fb))
* Warn on community node operation names that break the UX guidelines (CE-3602, CE-3603) ([#41932](https://github.com/n8n-io/n8n/issues/41932)) ([b39429d](https://github.com/n8n-io/n8n/commit/b39429dd90c2ac7ea8e997ff22e3d8d40e583c8c))
* **Zendesk Node:** Default new nodes to OAuth2 authentication ([#39310](https://github.com/n8n-io/n8n/issues/39310)) ([53c39cb](https://github.com/n8n-io/n8n/commit/53c39cb26d440a9b23e8cff65b6bae5c540bcec7))

##### Performance Improvements

* **ai-builder:** Prepare the Assistant sandbox while the model writes a sandbox tool call ([#42565](https://github.com/n8n-io/n8n/issues/42565)) ([ee2b20a](https://github.com/n8n-io/n8n/commit/ee2b20a097c0b6ac5bfb04a733390fcd89173fa5))
* **ai-builder:** Run SDK source lint in the build and remove the separate validate step ([#42346](https://github.com/n8n-io/n8n/issues/42346)) ([82e88e0](https://github.com/n8n-io/n8n/commit/82e88e0e715cb73dfc84f28412fe61156c3959db))
* **core:** Index executions by workflow id for workflow deletion ([#42677](https://github.com/n8n-io/n8n/issues/42677)) ([68c277a](https://github.com/n8n-io/n8n/commit/68c277aa09212fa6852c1bf757722d5a2470c989))
* **core:** Load the eligible users once per migration report sync ([#42700](https://github.com/n8n-io/n8n/issues/42700)) ([2df0b78](https://github.com/n8n-io/n8n/commit/2df0b7833073fc936b4df42e4677a723222e7ce0))
* **core:** Read each Slack credential once per migration report scan ([#42686](https://github.com/n8n-io/n8n/issues/42686)) ([8cd8e76](https://github.com/n8n-io/n8n/commit/8cd8e76f9b3300fc636be0fcde3ec4207ead6079))
* **core:** Restore lazy loading of credential types ([#42403](https://github.com/n8n-io/n8n/issues/42403)) ([d6100ca](https://github.com/n8n-io/n8n/commit/d6100caf9fbde885f0124f040d077a07278409f3))
* **core:** Skip role scopes when loading users for owner suggestions ([#42613](https://github.com/n8n-io/n8n/issues/42613)) ([8f81bc6](https://github.com/n8n-io/n8n/commit/8f81bc6f0a2ff94537b390f92c0e420390b5b5f0))
* **core:** Store episodic memory embeddings as binary and read less per search ([#42487](https://github.com/n8n-io/n8n/issues/42487)) ([1d5d982](https://github.com/n8n-io/n8n/commit/1d5d9821c45336aeac7bc7d62d15d6521d354492))
* **core:** Use keyset paging in the migration report scan ([#42691](https://github.com/n8n-io/n8n/issues/42691)) ([6d64b09](https://github.com/n8n-io/n8n/commit/6d64b097175c8a774c72b0b3d683641f125e7a36))
* **core:** Use latest models with low effort for workflow verification helpers ([#42231](https://github.com/n8n-io/n8n/issues/42231)) ([92589e0](https://github.com/n8n-io/n8n/commit/92589e093d34ee116e2053ae35d2aae77265a82d))
* **Google Drive Trigger Node:** Read watched item instead of listing changes ([#42134](https://github.com/n8n-io/n8n/issues/42134)) ([a40aea4](https://github.com/n8n-io/n8n/commit/a40aea4f2586c5d6b38d9cd07aab910e5ca90728))

##### Reverts

* Revert "feat(Execute Sub-workflow Node)!: Remove "Run once for each item" mode (#37036)" ([b8ccc0c](https://github.com/n8n-io/n8n/commit/b8ccc0ce8df87293b03a5f2eb4765681a6dad8b3)), closes [#37036](https://github.com/n8n-io/n8n/issues/37036)
* Revert "chore: baseline migration timestamps for 3.x sync" ([d85bf3f](https://github.com/n8n-io/n8n/commit/d85bf3f69eb66ddccd790ddb2f4002e51784b414))
* Revert "feat(core)!: Remove the "Any workflow" caller policy (#38381)" ([3e1a7ca](https://github.com/n8n-io/n8n/commit/3e1a7ca4262c09b828eff16d9860ce43557f42d9)), closes [#38381](https://github.com/n8n-io/n8n/issues/38381)

* <a href="https://cubic.dev/pr/n8n-io/n8n/pull/42987?utm_source=github" target="_blank" rel="noopener noreferrer" data-no-image-dialog="true"><picture><source media="(prefers-color-scheme: dark)" srcset="https://www.cubic.dev/buttons/review-in-cubic-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://www.cubic.dev/buttons/review-in-cubic-light.svg"><img alt="View guided diff" src="https://www.cubic.dev/buttons/review-in-cubic-light.svg"></picture></a> <a href="https://www.cubic.dev/action/auto-fix/pr/n8n-io/n8n/42987?returnTo=https%3A%2F%2Fgithub.com%2Fn8n-io%2Fn8n%2Fpull%2F42987&source=description" target="_blank" rel="noopener noreferrer" data-no-image-dialog="true"><picture><source media="(prefers-color-scheme: dark)" srcset="https://www.cubic.dev/buttons/turn-on-auto-fix-dark.svg"><source media="(prefers-color-scheme: light)" srcset="https://www.cubic.dev/buttons/turn-on-auto-fix-light.svg"><img alt="Turn on auto-fix" src="https://www.cubic.dev/buttons/turn-on-auto-fix-light.svg"></picture></a>

## [4.4.50](https://github.com/Rbillon59/hass-n8n/compare/4.4.49...4.4.50) (2026-10-28)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 3.0.0 to 3.0.1 ([#718](https://github.com/Rbillon59/hass-n8n/issues/718)) ([21d3401](https://github.com/Rbillon59/hass-n8n/commit/21d340154275272b844acad91b22d293c65b5d01))

## [4.4.49](https://github.com/Rbillon59/hass-n8n/compare/4.4.48...4.4.49) (2026-10-27)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.46.0 to 3.0.0 ([#715](https://github.com/Rbillon59/hass-n8n/issues/715)) ([99c5140](https://github.com/Rbillon59/hass-n8n/commit/99c51401dc94d944709b6c10c8d1b3648d11b045))

## [4.4.48](https://github.com/Rbillon59/hass-n8n/compare/4.4.47...4.4.48) (2026-10-27)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.45.4 to 2.46.0 ([#714](https://github.com/Rbillon59/hass-n8n/issues/714)) ([423b484](https://github.com/Rbillon59/hass-n8n/commit/423b484baa27c9a3397d15695947532a418f19ad))

## [4.4.47](https://github.com/Rbillon59/hass-n8n/compare/4.4.46...4.4.47) (2026-10-26)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.45.3 to 2.45.4 ([#712](https://github.com/Rbillon59/hass-n8n/issues/712)) ([ccea6fa](https://github.com/Rbillon59/hass-n8n/commit/ccea6fa8a3de850a7b7ad3abd6ee2be05b80e5c3))

## [4.4.46](https://github.com/Rbillon59/hass-n8n/compare/4.4.45...4.4.46) (2026-10-23)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.45.2 to 2.45.3 ([#710](https://github.com/Rbillon59/hass-n8n/issues/710)) ([2f5ba61](https://github.com/Rbillon59/hass-n8n/commit/2f5ba611265be8035f604afd43cfeb1583fc3735))

## [4.4.45](https://github.com/Rbillon59/hass-n8n/compare/4.4.44...4.4.45) (2026-10-22)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.45.1 to 2.45.2 ([#708](https://github.com/Rbillon59/hass-n8n/issues/708)) ([d01ba27](https://github.com/Rbillon59/hass-n8n/commit/d01ba27ff26db0beab81d859fc15d37e59b2d3e8))

## [4.4.44](https://github.com/Rbillon59/hass-n8n/compare/4.4.43...4.4.44) (2026-10-21)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.45.0 to 2.45.1 ([#706](https://github.com/Rbillon59/hass-n8n/issues/706)) ([3909f3d](https://github.com/Rbillon59/hass-n8n/commit/3909f3d053e10cf03ac6f210bf6880252070c078))

## [4.4.43](https://github.com/Rbillon59/hass-n8n/compare/4.4.42...4.4.43) (2026-10-20)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.44.4 to 2.45.0 ([#704](https://github.com/Rbillon59/hass-n8n/issues/704)) ([6c934c6](https://github.com/Rbillon59/hass-n8n/commit/6c934c65c939a23b528d3fb88afb7c0890ac382a))

## [4.4.42](https://github.com/Rbillon59/hass-n8n/compare/4.4.41...4.4.42) (2026-10-19)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.44.3 to 2.44.4 ([#702](https://github.com/Rbillon59/hass-n8n/issues/702)) ([a4f0f86](https://github.com/Rbillon59/hass-n8n/commit/a4f0f8647844303a46accacef6031d1bafeaa902))

## [4.4.41](https://github.com/Rbillon59/hass-n8n/compare/4.4.40...4.4.41) (2026-10-16)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.44.2 to 2.44.3 ([#700](https://github.com/Rbillon59/hass-n8n/issues/700)) ([a3e033a](https://github.com/Rbillon59/hass-n8n/commit/a3e033acb3db18e6edd8248d4a8edeaea8c25b1d))

## [4.4.40](https://github.com/Rbillon59/hass-n8n/compare/4.4.39...4.4.40) (2026-10-15)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.44.1 to 2.44.2 ([#698](https://github.com/Rbillon59/hass-n8n/issues/698)) ([4c381b1](https://github.com/Rbillon59/hass-n8n/commit/4c381b1dcfaf3487f063ee381ec03deac697f097))

## [4.4.39](https://github.com/Rbillon59/hass-n8n/compare/4.4.38...4.4.39) (2026-10-14)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.44.0 to 2.44.1 ([#696](https://github.com/Rbillon59/hass-n8n/issues/696)) ([3956c65](https://github.com/Rbillon59/hass-n8n/commit/3956c653d13db7518feda1a46ad9498c2f7712dc))

## [4.4.38](https://github.com/Rbillon59/hass-n8n/compare/4.4.37...4.4.38) (2026-10-13)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.43.4 to 2.44.0 ([#694](https://github.com/Rbillon59/hass-n8n/issues/694)) ([83aba17](https://github.com/Rbillon59/hass-n8n/commit/83aba170b278e56e9f3aaeef6f32f70362f15f85))

## [4.4.37](https://github.com/Rbillon59/hass-n8n/compare/4.4.36...4.4.37) (2026-10-12)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.43.3 to 2.43.4 ([#692](https://github.com/Rbillon59/hass-n8n/issues/692)) ([17f5b54](https://github.com/Rbillon59/hass-n8n/commit/17f5b5439b1ed6ef2c23d2ed1f6081af0befc25b))

## [4.4.36](https://github.com/Rbillon59/hass-n8n/compare/4.4.35...4.4.36) (2026-10-09)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.43.2 to 2.43.3 ([#690](https://github.com/Rbillon59/hass-n8n/issues/690)) ([e4a7c48](https://github.com/Rbillon59/hass-n8n/commit/e4a7c480230e236ec693d4df9afb6cf53ab2d460))

## [4.4.35](https://github.com/Rbillon59/hass-n8n/compare/4.4.34...4.4.35) (2026-10-08)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.43.1 to 2.43.2 ([#688](https://github.com/Rbillon59/hass-n8n/issues/688)) ([ff55ded](https://github.com/Rbillon59/hass-n8n/commit/ff55ded557c98efe3c1c07cd65bd0dba96b36065))

## [4.4.34](https://github.com/Rbillon59/hass-n8n/compare/4.4.33...4.4.34) (2026-10-07)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.43.0 to 2.43.1 ([#686](https://github.com/Rbillon59/hass-n8n/issues/686)) ([a9b99a7](https://github.com/Rbillon59/hass-n8n/commit/a9b99a7c320729e769b21210ba456899c8ad0673))

## [4.4.33](https://github.com/Rbillon59/hass-n8n/compare/4.4.32...4.4.33) (2026-10-06)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.42.3 to 2.43.0 ([#684](https://github.com/Rbillon59/hass-n8n/issues/684)) ([f62c1a4](https://github.com/Rbillon59/hass-n8n/commit/f62c1a47cb6625d03c9dc2dfd76fb059e3fa95fb))

## [4.4.32](https://github.com/Rbillon59/hass-n8n/compare/4.4.31...4.4.32) (2026-10-05)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.42.2 to 2.42.3 ([#682](https://github.com/Rbillon59/hass-n8n/issues/682)) ([a309656](https://github.com/Rbillon59/hass-n8n/commit/a309656a0a5ae00db2dca2cb76f55e217c7f8016))

## [4.4.31](https://github.com/Rbillon59/hass-n8n/compare/4.4.30...4.4.31) (2026-10-01)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.42.1 to 2.42.2 ([#680](https://github.com/Rbillon59/hass-n8n/issues/680)) ([7fe5da1](https://github.com/Rbillon59/hass-n8n/commit/7fe5da121ba558524acdde8cedf2656958c471b5))

## [4.4.30](https://github.com/Rbillon59/hass-n8n/compare/4.4.29...4.4.30) (2026-09-30)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.42.0 to 2.42.1 ([#678](https://github.com/Rbillon59/hass-n8n/issues/678)) ([5ac13b4](https://github.com/Rbillon59/hass-n8n/commit/5ac13b4b8b3ce83b7e8230f7444badf6c9a50046))

## [4.4.29](https://github.com/Rbillon59/hass-n8n/compare/4.4.28...4.4.29) (2026-09-29)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.41.3 to 2.42.0 ([#676](https://github.com/Rbillon59/hass-n8n/issues/676)) ([1f6ef38](https://github.com/Rbillon59/hass-n8n/commit/1f6ef389743f95a2ba23ef043b4fee1d8ad6ef15))

## [4.4.28](https://github.com/Rbillon59/hass-n8n/compare/4.4.27...4.4.28) (2026-09-25)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.41.2 to 2.41.3 ([#674](https://github.com/Rbillon59/hass-n8n/issues/674)) ([e5a94a6](https://github.com/Rbillon59/hass-n8n/commit/e5a94a609533d697d263d787c4300c9b6631bc5b))

## [4.4.27](https://github.com/Rbillon59/hass-n8n/compare/4.4.26...4.4.27) (2026-09-25)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.41.1 to 2.41.2 ([#672](https://github.com/Rbillon59/hass-n8n/issues/672)) ([18b91fa](https://github.com/Rbillon59/hass-n8n/commit/18b91fa3ebcccb67d832752fd02f266f5a396ef9))

## [4.4.26](https://github.com/Rbillon59/hass-n8n/compare/4.4.25...4.4.26) (2026-09-23)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.41.0 to 2.41.1 ([#670](https://github.com/Rbillon59/hass-n8n/issues/670)) ([7d62153](https://github.com/Rbillon59/hass-n8n/commit/7d62153dcc81f37b7ea261d92612481659d3f43d))

## [4.4.25](https://github.com/Rbillon59/hass-n8n/compare/4.4.24...4.4.25) (2026-09-22)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.5 to 2.41.0 ([#668](https://github.com/Rbillon59/hass-n8n/issues/668)) ([f80883f](https://github.com/Rbillon59/hass-n8n/commit/f80883fd481b1cd48c73bb10ae73256311b04278))

## [4.4.24](https://github.com/Rbillon59/hass-n8n/compare/4.4.23...4.4.24) (2026-09-21)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.4 to 2.40.5 ([#666](https://github.com/Rbillon59/hass-n8n/issues/666)) ([7b4d82b](https://github.com/Rbillon59/hass-n8n/commit/7b4d82b4b56fdf5ce811066054a1a52b26f37351))

## [4.4.23](https://github.com/Rbillon59/hass-n8n/compare/4.4.22...4.4.23) (2026-09-21)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.3 to 2.40.4 ([#664](https://github.com/Rbillon59/hass-n8n/issues/664)) ([3a04955](https://github.com/Rbillon59/hass-n8n/commit/3a049558aac195acbb3d06dc9eda84e5d47523a5))

## [4.4.22](https://github.com/Rbillon59/hass-n8n/compare/4.4.21...4.4.22) (2026-09-18)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.2 to 2.40.3 ([#662](https://github.com/Rbillon59/hass-n8n/issues/662)) ([dd1f4c4](https://github.com/Rbillon59/hass-n8n/commit/dd1f4c4e2292fb898b9b32a40d89c113e778edd6))

## [4.4.21](https://github.com/Rbillon59/hass-n8n/compare/4.4.20...4.4.21) (2026-09-17)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.1 to 2.40.2 ([#660](https://github.com/Rbillon59/hass-n8n/issues/660)) ([c468d6a](https://github.com/Rbillon59/hass-n8n/commit/c468d6a20dcc5133e3ec22e4fe409b95b414e0c2))

## [4.4.20](https://github.com/Rbillon59/hass-n8n/compare/4.4.19...4.4.20) (2026-09-16)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.40.0 to 2.40.1 ([#658](https://github.com/Rbillon59/hass-n8n/issues/658)) ([2b7c755](https://github.com/Rbillon59/hass-n8n/commit/2b7c7557ce18a8c21bd0bbc26b97f15701f70ebd))

## [4.4.19](https://github.com/Rbillon59/hass-n8n/compare/4.4.18...4.4.19) (2026-09-15)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.39.5 to 2.40.0 ([#656](https://github.com/Rbillon59/hass-n8n/issues/656)) ([f084f09](https://github.com/Rbillon59/hass-n8n/commit/f084f095eff89f1dc4243d5e5fa2c3dc3c5c3128))

## [4.4.18](https://github.com/Rbillon59/hass-n8n/compare/4.4.17...4.4.18) (2026-09-14)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.39.4 to 2.39.5 ([#654](https://github.com/Rbillon59/hass-n8n/issues/654)) ([f4f6753](https://github.com/Rbillon59/hass-n8n/commit/f4f6753c433ba3ef02c914bd2c7d65532b3999e9))

## [4.4.17](https://github.com/Rbillon59/hass-n8n/compare/4.4.16...4.4.17) (2026-09-11)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.39.2 to 2.39.4 ([#652](https://github.com/Rbillon59/hass-n8n/issues/652)) ([2ae166a](https://github.com/Rbillon59/hass-n8n/commit/2ae166a142d953f86da4af9920b23f3e68d913ae))

## [4.4.16](https://github.com/Rbillon59/hass-n8n/compare/4.4.15...4.4.16) (2026-09-10)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.39.1 to 2.39.2 ([#650](https://github.com/Rbillon59/hass-n8n/issues/650)) ([7cdf7b3](https://github.com/Rbillon59/hass-n8n/commit/7cdf7b3cb9ef862579e820bd8f72dab0e8b651b6))

## [4.4.15](https://github.com/Rbillon59/hass-n8n/compare/4.4.14...4.4.15) (2026-09-09)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.39.0 to 2.39.1 ([#648](https://github.com/Rbillon59/hass-n8n/issues/648)) ([c233593](https://github.com/Rbillon59/hass-n8n/commit/c23359332b16522b1c05bd4bac5a501bcfc6b99d))

## [4.4.14](https://github.com/Rbillon59/hass-n8n/compare/4.4.13...4.4.14) (2026-09-08)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.38.4 to 2.39.0 ([#646](https://github.com/Rbillon59/hass-n8n/issues/646)) ([203a2d8](https://github.com/Rbillon59/hass-n8n/commit/203a2d8613493bb3350750b1b83a7f016f097ef0))

## [4.4.13](https://github.com/Rbillon59/hass-n8n/compare/4.4.12...4.4.13) (2026-09-07)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.38.3 to 2.38.4 ([#644](https://github.com/Rbillon59/hass-n8n/issues/644)) ([41d3136](https://github.com/Rbillon59/hass-n8n/commit/41d3136838dd17cbda51f567d23e38698732087c))

## [4.4.12](https://github.com/Rbillon59/hass-n8n/compare/4.4.11...4.4.12) (2026-09-03)


### Bug Fixes

* preserve the browser Origin on the webhook port ([#642](https://github.com/Rbillon59/hass-n8n/issues/642)) ([9f3f40a](https://github.com/Rbillon59/hass-n8n/commit/9f3f40a58a590d3603bbdc30b9057b483015ecfe))

## [4.4.11](https://github.com/Rbillon59/hass-n8n/compare/4.4.10...4.4.11) (2026-09-03)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.38.2 to 2.38.3 ([#640](https://github.com/Rbillon59/hass-n8n/issues/640)) ([c586340](https://github.com/Rbillon59/hass-n8n/commit/c586340ec434140684ed21189d7f762221a4d592))

## [4.4.10](https://github.com/Rbillon59/hass-n8n/compare/4.4.9...4.4.10) (2026-09-02)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.38.1 to 2.38.2 ([#638](https://github.com/Rbillon59/hass-n8n/issues/638)) ([a8a5d7d](https://github.com/Rbillon59/hass-n8n/commit/a8a5d7d203633f63f5926771b091ddca0768af50))

## [4.4.9](https://github.com/Rbillon59/hass-n8n/compare/4.4.8...4.4.9) (2026-09-01)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.38.0 to 2.38.1 ([#636](https://github.com/Rbillon59/hass-n8n/issues/636)) ([d589640](https://github.com/Rbillon59/hass-n8n/commit/d58964099b238ac297f7f14798968c707b2da574))

## [4.4.8](https://github.com/Rbillon59/hass-n8n/compare/4.4.7...4.4.8) (2026-09-01)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.37.6 to 2.38.0 ([#634](https://github.com/Rbillon59/hass-n8n/issues/634)) ([17940c6](https://github.com/Rbillon59/hass-n8n/commit/17940c6ab9f1e7d8d7bd4188959d48897b2b1e16))

## [4.4.7](https://github.com/Rbillon59/hass-n8n/compare/4.4.6...4.4.7) (2026-08-31)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.37.4 to 2.37.6 ([#632](https://github.com/Rbillon59/hass-n8n/issues/632)) ([6afc489](https://github.com/Rbillon59/hass-n8n/commit/6afc4898565bcca749192113c50784e7f18dd765))

## [4.4.6](https://github.com/Rbillon59/hass-n8n/compare/4.4.5...4.4.6) (2026-08-28)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.37.3 to 2.37.4 ([#630](https://github.com/Rbillon59/hass-n8n/issues/630)) ([48c62d1](https://github.com/Rbillon59/hass-n8n/commit/48c62d1e43e8f3b064327913b12ef032695eba82))

## [4.4.5](https://github.com/Rbillon59/hass-n8n/compare/4.4.4...4.4.5) (2026-08-27)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.37.1 to 2.37.3 ([#628](https://github.com/Rbillon59/hass-n8n/issues/628)) ([9e456b0](https://github.com/Rbillon59/hass-n8n/commit/9e456b07aeab314bcc822d42f9657c04f7cbad84))

## [4.4.4](https://github.com/Rbillon59/hass-n8n/compare/4.4.3...4.4.4) (2026-08-25)


### Bug Fixes

* **deps:** update n8nio/n8n docker tag from 2.36.6 to 2.37.1 ([#626](https://github.com/Rbillon59/hass-n8n/issues/626)) ([ca7eb74](https://github.com/Rbillon59/hass-n8n/commit/ca7eb74a5a7722231fe04c5abdb48301597aa940))

## [4.4.3](https://github.com/Rbillon59/hass-n8n/compare/4.4.2...4.4.3) (2026-08-25)


### Bug Fixes

* emit n8n bumps as fix so release-please cuts a release ([#624](https://github.com/Rbillon59/hass-n8n/issues/624)) ([4de337c](https://github.com/Rbillon59/hass-n8n/commit/4de337c4b20acba2698c1659aa3099eba6f81fb6))

## [4.4.2](https://github.com/Rbillon59/hass-n8n/compare/4.4.1...4.4.2) (2026-08-23)


### Bug Fixes

* revert invalid workflows permission key, use CR_PAT for auto-merge ([#621](https://github.com/Rbillon59/hass-n8n/issues/621)) ([3bba599](https://github.com/Rbillon59/hass-n8n/commit/3bba599cb64bf087591af551f6d443e6fcbc1ae6))

## [4.4.1](https://github.com/Rbillon59/hass-n8n/compare/4.4.0...4.4.1) (2026-08-23)


### Bug Fixes

* grant workflows permission for auto-merge on workflow file changes ([#619](https://github.com/Rbillon59/hass-n8n/issues/619)) ([6b2dd3e](https://github.com/Rbillon59/hass-n8n/commit/6b2dd3eb463b4e70bb7e86c521879d6e9f499c12))

## [4.4.0](https://github.com/Rbillon59/hass-n8n/compare/4.3.33...4.4.0) (2026-08-23)


### Features

* switch n8n dependency updates from Dependabot to Renovate ([#610](https://github.com/Rbillon59/hass-n8n/issues/610)) ([030679d](https://github.com/Rbillon59/hass-n8n/commit/030679d61f4635867ffb344edec73983da51a4ab)), closes [#580](https://github.com/Rbillon59/hass-n8n/issues/580)

## [4.3.33](https://github.com/Rbillon59/hass-n8n/compare/4.3.32...4.3.33) (2026-08-20)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.34.4 to 2.34.6 ([#606](https://github.com/Rbillon59/hass-n8n/issues/606)) ([d0097b4](https://github.com/Rbillon59/hass-n8n/commit/d0097b41368f609b255cc8cc9cb72912342bc74d))
* **deps:** bump n8nio/n8n from 2.34.6 to 2.35.3 ([#607](https://github.com/Rbillon59/hass-n8n/issues/607)) ([1cbd854](https://github.com/Rbillon59/hass-n8n/commit/1cbd85465977ac743829064f0f0e119ae9bfce2c))

## [4.3.32](https://github.com/Rbillon59/hass-n8n/compare/4.3.31...4.3.32) (2026-08-12)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.33.7 to 2.34.4 ([#604](https://github.com/Rbillon59/hass-n8n/issues/604)) ([43bdf69](https://github.com/Rbillon59/hass-n8n/commit/43bdf6914273f52a5b2f1ad5e8403597a67d361c))

## [4.3.31](https://github.com/Rbillon59/hass-n8n/compare/4.3.30...4.3.31) (2026-08-11)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.33.3 to 2.33.7 ([#602](https://github.com/Rbillon59/hass-n8n/issues/602)) ([c7af918](https://github.com/Rbillon59/hass-n8n/commit/c7af918e362a8b9d997e9a06ff6896957ecf4200))

## [4.3.30](https://github.com/Rbillon59/hass-n8n/compare/4.3.29...4.3.30) (2026-08-05)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.32.7 to 2.33.3 ([#600](https://github.com/Rbillon59/hass-n8n/issues/600)) ([604c777](https://github.com/Rbillon59/hass-n8n/commit/604c777cf7c225e1823e7a1835f7cdf48e0e4936))

## [4.3.29](https://github.com/Rbillon59/hass-n8n/compare/4.3.28...4.3.29) (2026-08-04)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.32.6 to 2.32.7 ([#598](https://github.com/Rbillon59/hass-n8n/issues/598)) ([94c17b8](https://github.com/Rbillon59/hass-n8n/commit/94c17b8a5b7e969c176449c506ed93c52ef8c59f))

## [4.3.28](https://github.com/Rbillon59/hass-n8n/compare/4.3.27...4.3.28) (2026-07-30)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.32.5 to 2.32.6 ([#595](https://github.com/Rbillon59/hass-n8n/issues/595)) ([dac5c1b](https://github.com/Rbillon59/hass-n8n/commit/dac5c1b205b82d85b213f948f4981b29756644ac))

## [4.3.27](https://github.com/Rbillon59/hass-n8n/compare/4.3.26...4.3.27) (2026-07-29)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.31.7 to 2.32.5 ([#593](https://github.com/Rbillon59/hass-n8n/issues/593)) ([3585299](https://github.com/Rbillon59/hass-n8n/commit/3585299ef490466a61e997d96bfcfc8bf3bf5f0f))

## [4.3.26](https://github.com/Rbillon59/hass-n8n/compare/4.3.25...4.3.26) (2026-07-28)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.31.6 to 2.31.7 ([#591](https://github.com/Rbillon59/hass-n8n/issues/591)) ([3d23aa1](https://github.com/Rbillon59/hass-n8n/commit/3d23aa17724b2c071648b145a0600dceb95c117b))

## [4.3.25](https://github.com/Rbillon59/hass-n8n/compare/4.3.24...4.3.25) (2026-07-25)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.31.5 to 2.31.6 ([#589](https://github.com/Rbillon59/hass-n8n/issues/589)) ([5640a81](https://github.com/Rbillon59/hass-n8n/commit/5640a8188c147af95797180a5f6d8c31d73df469))

## [4.3.24](https://github.com/Rbillon59/hass-n8n/compare/4.3.23...4.3.24) (2026-07-23)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.31.4 to 2.31.5 ([#587](https://github.com/Rbillon59/hass-n8n/issues/587)) ([cf8899f](https://github.com/Rbillon59/hass-n8n/commit/cf8899f6c9abbea5e3481a851e2db22ff4e7b936))

## [4.3.23](https://github.com/Rbillon59/hass-n8n/compare/4.3.22...4.3.23) (2026-07-22)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.30.8 to 2.31.4 ([#585](https://github.com/Rbillon59/hass-n8n/issues/585)) ([9003518](https://github.com/Rbillon59/hass-n8n/commit/9003518fd4c54c01c4be5581d5100b11a503111a))

## [4.3.22](https://github.com/Rbillon59/hass-n8n/compare/4.3.21...4.3.22) (2026-07-21)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.30.7 to 2.30.8 ([#583](https://github.com/Rbillon59/hass-n8n/issues/583)) ([2230cd7](https://github.com/Rbillon59/hass-n8n/commit/2230cd7698c9930b682ca5cb99204e73111af343))

## [4.3.21](https://github.com/Rbillon59/hass-n8n/compare/4.3.20...4.3.21) (2026-07-18)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.30.6 to 2.30.7 ([#581](https://github.com/Rbillon59/hass-n8n/issues/581)) ([078a1fd](https://github.com/Rbillon59/hass-n8n/commit/078a1fd98c9c5d259d6aff667f4284ed36c71a03))

## [4.3.20](https://github.com/Rbillon59/hass-n8n/compare/4.3.19...4.3.20) (2026-07-17)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.30.5 to 2.30.6 ([#578](https://github.com/Rbillon59/hass-n8n/issues/578)) ([16fc894](https://github.com/Rbillon59/hass-n8n/commit/16fc894ce934d234f1bf0850ed0f9b561af530f1))

## [4.3.19](https://github.com/Rbillon59/hass-n8n/compare/4.3.18...4.3.19) (2026-07-16)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.30.4 to 2.30.5 ([#576](https://github.com/Rbillon59/hass-n8n/issues/576)) ([8124acc](https://github.com/Rbillon59/hass-n8n/commit/8124accfd78dba5edee7c05cfc23940f9eb756c5))

## [4.3.18](https://github.com/Rbillon59/hass-n8n/compare/4.3.17...4.3.18) (2026-07-15)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.29.10 to 2.30.4 ([#574](https://github.com/Rbillon59/hass-n8n/issues/574)) ([593fac0](https://github.com/Rbillon59/hass-n8n/commit/593fac07857347d6aea5028e1e07961dd3ba889b))

## [4.3.17](https://github.com/Rbillon59/hass-n8n/compare/4.3.16...4.3.17) (2026-07-11)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.29.9 to 2.29.10 ([#572](https://github.com/Rbillon59/hass-n8n/issues/572)) ([3315ed2](https://github.com/Rbillon59/hass-n8n/commit/3315ed236c5d89b7f01b3f470c6e5da042f0d46e))

## [4.3.16](https://github.com/Rbillon59/hass-n8n/compare/4.3.15...4.3.16) (2026-07-10)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.29.8 to 2.29.9 ([#570](https://github.com/Rbillon59/hass-n8n/issues/570)) ([0e194ca](https://github.com/Rbillon59/hass-n8n/commit/0e194caad2ec70a19185acee4ff959d24370e975))

## [4.3.15](https://github.com/Rbillon59/hass-n8n/compare/4.3.14...4.3.15) (2026-07-09)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.29.7 to 2.29.8 ([#568](https://github.com/Rbillon59/hass-n8n/issues/568)) ([5407ab2](https://github.com/Rbillon59/hass-n8n/commit/5407ab29de786adccf7caa7d06e4ce04e3897e3e))

## [4.3.14](https://github.com/Rbillon59/hass-n8n/compare/4.3.13...4.3.14) (2026-07-08)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.28.7 to 2.29.7 ([#566](https://github.com/Rbillon59/hass-n8n/issues/566)) ([06eae3b](https://github.com/Rbillon59/hass-n8n/commit/06eae3b71a338726c93184c5041a6f94ff61e128))

## [4.3.13](https://github.com/Rbillon59/hass-n8n/compare/4.3.12...4.3.13) (2026-07-07)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.28.6 to 2.28.7 ([#564](https://github.com/Rbillon59/hass-n8n/issues/564)) ([5382caf](https://github.com/Rbillon59/hass-n8n/commit/5382caf2e032e61e3e130eb720243de4fd192a08))

## [4.3.12](https://github.com/Rbillon59/hass-n8n/compare/4.3.11...4.3.12) (2026-07-04)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.28.5 to 2.28.6 ([#562](https://github.com/Rbillon59/hass-n8n/issues/562)) ([d5e455a](https://github.com/Rbillon59/hass-n8n/commit/d5e455a8bd270ca76f78008a52b95ea69aa0c180))

## [4.3.11](https://github.com/Rbillon59/hass-n8n/compare/4.3.10...4.3.11) (2026-07-03)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.28.4 to 2.28.5 ([#560](https://github.com/Rbillon59/hass-n8n/issues/560)) ([97009ea](https://github.com/Rbillon59/hass-n8n/commit/97009eac59d410dc2c168a4fc55d4492a6707280))

## [4.3.10](https://github.com/Rbillon59/hass-n8n/compare/4.3.9...4.3.10) (2026-07-02)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.28.3 to 2.28.4 ([#557](https://github.com/Rbillon59/hass-n8n/issues/557)) ([8643a0a](https://github.com/Rbillon59/hass-n8n/commit/8643a0a3eceb1cc4fcf36849f74505854dc14c0c))

## [4.3.9](https://github.com/Rbillon59/hass-n8n/compare/4.3.8...4.3.9) (2026-07-01)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.27.5 to 2.28.3 ([#555](https://github.com/Rbillon59/hass-n8n/issues/555)) ([b7fc3f1](https://github.com/Rbillon59/hass-n8n/commit/b7fc3f15a8141ddeabc48e9e61409281f374fae1))

## [4.3.8](https://github.com/Rbillon59/hass-n8n/compare/4.3.7...4.3.8) (2026-06-30)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.26.8 to 2.27.5 ([#553](https://github.com/Rbillon59/hass-n8n/issues/553)) ([ec64437](https://github.com/Rbillon59/hass-n8n/commit/ec64437730984cb09149098b9d49d0fa626b5437))

## [4.3.7](https://github.com/Rbillon59/hass-n8n/compare/4.3.6...4.3.7) (2026-06-20)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.26.7 to 2.26.8 ([#548](https://github.com/Rbillon59/hass-n8n/issues/548)) ([8170cc5](https://github.com/Rbillon59/hass-n8n/commit/8170cc51e5af0950f4638b93046c0edb7904875f))

## [4.3.6](https://github.com/Rbillon59/hass-n8n/compare/4.3.5...4.3.6) (2026-06-19)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.26.6 to 2.26.7 ([#546](https://github.com/Rbillon59/hass-n8n/issues/546)) ([c6f1228](https://github.com/Rbillon59/hass-n8n/commit/c6f12282d0a525d08cdb860ca3e6d674e76e5679))

## [4.3.5](https://github.com/Rbillon59/hass-n8n/compare/4.3.4...4.3.5) (2026-06-18)


### Bug Fixes

* remove N8N_ENDPOINT_HEALTH override, let n8n 2.x derive it from N8N_PATH ([#544](https://github.com/Rbillon59/hass-n8n/issues/544)) ([54056d1](https://github.com/Rbillon59/hass-n8n/commit/54056d1531f730b1853654bb2077749c4ad0638a))

## [4.3.4](https://github.com/Rbillon59/hass-n8n/compare/4.3.3...4.3.4) (2026-06-18)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.26.4 to 2.26.6 ([#542](https://github.com/Rbillon59/hass-n8n/issues/542)) ([a7c0042](https://github.com/Rbillon59/hass-n8n/commit/a7c00428cffc3dc61927810ed3658a667be0f2f4))

## [4.3.3](https://github.com/Rbillon59/hass-n8n/compare/4.3.2...4.3.3) (2026-06-17)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.25.7 to 2.26.4 ([#540](https://github.com/Rbillon59/hass-n8n/issues/540)) ([2952016](https://github.com/Rbillon59/hass-n8n/commit/2952016fe579c9ca06773d22cfb5aecba3ee25fa))

## [4.3.2](https://github.com/Rbillon59/hass-n8n/compare/4.3.1...4.3.2) (2026-06-13)


### Bug Fixes

* keep leading slash in N8N_ENDPOINT_HEALTH so editor stays online ([#535](https://github.com/Rbillon59/hass-n8n/issues/535)) ([de90b7b](https://github.com/Rbillon59/hass-n8n/commit/de90b7bdd8faf7e12f53c0413d3b96fdd0b5a911)), closes [#530](https://github.com/Rbillon59/hass-n8n/issues/530)

## [4.3.1](https://github.com/Rbillon59/hass-n8n/compare/4.3.0...4.3.1) (2026-06-13)


### Bug Fixes

* only export N8N_SSL_CERT/KEY when certfile and keyfile are set ([#534](https://github.com/Rbillon59/hass-n8n/issues/534)) ([ad8b273](https://github.com/Rbillon59/hass-n8n/commit/ad8b273a6fae77160d65f2269693937a29f51c35)), closes [#445](https://github.com/Rbillon59/hass-n8n/issues/445)

## [4.3.0](https://github.com/Rbillon59/hass-n8n/compare/4.2.30...4.3.0) (2026-06-13)


### Features

* add opt-in unrestrict_file_writes for HA-mapped path writes ([#518](https://github.com/Rbillon59/hass-n8n/issues/518)) ([f8c9c7d](https://github.com/Rbillon59/hass-n8n/commit/f8c9c7d2020caec05760e66ee87a58d426e98d4b))

## [4.2.30](https://github.com/Rbillon59/hass-n8n/compare/4.2.29...4.2.30) (2026-06-13)


### Bug Fixes

* avoid fromJSON crash when release-please has no PR to create ([e6e4d5d](https://github.com/Rbillon59/hass-n8n/commit/e6e4d5dd07926b9ee55a97f49fafc7653c0b9425))
* avoid fromJSON crash when release-please has no PR to create ([e906204](https://github.com/Rbillon59/hass-n8n/commit/e906204076d1de9a6a8996d5c4951a7ea4350adf))

## [4.2.29](https://github.com/Rbillon59/hass-n8n/compare/4.2.28...4.2.29) (2026-06-10)


### Bug Fixes

* **deps:** bump n8nio/n8n from 2.25.6 to 2.25.7 ([#527](https://github.com/Rbillon59/hass-n8n/issues/527)) ([fc9b65f](https://github.com/Rbillon59/hass-n8n/commit/fc9b65ff9c7144a670b1d74325ce7dc6f289810e))

## Release 4.2.27

## What's Changed
* chore: update changelog for release 4.2.26 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/471
* chore(deps): bump n8nio/n8n from 2.9.2 to 2.9.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/472
* chore(deps): bump n8nio/n8n from 2.9.4 to 2.10.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/473
* chore(deps): bump n8nio/n8n from 2.10.2 to 2.10.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/474
* chore(deps): bump n8nio/n8n from 2.10.3 to 2.10.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/475
* chore(deps): bump n8nio/n8n from 2.10.4 to 2.11.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/476
* chore(deps): bump n8nio/n8n from 2.11.2 to 2.11.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/477
* chore(deps): bump n8nio/n8n from 2.11.3 to 2.11.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/478
* chore(deps): bump n8nio/n8n from 2.11.4 to 2.12.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/479
* chore(deps): bump n8nio/n8n from 2.12.2 to 2.12.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/480
* fix: auto-configure N8N_ENDPOINT_HEALTH to prevent constant "offline" status via HA ingress by @Copilot in https://github.com/Rbillon59/hass-n8n/pull/481


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.26...4.2.27


## Release 4.2.26

## What's Changed
* chore: update changelog for release 4.2.25 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/466
* chore(deps): bump n8nio/n8n from 2.8.3 to 2.9.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/470


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.25...4.2.26


## Release 4.2.25

## What's Changed
* chore: update changelog for release 4.2.24 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/448
* docs: add troubleshooting steps to reset n8n admin password by @eroak in https://github.com/Rbillon59/hass-n8n/pull/449
* chore(deps): bump n8nio/n8n from 2.2.4 to 2.2.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/450
* chore(deps): bump n8nio/n8n from 2.2.5 to 2.2.6 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/451
* chore(deps): bump n8nio/n8n from 2.2.6 to 2.3.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/453
* chore(deps): bump n8nio/n8n from 2.3.2 to 2.3.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/454
* chore(deps): bump n8nio/n8n from 2.3.4 to 2.3.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/455
* chore(deps): bump n8nio/n8n from 2.3.5 to 2.3.6 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/456
* chore(deps): bump n8nio/n8n from 2.3.6 to 2.4.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/457
* chore(deps): bump n8nio/n8n from 2.4.4 to 2.4.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/458
* chore(deps): bump n8nio/n8n from 2.4.5 to 2.4.6 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/459
* chore(deps): bump n8nio/n8n from 2.4.6 to 2.4.8 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/460
* chore(deps): bump n8nio/n8n from 2.4.8 to 2.6.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/461
* chore(deps): bump n8nio/n8n from 2.6.3 to 2.6.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/462
* chore(deps): bump n8nio/n8n from 2.6.4 to 2.7.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/463
* chore(deps): bump n8nio/n8n from 2.7.4 to 2.7.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/464
* chore(deps): bump n8nio/n8n from 2.7.5 to 2.8.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/465


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.24...4.2.25


## Release 4.2.24

## What's Changed
* chore: update changelog for release 4.2.23 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/441
* chore(deps): bump n8nio/n8n from 2.1.4 to 2.1.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/442
* chore(deps): bump n8nio/n8n from 2.1.5 to 2.2.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/447
* Fix: Make cmd_line_args usable in n8n entrypoint by @eroak in https://github.com/Rbillon59/hass-n8n/pull/444

## New Contributors
* @eroak made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/444

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.23...4.2.24


## Release 4.2.23

## What's Changed
* chore: update changelog for release 4.2.22 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/423
* chore(deps): bump n8nio/n8n from 1.119.2 to 1.120.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/424
* chore(deps): bump n8nio/n8n from 1.120.4 to 1.121.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/427
* chore(deps): bump n8nio/n8n from 1.121.2 to 1.121.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/428
* chore(deps): bump n8nio/n8n from 1.121.3 to 1.122.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/429
* chore(deps): bump n8nio/n8n from 1.122.4 to 1.122.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/430
* chore(deps): bump n8nio/n8n from 1.122.5 to 1.123.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/432
* chore(deps): bump n8nio/n8n from 1.123.4 to 1.123.5 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/434
* chore(deps): bump n8nio/n8n from 1.123.5 to 2.0.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/435
* chore(deps): bump n8nio/n8n from 2.0.2 to 2.0.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/436
* feat: add x86 architecture support to publish-release workflow by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/437
* chore(deps): bump n8nio/n8n from 2.0.3 to 2.1.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/439


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.22...4.2.23


## Release 4.2.22

## What's Changed
* chore: update changelog for release 4.2.21 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/420
* chore(deps): bump n8nio/n8n from 1.118.2 to 1.119.1 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/421
* chore(deps): bump n8nio/n8n from 1.119.1 to 1.119.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/422


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.21...4.2.22


## Release 4.2.21

## What's Changed
* fix: update readme after markdown linting and force release by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/411
* chore(deps): bump n8nio/n8n from 1.116.2 to 1.117.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/412
* chore(deps): bump n8nio/n8n from 1.117.2 to 1.117.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/413
* chore(deps): bump n8nio/n8n from 1.117.3 to 1.118.1 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/414
* chore(deps): bump n8nio/n8n from 1.118.1 to 1.118.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/415


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.20...4.2.21


## Release 4.2.20

## What's Changed

* chore(deps): bump n8nio/n8n from 1.113.3 to 1.114.3 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/406>
* chore(deps): bump n8nio/n8n from 1.114.3 to 1.114.4 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/407>
* chore(deps): bump n8nio/n8n from 1.114.4 to 1.115.2 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/408>
* chore(deps): bump n8nio/n8n from 1.115.2 to 1.115.3 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/409>
* chore(deps): bump n8nio/n8n from 1.115.3 to 1.116.2 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/410>

**Full Changelog**: <https://github.com/Rbillon59/hass-n8n/compare/4.2.19...4.2.20>

## Release 4.2.19

## What's Changed

* chore(deps): bump n8nio/n8n from 1.112.6 to 1.113.3 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/404>

**Full Changelog**: <https://github.com/Rbillon59/hass-n8n/compare/4.2.18...4.2.19>

## Release 4.2.18

## What's Changed
* chore(deps): bump n8nio/n8n from 1.110.1 to 1.111.0 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/396>
* chore(deps): bump n8nio/n8n from 1.111.0 to 1.111.1 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/397>
* chore(deps): bump n8nio/n8n from 1.111.1 to 1.112.3 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/398>
* chore(deps): bump n8nio/n8n from 1.112.3 to 1.112.4 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/399>
* chore(deps): bump n8nio/n8n from 1.112.4 to 1.112.5 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/400>
* chore(deps): bump n8nio/n8n from 1.112.5 to 1.112.6 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/403>

**Full Changelog**: <https://github.com/Rbillon59/hass-n8n/compare/4.2.17...4.2.18>

## Release 4.2.17

## What's Changed
* chore(deps): bump n8nio/n8n from 1.109.2 to 1.110.1 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/394>

**Full Changelog**: <https://github.com/Rbillon59/hass-n8n/compare/4.2.16...4.2.17>

## Release 4.2.16

## What's Changed
* chore: update changelog for release 4.2.15 by @Rbillon59 in <https://github.com/Rbillon59/hass-n8n/pull/387>
* fix: Downgrade n8n base image version to 1.107.4 by @ffMathy in <https://github.com/Rbillon59/hass-n8n/pull/388>
* chore(deps): bump n8nio/n8n from 1.107.4 to 1.108.1 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/389>
* chore(deps): bump n8nio/n8n from 1.108.1 to 1.108.2 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/390>
* chore(deps): bump n8nio/n8n from 1.108.2 to 1.109.1 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/391>
* chore(deps): bump n8nio/n8n from 1.109.1 to 1.109.2 by @dependabot[bot] in <https://github.com/Rbillon59/hass-n8n/pull/392>

**Full Changelog**: <https://github.com/Rbillon59/hass-n8n/compare/4.2.15...4.2.16>

## Release 4.2.15

## What's Changed
* chore: update changelog for release 4.2.14 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/385
* chore(deps): bump n8nio/n8n from 1.107.4 to 1.108.1 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/386


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.14...4.2.15


## Release 4.2.14

## What's Changed
* chore: update changelog for release 4.2.13 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/383
* chore(deps): bump n8nio/n8n from 1.107.3 to 1.107.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/384


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.13...4.2.14


## Release 4.2.13

## What's Changed
* chore: update changelog for release 4.2.12 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/381
* chore(deps): bump n8nio/n8n from 1.106.3 to 1.107.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/382


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.12...4.2.13


## Release 4.2.12

## What's Changed
* chore: update changelog for release 4.2.11 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/374
* chore(deps): bump n8nio/n8n from 1.105.4 to 1.106.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/376
* Add comprehensive GitHub Copilot instructions for hass-n8n development workflow by @Copilot in https://github.com/Rbillon59/hass-n8n/pull/380

## New Contributors
* @Copilot made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/380

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.11...4.2.12


## Release 4.2.11

## What's Changed
* chore: update changelog for release 4.2.10 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/372
* chore(deps): bump n8nio/n8n from 1.105.3 to 1.105.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/373


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.10...4.2.11


## Release 4.2.10

## What's Changed
* chore: update changelog for release 4.2.9 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/370
* chore(deps): bump n8nio/n8n from 1.105.2 to 1.105.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/371


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.9...4.2.10


## Release 4.2.9

## What's Changed
* chore: update changelog for release 4.2.8 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/365
* chore(deps): bump n8nio/n8n from 1.105.1 to 1.105.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/367
* docs: clarify how to set environment variables better by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/368
* tests: add end-to-end tests by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/366


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.8...4.2.9


## Release 4.2.8

## What's Changed
* chore: update changelog for release 4.2.7 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/363
* chore: update n8n manually to preview version by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/364


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.7...4.2.8


## Release 4.2.7

## What's Changed
* chore: update changelog for release 4.2.6 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/358
* fix: don't limit request sizes by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/360
* docs: update README to include My Home Assistant link by @IceBotYT in https://github.com/Rbillon59/hass-n8n/pull/350
* chore(deps): bump n8nio/n8n from 1.104.1 to 1.104.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/362

## New Contributors
* @IceBotYT made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/350

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.6...4.2.7


## Release 4.2.6

## What's Changed
* chore: update changelog for release 4.2.5 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/356
* chore(deps): bump n8nio/n8n from 1.103.2 to 1.104.1 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/357


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.5...4.2.6


## Release 4.2.5

## What's Changed
* chore: update changelog for release 4.2.4 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/349
* chore(deps): bump n8nio/n8n from 1.102.3 to 1.102.4 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/351
* chore(deps): bump n8nio/n8n from 1.102.4 to 1.103.2 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/355


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.4...4.2.5


## Release 4.2.4

## What's Changed
* chore: update changelog for release 4.2.3 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/345
* chore(deps): bump n8nio/n8n from 1.102.0 to 1.102.1 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/346
* chore(deps): bump n8nio/n8n from 1.102.1 to 1.102.3 by @dependabot[bot] in https://github.com/Rbillon59/hass-n8n/pull/348


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.3...4.2.4


## Release 4.2.3

## What's Changed
* chore: update changelog for release 4.2.2 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/341
* chore(deps): bump n8nio/n8n from 1.99.1 to 1.100.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/343
* chore(deps): bump n8nio/n8n from 1.100.1 to 1.102.0 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/344


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.2...4.2.3


## Release 4.2.2

## What's Changed
* chore: update changelog for release 4.2.1 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/338
* chore(deps): bump n8nio/n8n from 1.98.2 to 1.99.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/339


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.1...4.2.2


## Release 4.2.1

## What's Changed
* chore: update changelog for release 4.2.0 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/336
* chore(deps): bump n8nio/n8n from 1.98.1 to 1.98.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/337


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.2.0...4.2.1


## Release 4.2.0

## What's Changed
* chore: update changelog for release 4.1.2 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/333
* chore(deps): bump n8nio/n8n from 1.97.1 to 1.98.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/334
* feat: add support for MCP nodes by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/335


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.1.2...4.2.0


## Release 4.1.2

## What's Changed
* chore: update changelog for release 4.1.1 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/330
* Update nginx.conf to fix Gmail OAuth2 Error: Insufficient parameters … by @ecaridade in https://github.com/Rbillon59/hass-n8n/pull/332

## New Contributors
* @ecaridade made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/332

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.1.1...4.1.2


## Release 4.1.1

## What's Changed
* chore: update changelog for release 4.1.0 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/327
* fix: handle 404 for gmail oauth by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/329


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.1.0...4.1.1


## Release 4.1.0

## What's Changed
* chore: update changelog for release 4.0.14 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/325
* chore(deps): bump n8nio/n8n from 1.95.3 to 1.97.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/326


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.14...4.1.0


## Release 4.0.14

## What's Changed
* chore: update changelog for release 4.0.13 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/321
* fix: connection lost issue due to invalid origin by @sekertr in https://github.com/Rbillon59/hass-n8n/pull/323


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.13...4.0.14


## Release 4.0.13

## What's Changed
* chore: update changelog for release 4.0.12 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/319
* fix: increase nginx timeouts even further by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/320


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.12...4.0.13


## Release 4.0.12

## What's Changed
* chore: update changelog for release 4.0.11 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/316
* chore(deps): bump n8nio/n8n from 1.95.2 to 1.95.3 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/317
* fix: disable all nginx timeouts by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/318


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.11...4.0.12


## Release 4.0.11

## What's Changed
* chore: update changelog for release 4.0.10 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/314
* chore(deps): bump n8nio/n8n from 1.94.1 to 1.95.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/315


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.10...4.0.11


## Release 4.0.10

## What's Changed
* chore: update changelog for release 4.0.9 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/312
* fix: yet another backup size fix attempt by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/313


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.9...4.0.10


## Release 4.0.9

## What's Changed
* chore: update changelog for release 4.0.8 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/310
* fix: correct wrong exclude paths by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/311


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.8...4.0.9


## Release 4.0.8

## What's Changed
* chore: update changelog for release 4.0.7 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/308
* fix: configure supervisord for better log retention cleanup and restarting by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/309


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.7...4.0.8


## Release 4.0.7

## What's Changed
* chore: update changelog for release 4.0.6 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/306
* fix: even smaller backups by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/307


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.6...4.0.7


## Release 4.0.6

## What's Changed
* chore: update changelog for release 4.0.5 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/304
* fix: even smaller backups by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/305


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.5...4.0.6


## Release 4.0.5

## What's Changed
* chore: update changelog for release 4.0.4 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/302
* ci: switch to github token in attempt to fix auth issue by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/303


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.4...4.0.5


## Release 4.0.4

## What's Changed
* chore: update changelog for release 4.0.3 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/300
* ci: use proper architecture names by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/301


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.3...4.0.4


## Release 4.0.3

## What's Changed
* chore: update changelog for release 4.0.2 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/298
* fix: remove unsupported architectures by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/299


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.2...4.0.3


## Release 4.0.2

## What's Changed
* chore: update changelog for release 4.0.1 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/296
* ci: disable fail fast by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/297


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.1...4.0.2


## Release 4.0.1

## What's Changed
* chore: update changelog for release 4.0.0 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/294
* fix: lowercase package registry URL by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/295


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/4.0.0...4.0.1


## Release 4.0.0

## What's Changed
* chore: update changelog for release 3.4.9 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/290
* fix: improve ingress stability by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/291
* ci: add permissions for auto-merge of Dependabot by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/292
* fix!: changed to remote image to reduce backup size by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/293


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.9...4.0.0


## Release 3.4.9

## What's Changed
* docs: update changelog manually to resolve temporary issue by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/288
* fix: add missing line break indicator to dockerfile by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/289


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.8...3.4.9


## Release 3.4.8

## What's Changed
* chore: update changelog for release 3.4.7 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/282
* fix: add docker labels in attempt to fix backup size issue by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/284
* chore: update changelog for release 3.5.0 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/286
* fix: add missing ARG statements to dockerfile by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/285


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.7...3.5.0


## Release 3.4.7

## What's Changed
* chore: update changelog for release 3.4.6 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/280
* chore(deps): bump n8nio/n8n from 1.94.0 to 1.94.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/281


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.6...3.4.7


## Release 3.4.6

## What's Changed
* chore: update changelog for release 3.4.5 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/278
* chore(deps): bump n8nio/n8n from 1.93.0 to 1.94.0 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/279


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.5...3.4.6


## Release 3.4.5

## What's Changed
* Update CHANGELOG.md by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/276
* fix: add /form route to Nginx reverse proxy configuration by @sekertr in https://github.com/Rbillon59/hass-n8n/pull/277


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.4...3.4.5


## Release 3.4.4

## What's Changed
* chore: update changelog for release 3.4.3 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/271
* added Home Assistant Sidebar Icon by @sekertr in https://github.com/Rbillon59/hass-n8n/pull/272
* chore(deps): bump n8nio/n8n from 1.91.3 to 1.92.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/273
* chore(deps): bump n8nio/n8n from 1.92.2 to 1.93.0 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/274


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.3...3.4.4


## Release 3.4.3

## What's Changed
* chore: update changelog for release 3.4.2 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/269
* chore(deps): bump n8nio/n8n from 1.91.2 to 1.91.3 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/270


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.2...3.4.3


## Release 3.4.2

## What's Changed
* chore: update changelog for release 3.4.1 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/267
* chore(deps): bump n8nio/n8n from 1.90.2 to 1.91.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/268


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.1...3.4.2


## Release 3.4.1

## What's Changed
* chore: update changelog for release 3.4.0 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/264
* fix: connection lost issue due to websocket invalid origin by @sekertr in https://github.com/Rbillon59/hass-n8n/pull/266

## New Contributors
* @sekertr made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/266

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.4.0...3.4.1


## Release 3.4.0

## What's Changed
* chore: update changelog for release 3.3.9 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/262
* fix: disable watchdog by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/263


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.9...3.4.0


## Release 3.3.9

## What's Changed
* chore: update changelog for release 3.3.8 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/257
* chore(deps): bump n8nio/n8n from 1.89.2 to 1.90.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/261


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.8...3.3.9


## Release 3.3.8

## What's Changed
* chore: update changelog for release 3.3.7 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/256
* nginx-config: fix connection lost issue by @oetken in https://github.com/Rbillon59/hass-n8n/pull/252

## New Contributors
* @oetken made their first contribution in https://github.com/Rbillon59/hass-n8n/pull/252

**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.7...3.3.8


## Release 3.3.7

## What's Changed
* chore: update changelog for release 3.3.6 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/250
* chore(deps): bump n8nio/n8n from 1.88.0 to 1.89.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/254


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.6...3.3.7


## Release 3.3.6

## What's Changed
* chore: update changelog for release 3.3.5 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/234
* chore(deps): bump n8nio/n8n from 1.83.2 to 1.84.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/235
* chore(deps): bump n8nio/n8n from 1.84.1 to 1.84.3 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/237
* chore(deps): bump n8nio/n8n from 1.84.3 to 1.86.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/246
* chore(deps): bump n8nio/n8n from 1.86.1 to 1.88.0 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/248


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.5...3.3.6


## Release 3.3.5

## What's Changed
* chore: update changelog for release 3.3.4 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/231
* chore(deps): bump n8nio/n8n from 1.82.3 to 1.83.2 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/232
* Update auto-merge-dependabot.yaml by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/233


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.4...3.3.5


## Release 3.3.4

## What's Changed
* chore: update changelog for release 3.3.3 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/224
* docs: elaborate on how to bypass ingress by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/225
* docs: clarify bypassing home assistant by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/227
* chore(deps): bump n8nio/n8n from 1.81.4 to 1.82.1 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/228
* ci: fix auto-merge of dependabot by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/230
* chore(deps): bump n8nio/n8n from 1.82.1 to 1.82.3 by @dependabot in https://github.com/Rbillon59/hass-n8n/pull/229


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.3...3.3.4


## Release 3.3.3

## What's Changed
* chore: update changelog for release 3.3.2 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/222
* fix: add troubleshooting section, fixes #212 by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/223


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.2...3.3.3


## Release 3.3.2

## What's Changed
* chore: update changelog for release 3.3.1 by @Rbillon59 in https://github.com/Rbillon59/hass-n8n/pull/220
* fix: port conflict caused by ingress colliding with manual port mappings by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/221


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.1...3.3.2


## Release 3.3.1

## What's Changed
* fix: broken changelog generation by @ffMathy in https://github.com/Rbillon59/hass-n8n/pull/217


**Full Changelog**: https://github.com/Rbillon59/hass-n8n/compare/3.3.0...3.3.1
