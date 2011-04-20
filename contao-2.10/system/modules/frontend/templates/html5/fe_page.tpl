<!DOCTYPE html>
<html lang="<?php echo $this->language; ?>">
<head>
<meta charset="<?php echo $this->charset; ?>">
<title><?php echo $this->pageTitle; ?> - <?php echo $this->mainTitle; ?></title>
<base href="<?php echo $this->base; ?>">
<meta name="robots" content="<?php echo $this->robots; ?>">
<meta name="description" content="<?php echo $this->description; ?>">
<meta name="keywords" content="<?php echo $this->keywords; ?>">
<?php echo $this->framework; ?>
<?php echo $this->stylesheets; ?>
<?php echo $this->mooScripts; ?>
<?php echo $this->head; ?>
<!--[if lt IE 9]><script src="<?php echo TL_PLUGINS_URL; ?>plugins/html5shim/html5.js?<?php echo HTML5SHIM; ?>"></script><![endif]-->
<!--[if lt IE 9]><script src="<?php echo TL_PLUGINS_URL; ?>plugins/selectivizr/selectivizr.js?<?php echo SELECTIVIZR; ?>"></script><![endif]-->
</head>
<body id="top" class="{{ua::class}}<?php if ($this->class): ?> <?php echo $this->class; ?><?php endif; ?>"<?php if ($this->onload): ?> onload="<?php echo $this->onload; ?>"<?php endif; ?>>
<?php $this->showIE6warning(); ?>

<div id="wrapper">
<?php if ($this->header): ?>

<div id="header">
<div class="inside">
<?php echo $this->header; ?> 
</div>
</div>
<?php endif; ?>
<?php echo $this->getCustomSections('before'); ?>

<div id="container">
<?php if ($this->left): ?>

<div id="left">
<div class="inside">
<?php echo $this->left; ?> 
</div>
</div>
<?php endif; ?>
<?php if ($this->right): ?>

<div id="right">
<div class="inside">
<?php echo $this->right; ?> 
</div>
</div>
<?php endif; ?>

<div id="main">
<div class="inside">
<?php echo $this->main; ?> 
</div>
<?php echo $this->getCustomSections('main'); ?> 
<div id="clear"></div>
</div>

</div>
<?php echo $this->getCustomSections('after'); ?>
<?php if ($this->footer): ?>

<div id="footer">
<div class="inside">
<?php echo $this->footer; ?> 
</div>
</div>
<?php endif; ?>
<?php if (!$this->disableCron): ?>

<!-- indexer::stop -->
<img src="<?php echo $this->base; ?>cron.php" alt="" class="invisible">
<!-- indexer::continue -->
<?php endif; ?>

</div>
<?php echo $this->mootools; ?>

</body>
</html>