package com.hpe.po;

import java.util.Date;
/**
 * 
 * 类描述：新闻管理实体类
 * 作者： Administrator  
 * 创建日期：2018年11月22日
 * 修改人：
 * 修改日期：
 * 修改内容：
 * 版本号： 1.0.0
 */
public class News {
	private int newsId;//新闻 id
	private String title;//新闻标题
	private String content;//新闻内容
	private Date publishDate;//发布日期
	private String author;//作者
	private int typeId=-1;//新闻类别编号
	private String typeName;//新闻类别名称
	private int click;//点击量
	private int isHead;//是否是头条
	private int isImage;//是否是图片新闻
	private String imageName;//图片
	private int isHot;//是否是热点新闻
	
	public News() {
		super();
	}
	
	public News(int newsId, String title) {
		super();
		this.newsId = newsId;
		this.title = title;
	}
	
	public int getNewsId() {
		return newsId;
	}
	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPublishDate() {
		return  publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getTypeId() {
		return typeId;
	}
	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getClick() {
		return click;
	}
	public void setClick(int click) {
		this.click = click;
	}
	public int getIsHead() {
		return isHead;
	}
	public void setIsHead(int isHead) {
		this.isHead = isHead;
	}
	public int getIsImage() {
		return isImage;
	}
	public void setIsImage(int isImage) {
		this.isImage = isImage;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public int getIsHot() {
		return isHot;
	}
	public void setIsHot(int isHot) {
		this.isHot = isHot;
	}

	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", title=" + title + ", content=" + content + ", publishDate=" + publishDate
				+ ", author=" + author + ", typeId=" + typeId + ", typeName=" + typeName + ", click=" + click
				+ ", isHead=" + isHead + ", isImage=" + isImage + ", imageName=" + imageName + ", isHot=" + isHot + "]";
	}
	
	
}
