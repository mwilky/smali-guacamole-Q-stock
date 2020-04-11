.class Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;
.super Landroidx/preference/Preference$BaseSavedState;
.source "ListWithEntrySummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummaries:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference$SavedState;->mSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    return-void
.end method
