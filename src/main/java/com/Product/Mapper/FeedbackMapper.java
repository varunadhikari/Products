package com.Product.Mapper;

import java.util.List;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import com.Product.Entity.Feedback;
import com.Product.Model.FeedbackModel;

@Mapper
public interface FeedbackMapper  {

	FeedbackMapper INSTANCE = Mappers.getMapper(FeedbackMapper.class);

	public abstract List<FeedbackModel> entityToFeedbackModel(Iterable<Feedback> response);

	public abstract Feedback feedbackModelToEntity(FeedbackModel model);

	public abstract FeedbackModel entityToFeedbackModel(Feedback response);

}
