.class public Lcom/android/settings/deviceinfo/StorageVolumePreference;
.super Landroidx/preference/Preference;
.source "StorageVolumePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorTintList:Landroid/content/res/ColorStateList;

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mUsedPercent:I

.field private final mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;J)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    new-instance v4, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;

    invoke-direct {v4, v1}, Lcom/android/settings/deviceinfo/StorageVolumePreference$1;-><init>(Lcom/android/settings/deviceinfo/StorageVolumePreference;)V

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v3, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    const v4, 0x1010429

    invoke-static {v2, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    const v4, 0x7f0d02d8

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setLayoutResource(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setKey(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "private"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f080373

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_0
    const v4, 0x7f080370

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1

    const-class v0, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/usage/StorageStatsManager;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/usage/StorageStatsManager;->getFreeBytes(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v6, v16

    sub-long v8, v14, v6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide/from16 v14, p3

    :goto_1
    sget-object v12, Lcom/android/settings/deviceinfo/StorageVolumePreference;->TAG:Ljava/lang/String;

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-wide v12, v14

    goto :goto_4

    :cond_1
    cmp-long v0, p3, v10

    if-gtz v0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    goto :goto_3

    :cond_2
    move-wide/from16 v12, p3

    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    sub-long v8, v12, v6

    :goto_4
    invoke-static {v2, v8, v9}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v12, v13}, Lcom/oneplus/settings/utils/OPUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f121566

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v14, v10, v11

    invoke-virtual {v2, v15, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v10, 0x0

    cmp-long v10, v12, v10

    if-lez v10, :cond_3

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    :cond_3
    iget-object v10, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v10, v5}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_4

    const v10, 0x1010543

    invoke-static {v2, v10}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    const v10, 0x7f08039c

    invoke-virtual {v2, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v10, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    goto :goto_5

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setSummary(I)V

    iput v0, v1, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    move-wide/from16 v12, p3

    :goto_5
    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0d0270

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageVolumePreference;->setWidgetLayoutResource(I)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageVolumePreference;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    const v0, 0x7f0a073c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x102000d

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mUsedPercent:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageVolumePreference;->mColorTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
