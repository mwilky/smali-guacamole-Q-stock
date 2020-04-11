.class public Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final DATA_LOAD_COMPLETED:I = 0x0

.field private static final ONEPLUS_LAB_FEATURE_ICON_ID:Ljava/lang/String; = "oneplus_lab_feature_icon_id"

.field private static final ONEPLUS_LAB_FEATURE_KEY:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final ONEPLUS_LAB_FEATURE_SUMMARY:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final ONEPLUS_LAB_FEATURE_TITLE:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_COUNT:Ljava/lang/String; = "oneplus_lab_feature_toggle_count"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_NAMES:Ljava/lang/String; = "oneplus_lab_feature_toggle_names"

.field private static final ONEPLUS_NFC_SECURITY_MODULE_KEY:Ljava/lang/String; = "oneplus_nfc_security_module_key"

.field private static final PLUGIN_ACTION:Ljava/lang/String; = "com.android.ONEPLUS_LAB_PLUGIN"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPluginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginHeadImageView:Landroid/widget/ImageView;

.field private mPluginList:Landroid/widget/ListView;

.field private mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$3;

    invoke-direct {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->fetchLockedAppListByPackageInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static fetchLockedAppListByPackageInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation

    const-string v0, "oneplus_lab_feature"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_10

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v11, p0

    invoke-virtual {v11, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move v14, v10

    :goto_1
    array-length v15, v13

    if-ge v14, v15, :cond_f

    new-instance v15, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v15}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    aget-object v1, v13, v14

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v10, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v17, 0x2

    move-object/from16 v18, v0

    const-string v0, "drawable"

    move-wide/from16 v19, v2

    const/4 v2, 0x4

    const/16 v21, 0x3

    const-string v3, "string"

    if-le v10, v2, :cond_7

    const/16 v16, 0x0

    :try_start_1
    aget-object v24, v1, v16

    move-object/from16 v25, v24

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v26, v4

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v6

    move-object/from16 v6, v25

    invoke-virtual {v2, v6, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    move-object/from16 v23, v6

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v25, v8

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4, v3, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v28, v4

    const/16 v22, 0x2

    aget-object v4, v1, v22

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4, v0, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v8, v1, v21

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v3, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    aget-object v8, v1, v21

    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v2, v5

    move-object/from16 v24, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_2
    const/4 v11, 0x4

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    move/from16 v17, v11

    const/4 v11, 0x5

    invoke-static {v1, v11, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    move/from16 v22, v4

    array-length v4, v11

    new-array v4, v4, [Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v21, v16

    move-object/from16 v24, v12

    move/from16 v12, v21

    :goto_3
    move-object/from16 v29, v13

    array-length v13, v11

    if-ge v12, v13, :cond_4

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v30, v14

    aget-object v14, v11, v12

    move-object/from16 v31, v5

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_3
    aget-object v13, v11, v12

    :goto_4
    aput-object v13, v4, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v13, v29

    move/from16 v14, v30

    move-object/from16 v5, v31

    goto :goto_3

    :cond_4
    move-object/from16 v31, v5

    move/from16 v30, v14

    invoke-virtual {v15, v0}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureIconId(I)V

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object/from16 v3, v23

    :goto_5
    invoke-virtual {v15, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object/from16 v3, v28

    :goto_6
    invoke-virtual {v15, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setMultiToggleName([Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v0, v17

    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_7
    move-object/from16 v26, v4

    move-object/from16 v31, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v8

    move-object/from16 v24, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    const-string v2, ""

    const/4 v4, 0x1

    if-le v10, v4, :cond_8

    const/4 v4, 0x0

    :try_start_2
    aget-object v5, v1, v4

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    move-object v5, v2

    :goto_7
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5, v3, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x2

    if-le v10, v8, :cond_9

    const/4 v2, 0x1

    aget-object v2, v1, v2

    :cond_9
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v11, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v1, v12

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v0, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    aget-object v12, v1, v21

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v3, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_a
    aget-object v11, v1, v21

    :goto_8
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v2, v31

    goto :goto_c

    :cond_b
    invoke-virtual {v15, v0}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureIconId(I)V

    if-eqz v6, :cond_c

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_c
    move-object v12, v5

    :goto_9
    invoke-virtual {v15, v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    if-eqz v8, :cond_d

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_d
    move-object v12, v2

    :goto_a
    invoke-virtual {v15, v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    move-object v8, v11

    move/from16 v0, v17

    :goto_b
    invoke-static {v9}, Lcom/oneplus/settings/utils/OPUtils;->isSurportSimNfc(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "oneplus_nfc_security_module_key"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v2, v31

    goto :goto_c

    :cond_e
    invoke-virtual {v15, v0}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setToggleCount(I)V

    move-object/from16 v2, v31

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_c
    add-int/lit8 v14, v30, 0x1

    move-object/from16 v11, p0

    move-object v5, v2

    move v10, v4

    move-object/from16 v0, v18

    move-wide/from16 v2, v19

    move-object/from16 v12, v24

    move-object/from16 v8, v25

    move-object/from16 v4, v26

    move-object/from16 v6, v27

    move-object/from16 v13, v29

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    move-object/from16 v26, v4

    move-object v2, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v8

    move-object/from16 v24, v12

    move-object/from16 v29, v13

    move/from16 v30, v14

    goto :goto_d

    :cond_10
    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    move-object/from16 v26, v4

    move-object v2, v5

    move-object/from16 v27, v6

    move-object/from16 v25, v8

    :goto_d
    move-object v5, v2

    move-object/from16 v0, v18

    move-wide/from16 v2, v19

    move-object/from16 v4, v26

    move-object/from16 v6, v27

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_11
    move-wide/from16 v19, v2

    move-object v2, v5

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "PluginDemo"

    const-string v2, "some unknown error happened."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getToggleCount()I

    move-result v1

    const-string v2, "oneplus_lab_feature_toggle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getMultiToggleName()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_lab_feature_toggle_names"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_lab_feature_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureSummary()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_lab_feature_Summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oneplus_lab_feature_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->geFeatureIconId()I

    move-result v1

    const-string v2, "oneplus_lab_feature_icon_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initData(Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fetchLockedAppListByActivityInfo()V
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ONEPLUS_LAB_PLUGIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "oneplus_lab_package_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "oneplus_lab_feature_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "oneplus_lab_feature_summary"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "oneplus_lab_feature_toggle_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "oneplus_lab_feature_icon_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v9, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v9}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    invoke-virtual {v9, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureIconId(I)V

    iget-object v10, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PluginDemo"

    const-string v2, "some unknown error happened."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01c7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->setContentView(I)V

    const v0, 0x7f0a04b6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginHeadImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a04b7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginHeadImageView:Landroid/widget/ImageView;

    const v1, 0x7f080428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginHeadImageView:Landroid/widget/ImageView;

    const v1, 0x7f080429

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
