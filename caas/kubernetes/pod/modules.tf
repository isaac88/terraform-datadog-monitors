module "filter-tags" {
  source = "../../../common/filter-tags"

  environment                 = "${var.environment}"
  resource                    = "kubernetes"
  filter_tags_use_defaults    = "${var.filter_tags_use_defaults}"
  filter_tags_custom          = "${var.filter_tags_custom}"
  filter_tags_custom_excluded = "${var.filter_tags_custom_excluded}"
}

module "filter-tags-phase" {
  source = "../../../common/filter-tags"

  environment                 = "${var.environment}"
  resource                    = "kubernetes"
  filter_tags_use_defaults    = "${var.filter_tags_use_defaults}"
  filter_tags_custom          = "${var.filter_tags_custom}"
  filter_tags_custom_excluded = "${var.filter_tags_custom_excluded}"
  extra_tags_excluded         = ["phase:pending,phase:running,phase:succeeded,phase:unknown"]
}

module "filter-tags-nocrashloopbackoff" {
  source = "../../../common/filter-tags"

  environment                 = "${var.environment}"
  resource                    = "kubernetes"
  filter_tags_use_defaults    = "${var.filter_tags_use_defaults}"
  filter_tags_custom          = "${var.filter_tags_custom}"
  filter_tags_custom_excluded = "${var.filter_tags_custom_excluded}"
  extra_tags_excluded         = ["reason:crashloopbackoff"]
}

module "filter-tags-crashloopbackoff" {
  source = "../../../common/filter-tags"

  environment                 = "${var.environment}"
  resource                    = "kubernetes"
  filter_tags_use_defaults    = "${var.filter_tags_use_defaults}"
  filter_tags_custom          = "${var.filter_tags_custom}"
  filter_tags_custom_excluded = "${var.filter_tags_custom_excluded}"
  extra_tags                  = ["reason:crashloopbackoff"]
}