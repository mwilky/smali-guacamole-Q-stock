.class public Lcom/oneplus/settings/OPFontStyleActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFontStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# static fields
.field private static final OP_THEME_PACKAGE:Ljava/lang/String; = "com.oneplus.skin"

.field private static final SAVE_NEMU:I

.field private static mLastFontValue:I


# instance fields
.field private mFontValue:I

.field mNotoFont:Landroid/view/View;

.field mOneplusFont:Landroid/view/View;

.field private mPreviewContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return-void
.end method

.method private setFontStyle(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_dynamicfont"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f121839

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0804ad

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected needShowWarningDialog()Z
    .locals 2

    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCancelPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    const-string v2, "oem_font_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080672

    const v2, 0x7f080675

    const v3, 0x7f0a044b

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iput v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f0a046f

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iput v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfirmPressed()V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    sput v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "oem_font_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    :cond_0
    const v0, 0x7f120cf7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setTitle(I)V

    const v0, 0x7f0d01b8

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setContentView(I)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPFontStyleActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v2, "#282828"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v2, "#f5f5f5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v0, 0x7f0a044b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a046f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a044e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a044c

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a044d

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "sans-serif-medium"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v5, "sans-serif-book"

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0a0472

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v6, 0x7f0a0470

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0471

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-static {v8, v4}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v8, v5}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {v8, v5}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->addOptionsMenuItems(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    sput v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    const-string v1, "status"

    const-string v2, "font"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "noto"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const-string v0, "slate"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->finish()V

    return v3
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "oem_font_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const v3, 0x7f080672

    const v4, 0x7f080675

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mNotoFont:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOneplusFont:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
