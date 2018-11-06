package com.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.IndexMapper;
import com.po.BlogExample;
import com.po.Index;
import com.po.IndexExample;
import com.po.User;
import com.po.UserRank;
import com.po.UserRankExample;
import com.dao.UserRankMapper;
@Service("RankServiceImpl")
public class RankServiceImpl {

		@Autowired
		private UserRankMapper UserRankMapper;
		
		public void insertrank(User user){
			UserRank rank = new UserRank();
			int userid = user.getUserId();
			//先查出之前的mark
			UserRankExample rankexample = new UserRankExample();
			UserRankExample.Criteria rankCriteria=rankexample.createCriteria();
			rankCriteria.andUserIdEqualTo(userid);
			UserRank rank0 = this.UserRankMapper.selectByExample(rankexample).get(0);
			rank.setRankMark(rank.getRankMark()+1);
			rank.setUserId(userid);
			rank.setUserRankId(null);
			rank.setRankName("小白");
			this.UserRankMapper.insert(rank);
		}
		
		public UserRank selectrank(int userid){
			
			
			
			return null;
		}
	
}
