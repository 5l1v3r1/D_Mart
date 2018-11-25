gihub URL : https://github.com/BevoLEt/D_Mart


INDEX 설명 
idx_mall :
	sql : create INDEX idx_mall on MALL (City);
	이유 : 효율적인 인덱싱을 위해선 카디날리티가 높은 컬럼을 기준을 택해야한다. 
		  데이터를 살펴본 결과 mall 에선 city 의 카디날리티가 높고 select 쿼리에서 많이 사용될 것 같은 예측이 되어 인덱싱을 추가하였다.

		  
idx_category :
	sql : create INDEX idx_category on CATEGORY (Small_category);
	이유 : 효율적인 인덱싱을 위해선 카디날리티가 높은 컬럼을 기준을 택해야한다. 
		  데이터를 살펴본 결과 category 에선 Small_category 의 카디날리티가 높고 select 쿼리에서 많이 사용될 것 같은 예측이 되어 인덱싱을 추가하였다.



idx_item :
	sql : create INDEX idx_item on ITEM (IName,Stock);
	이유 : 복수 컬럼을 인덱스에 사용할 경우 카디날리티가 높은걸 우선 배치한 후 낮은걸 배치해야 성능에 더 기여한다.
		  데이터를 살펴본 결과 item 에선 IName의 카디날리티가 Stock보다 더 높으므로 우선 배치하였다. 또한 IName과  Stock는 후의 select 쿼리에서 많이 사용될 것 같은 예측이 되어 인덱싱을 추가하였다.
		  Stock의 경우 잦은 update가 있을 순 있지만 update를 하기전에 select 즉 먼저 조회를 해야하기때문에 인덱싱에 추가하였다.
		  

		  create INDEX idx_customer on CUSTOMER (CID_String);

idx_customer :
	sql : create INDEX idx_customer on CUSTOMER (CID_String);
	이유 : 사용자의 ID 문자열 ex '현태123' 의 경우 또한 유저 어플리케이션에서 자주 사용될 가능성이 크고 카디날리티가 높으므로 인덱싱에 추가하였다.

idx_cart :
	sql : create INDEX idx_cart on CART (CDate);
	이유 : CDate는 후에 조회될 가능성(날짜별 상품 베스트 등등)이 높으므로 인덱싱에 추가하였다.
	