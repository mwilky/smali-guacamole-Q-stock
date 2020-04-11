.class public Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.super Lcom/android/settings/CustomListPreference;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;,
        Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListWithEntrySummaryPreference"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/R$styleable;->ListWithEntrySummaryPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getEntrySummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getEntrySummary(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "ListWithEntrySummaryPreference"

    const-string v1, "getEntrySummary : mSummaries is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f1600e8

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SelectorAdapter;-><init>(Landroid/content/Context;ILcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomListPreference;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-static {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$100(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$200(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$300(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/android/settings/CustomListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$102(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$202(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->access$302(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    return-object v1
.end method

.method public setEntrySummaries(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntrySummaries([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method
