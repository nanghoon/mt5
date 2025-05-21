package egovframework.example.sample.web.utils;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

public class UserPaginationRenderer extends AbstractPaginationRenderer {
	public UserPaginationRenderer() {
		firstPageLabel = "";
		previousPageLabel = "<a href=\"#\" class=\"paging-btn leftt-arrow w-button\" onclick=\"{0}({1}); return false;\"></a>";
		currentPageLabel = "<a href=\"#\" class=\"paging-btn on w-button\" onclick=\"{0}({1}); return false;\">{0}</a>";
		otherPageLabel = "<a href=\"#\" class=\"paging-btn w-button\" onclick=\"{0}({1}); return false;\">{2}</a>";
		nextPageLabel = "<a href=\"#\" class=\"paging-btn right-arrow w-button\" onclick=\"{0}({1}); return false;\"></a>";
		lastPageLabel = "";
	}
}

