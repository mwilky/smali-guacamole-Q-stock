.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BaseTimeZonePicker.java"

# interfaces
.implements Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$OnListItemClickListener;
    }
.end annotation


# static fields
.field public static final EXTRA_RESULT_REGION_ID:Ljava/lang/String; = "com.android.settings.datetime.timezone.result_region_id"

.field public static final EXTRA_RESULT_TIME_ZONE_ID:Ljava/lang/String; = "com.android.settings.datetime.timezone.result_time_zone_id"


# instance fields
.field private mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

.field private final mDefaultExpandSearch:Z

.field protected mLocale:Ljava/util/Locale;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSearchEnabled:Z

.field private final mSearchHintResId:I

.field private mSearchView:Lcom/oneplus/lib/widget/SearchView;

.field private mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

.field private final mTitleResId:I


# direct methods
.method protected constructor <init>(IIZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    iput p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    iput p2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    iput-boolean p3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    iput-boolean p4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    return-void
.end method


# virtual methods
.method protected abstract createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
.end method

.method protected getLocale()Ljava/util/Locale;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTitleResId:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchEnabled:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a06f7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/SearchView;

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    iget v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchHintResId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/SearchView;->setOnQueryTextListener(Lcom/oneplus/lib/widget/SearchView$OnQueryTextListener;)V

    iget-boolean v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mDefaultExpandSearch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/SearchView;->setIconified(Z)V

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView;->setActivated(Z)V

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const-string v4, ""

    invoke-virtual {v1, v4, v3}, Lcom/oneplus/lib/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const v3, 0x7f0a05ed

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06033c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "#44444444"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06033a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "#88888888"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mSearchView:Lcom/oneplus/lib/widget/SearchView;

    const v5, 0x7f0a05e7

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    const v1, 0x7f0d0326

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0593

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;

    invoke-direct {v5, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$MBKbnic3yruONZHLQGUj0vAB5hk;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V

    invoke-direct {v3, v4, v5}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object v1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;->getFilter()Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter$ArrayFilter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mTimeZoneData:Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->createAdapter(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->mAdapter:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method
