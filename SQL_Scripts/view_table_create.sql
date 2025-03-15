create view vw_ChurnData as
	select * from prod_Churn where customer_status IN ('Churned', 'Stayed')

create view vw_JoinData as
	select * from prod_Churn where customer_status = 'Joined'