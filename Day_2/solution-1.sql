select br.BorrowerName, group_concat(bo.BookName order by bo.BookName separator ',') from Borrowers br
left join Books bo on br.BookID = bo.BookID
group by br.BorrowerName
order by BorrowerName;
