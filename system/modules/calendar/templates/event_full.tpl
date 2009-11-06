
<div class="event block<?php echo $this->class; ?>">

<h1><?php echo $this->title; ?></h1>

<p class="info"><?php echo $this->date; ?></p>
<?php if ($this->recurring): ?>

<p class="recurring"><?php echo $this->recurring; if ($this->until): ?> <?php echo $this->until; endif; ?>.</p>
<?php endif; ?>

<div class="ce_text">
<?php if (!$this->addBefore): ?>

<?php echo $this->details; ?>
<?php endif; ?>
<?php if ($this->addImage): ?>

<div class="image_container<?php echo $this->floatClass; ?>"<?php if ($this->margin || $this->float): ?> style="<?php echo trim($this->margin . $this->float); ?>"<?php endif; ?>>
<?php if ($this->href): ?>
<a href="<?php echo $this->href; ?>"<?php echo $this->attributes; ?> title="<?php echo $this->alt; ?>">
<?php endif; ?>
<img src="<?php echo $this->src; ?>"<?php echo $this->imgSize; ?> alt="<?php echo $this->alt; ?>" />
<?php if ($this->href): ?>
</a>
<?php endif; ?>
<?php if ($this->caption): ?>
<div class="caption"><?php echo $this->caption; ?></div>
<?php endif; ?>
</div>
<?php endif; ?>
<?php if ($this->addBefore): ?>

<?php echo $this->details; ?>
<?php endif; ?>

</div>
<?php if ($this->enclosure): ?>

<div class="enclosure">
<?php foreach ($this->enclosure as $enclosure): ?>
<p><img src="<?php echo $enclosure['icon']; ?>" width="18" height="18" alt="<?php echo $enclosure['title']; ?>" class="mime_icon" /> <a href="<?php echo $enclosure['href']; ?>" title="<?php echo $enclosure['title']; ?>"><?php echo $enclosure['link']; ?> <span class="size">(<?php echo $enclosure['filesize']; ?>)</span></a></p>
<?php endforeach; ?>
</div>
<?php endif; ?>

</div>
