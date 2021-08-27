package DiamondShop.Service.User;

import org.springframework.stereotype.Service;

import DiamondShop.Dto.PaginatesDto;
@Service
public class PaginatesServiceImpl implements IPaginatesService {

	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage) {
		PaginatesDto paginatesDto = new PaginatesDto();
		paginatesDto.setLimit(limit);
		paginatesDto.setTotalPage(SetTotalPage(totalData, limit)); 
		paginatesDto.setCurrentPage(checkCurrentPage(currentPage, paginatesDto.getTotalPage()));
		
		int start = findStart(paginatesDto.getCurrentPage(), limit);
		paginatesDto.setStart(start);
		int end = findEnd(paginatesDto.getStart(), limit, totalData);
		paginatesDto.setEnd(end);
		
		return paginatesDto;
	}

	private int findEnd(int start, int limit, int totalData) {
		return (start + limit > totalData) ? totalData : (start + limit - 1);
	}

	private int SetTotalPage(int totalData, int limit) {
		int totalPage = 0;
		if (totalData > 0)
			totalPage = Math.round(totalData / limit + 0.5f);
		return totalPage;
	}
	
	private int checkCurrentPage(int curentPage, int totalPage) {
		if (curentPage < 1) 
			curentPage = 1;
		if(curentPage > totalPage)
			curentPage = totalPage;
		return curentPage;
	}

	private int findStart(int currentPage, int limit) {
		return (currentPage - 1) * limit ;
	}
	
}
