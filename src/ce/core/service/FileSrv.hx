/**
 * Cloud Explorer, lightweight frontend component for file browsing with cloud storage services.
 * @see https://github.com/silexlabs/cloud-explorer
 *
 * Cloud Explorer works as a frontend interface for the unifile node.js module:
 * @see https://github.com/silexlabs/unifile
 *
 * @author Thomas Fétiveau, http://www.tokom.fr  &  Alexandre Hoyau, http://lexoyo.me
 * Copyrights SilexLabs 2013 - http://www.silexlabs.org/ -
 * License MIT
 */
package ce.core.service;

import haxe.Http;

class FileSrv {

	public function new() { }

	public function get(url : String, onSuccess : String -> Void, onError : String -> Void) : Void {

		var http : Http = new Http(url);

		http.onData = onSuccess;

		http.onError = onError;

		http.onStatus = function(s){ trace("status "+s); }

		http.request(false);
	}
}