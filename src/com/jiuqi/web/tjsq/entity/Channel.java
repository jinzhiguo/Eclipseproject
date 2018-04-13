package com.jiuqi.web.tjsq.entity;

import java.io.Serializable;
import java.sql.Blob;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 栏目实体类
 * @author lnn
 *
 */
@Entity
@Table(name = "t_channel")
public class Channel implements Serializable{
	private static final long serialVersionUID = 1L;
	// 主键
	private int id;
	// 编号
	private String bh;
	// 栏目名称
	private String lmmc;
	// 栏目图标
	private Blob lmtp;
	// 更新时间
	private Date gxsj;
	// 状态（0-未发布 1-发布 2-已撤回）
	private int zt;
	
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "bh", length = 255)
	public String getBh() {
		return bh;
	}
	public void setBh(String bh) {
		this.bh = bh;
	}
	
	@Column(name = "bh", length = 255)
	public String getLmmc() {
		return lmmc;
	}
	public void setLmmc(String lmmc) {
		this.lmmc = lmmc;
	}
	
	@Column(name = "lmtp")
	public Blob getLmtp() {
		return lmtp;
	}
	public void setLmtp(Blob lmtp) {
		this.lmtp = lmtp;
	}
	
	@Column(name = "gxsj")
	public Date getGxsj() {
		return gxsj;
	}
	public void setGxsj(Date gxsj) {
		this.gxsj = gxsj;
	}
	
	@Column(name = "zt")
	public int getZt() {
		return zt;
	}
	public void setZt(int zt) {
		this.zt = zt;
	}
}
