.class public Lcom/oneplus/settings/OPFontStyleActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFontStyleActivity.java"

# interfaces
.implements Lcom/oneplus/settings/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;,
        Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;,
        Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;,
        Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;
    }
.end annotation


# static fields
.field private static final OP_FONT_NAME:Ljava/lang/String; = "oneplus_oem_font_name_"

.field private static final OP_THEME_PACKAGE:Ljava/lang/String; = "com.oneplus.skin"

.field private static final SAVE_NEMU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPFontStyleActivity"

.field private static mLastFontValue:I


# instance fields
.field private mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

.field private mFontValue:I

.field private mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPreviewContainer:Landroid/view/View;

.field private mPreviewText1:Landroid/widget/TextView;

.field private mPreviewText2:Landroid/widget/TextView;

.field private mPreviewText3:Landroid/widget/TextView;

.field private mPreviewText4:Landroid/widget/TextView;

.field protected mSelectedIndex:I


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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mCurrentVH:Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPFontStyleActivity;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/OPFontStyleActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPFontStyleActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    return-void
.end method

.method private getStringRes(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "string"

    const-string v1, "com.oneplus"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private modifyPreviewText()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const-string v2, "sans-serif-medium"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    iget v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->getTypeface(ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

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

    const v1, 0x7f12192c

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0804ea

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
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->finish()V

    return-void
.end method

.method public onConfirmPressed()V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setFontStyle(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "oem_font_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate mLastFontValue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OPFontStyleActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120d55

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setTitle(I)V

    const v0, 0x7f0d01c4

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->setContentView(I)V

    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPFontStyleActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const v0, 0x7f0a0558

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v4, "#282828"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewContainer:Landroid/view/View;

    const-string v4, "#f5f5f5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Typeface;->opGetFontIDsForUser(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const-string v8, "sans-serif-medium"

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const-string v9, "sans-serif-book"

    invoke-static {v7, v8, v9}, Landroid/graphics/Typeface;->opGetIsolatedTypeface(IILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oneplus_oem_font_name_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/oneplus/settings/OPFontStyleActivity;->getStringRes(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fontId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v6, v7, v8}, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;-><init>(ILandroid/graphics/Typeface;Landroid/graphics/Typeface;Ljava/lang/String;)V

    sget v10, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_1

    iput-boolean v1, v9, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    iget-object v10, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iput v10, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSelectedIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    sget v1, Lcom/oneplus/settings/OPFontStyleActivity;->mLastFontValue:I

    iput v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    const v1, 0x7f0a0560

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText1:Landroid/widget/TextView;

    const v1, 0x7f0a0561

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText2:Landroid/widget/TextView;

    const v1, 0x7f0a0562

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText3:Landroid/widget/TextView;

    const v1, 0x7f0a0563

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mPreviewText4:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->modifyPreviewText()V

    const v1, 0x7f0a0285

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPFontStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v1, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v5, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/settings/OPFontStyleActivity$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;I)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    new-instance v2, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    iput-object v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mChooseFontStyleAdapter:Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;

    invoke-virtual {v2, v4}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mItemEntities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    const-string v2, "scrollToPosition"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_3
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

    const/4 v1, 0x1

    const-string v2, "status"

    const-string v3, "font"

    if-ne v0, v1, :cond_1

    const-string v0, "noto"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const-string v0, "slate"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x64

    if-ne v0, v4, :cond_3

    const-string v0, "yuan"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x65

    if-ne v0, v4, :cond_4

    const-string v0, "kai"

    invoke-static {v3, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->onBackPressed()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/oneplus/settings/OPFontStyleActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPFontStyleActivity$1;-><init>(Lcom/oneplus/settings/OPFontStyleActivity;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPFontStyleActivity;->mFontValue:I

    return-void
.end method
