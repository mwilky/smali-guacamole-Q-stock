.class public Lcom/android/settings/homepage/contextualcards/ContextualCard;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;,
        Lcom/android/settings/homepage/contextualcards/ContextualCard$CardType;
    }
.end annotation


# instance fields
.field private final mAppVersion:J

.field private final mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

.field private final mCardAction:I

.field private final mCardType:I

.field private final mCategory:I

.field private final mExpireTimeMS:J

.field private final mHasInlineAction:Z

.field private final mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mIconResName:Ljava/lang/String;

.field private final mIsLargeCard:Z

.field private final mIsPendingDismiss:Z

.field private final mLocalizedToLocale:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mRankingScore:D

.field private final mSliceUri:Ljava/lang/String;

.field private final mSummaryResName:Ljava/lang/String;

.field private final mSummaryText:Ljava/lang/String;

.field private final mTitleResName:Ljava/lang/String;

.field private final mTitleText:Ljava/lang/String;

.field private final mViewType:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "score"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "slice_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSliceUri(Landroid/net/Uri;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "category"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCategory(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    nop

    const-string v0, "localized_to_locale"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setLocalizedToLocale(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "package_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "app_version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setAppVersion(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    nop

    const-string v0, "title_res_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "title_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    nop

    const-string v0, "summary_res_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "summary_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "icon_res_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconResName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "icon_res_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconResId(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "card_action"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setCardAction(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const-string v0, "expire_time_ms"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setExpireTimeMS(J)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsLargeCard(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-direct {p0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewTypeByCardType(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean v2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIsPendingDismiss(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-boolean v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setHasInlineAction(Z)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1100(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1200(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1300(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1400(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1500(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1600(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1700(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1800(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$1900(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->access$2000(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    return-void
.end method

.method private getViewTypeByCardType(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f0d0065

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public getAppVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mAppVersion:J

    return-wide v0
.end method

.method public getCardAction()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardAction:I

    return v0
.end method

.method public getCardType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCardType:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mCategory:I

    return v0
.end method

.method public getExpireTimeMS()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mExpireTimeMS:J

    return-wide v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResId:I

    return v0
.end method

.method public getIconResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIconResName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedToLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mLocalizedToLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRankingScore()D
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mRankingScore:D

    return-wide v0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryResName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSummaryText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSliceUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleResName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mViewType:I

    return v0
.end method

.method public hasInlineAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mHasInlineAction:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isCustomCard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mSliceUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isLargeCard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsLargeCard:Z

    return v0
.end method

.method public isPendingDismiss()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mIsPendingDismiss:Z

    return v0
.end method

.method public mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mBuilder:Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    return-object v0
.end method
