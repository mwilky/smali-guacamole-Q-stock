.class public Lcom/oneplus/settings/aboutphone/OPForumContributors;
.super Landroid/app/Activity;
.source "OPForumContributors.java"


# instance fields
.field private mForumContributorsTextView:Landroid/widget/TextView;

.field private mForumContributorsTextViewWidth:F

.field private mForumImageview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/OPForumContributors;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/aboutphone/OPForumContributors;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->initData()V

    return-void
.end method

.method private initData()V
    .locals 12

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08049d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08049e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08049b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v1, 0x7f08049c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, ""

    const-string v2, "    /    "

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x0

    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_6

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v0, v4

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "\n"

    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->needSplitText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v0, v4

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, v0, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_6
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_8

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v8

    const/16 v9, 0x22

    if-eqz v8, :cond_7

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#4db2b2b2"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v10, v6, -0x1

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v4, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_7
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string v10, "#4d121212"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v10, v6, -0x1

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v4, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public needSplitText(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getFontWidth(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextViewWidth:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "about_phone_settings"

    const-string v1, "click_award"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0d01c2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->setContentView(I)V

    const v0, 0x7f0a0707

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    const v1, 0x7f121391

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120e8d

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f120dab

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    :goto_0
    const v2, 0x7f0a0292

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumImageview:Landroid/widget/ImageView;

    const v2, 0x7f0a0291

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPForumContributors;->mForumContributorsTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors$1;-><init>(Lcom/oneplus/settings/aboutphone/OPForumContributors;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/OPForumContributors;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
