import ceylon.net.http.server {
	Response,
	Request
}
import ceylon.net.http {
	Header
}

Header location(String url) => Header("Location", url);

shared void redirect(String url)
		(Request request, Response response, Callable<Anything,[]> complete) {
	response.responseStatus = 301;
	response.addHeader(location(url));
	complete();
}
