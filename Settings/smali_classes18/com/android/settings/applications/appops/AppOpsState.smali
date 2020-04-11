.class public Lcom/android/settings/applications/appops/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field static final DEBUG:Z = false

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final LABEL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field public static final RECENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

.field static final TAG:Ljava/lang/String; = "AppOpsState"


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-array v1, v1, [Z

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x8

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    new-array v1, v1, [Z

    fill-array-data v1, :array_3

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    new-array v1, v1, [Z

    fill-array-data v1, :array_5

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0xe

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    new-array v1, v1, [Z

    fill-array-data v1, :array_9

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x3f

    aput v4, v2, v3

    new-array v4, v1, [Z

    aput-boolean v3, v4, v3

    invoke-direct {v0, v2, v4}, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v3

    sget-object v2, Lcom/android/settings/applications/appops/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/appops/AppOpsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appops/AppOpsState;->LABEL_COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x10
        0x11
        0x12
        0x13
        0xf
        0x14
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x40
        0x2c
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2e
        0x2f
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v2

    if-ne v2, p3, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    return-void

    :cond_3
    new-instance v1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-direct {v1, p2, p4, p3, p6}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;I)V

    move-object v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Lcom/android/settings/applications/appops/AppOpsState$AppEntry;"
        }
    .end annotation

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0x400200

    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find info for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppOpsState"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :goto_0
    new-instance v1, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    invoke-direct {v1, p0, p4}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/appops/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    move-object v0, v1

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/applications/appops/AppOpsState;->RECENCY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/appops/AppOpsState;->buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;ILjava/lang/String;Ljava/util/Comparator;)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    iget-object v11, v8, Lcom/android/settings/applications/appops/AppOpsState;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    const/16 v0, 0x5b

    new-array v7, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v0

    aput v0, v7, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v6, p2

    invoke-virtual {v0, v6, v10, v1}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_2
    move/from16 v6, p2

    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v9, Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    :goto_1
    const/4 v4, 0x0

    const/16 v16, 0x1

    if-eqz v5, :cond_8

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v11, v12, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v18

    if-nez v18, :cond_3

    move v9, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v7

    goto/16 :goto_6

    :cond_3
    const/4 v1, 0x0

    move v3, v1

    :goto_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/app/AppOpsManager$OpEntry;

    if-nez v10, :cond_4

    move/from16 v20, v16

    goto :goto_4

    :cond_4
    move/from16 v20, v4

    :goto_4
    if-nez v10, :cond_5

    move/from16 v21, v4

    goto :goto_5

    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    aget v1, v7, v1

    move/from16 v21, v1

    :goto_5
    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v22, v3

    move-object/from16 v3, v17

    move v9, v4

    move-object/from16 v4, v18

    move-object/from16 v23, v5

    move-object/from16 v5, v19

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    add-int/lit8 v3, v22, 0x1

    move/from16 v6, p2

    move v4, v9

    move-object/from16 v7, v20

    move-object/from16 v5, v23

    move-object/from16 v9, p1

    goto :goto_3

    :cond_6
    move/from16 v22, v3

    move v9, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v7

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, p2

    move v4, v9

    move-object/from16 v7, v20

    move-object/from16 v5, v23

    move-object/from16 v9, p1

    goto/16 :goto_2

    :cond_7
    move v9, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v7

    goto :goto_7

    :cond_8
    move v9, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v7

    :goto_7
    if-eqz v10, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :try_start_0
    iget-object v0, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v0, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_8

    :catch_0
    move-exception v0

    nop

    :goto_8
    move-object v0, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v1, v8, Lcom/android/settings/applications/appops/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v9}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    :goto_9
    const/4 v1, 0x0

    move v7, v1

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_14

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v8, v11, v12, v1, v2}, Lcom/android/settings/applications/appops/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v5

    if-nez v5, :cond_a

    move-object/from16 v18, v0

    move/from16 v17, v7

    goto/16 :goto_13

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_13

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v4, v3, :cond_12

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v3, :cond_b

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v4

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    move-object/from16 v18, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v17, v7

    goto/16 :goto_12

    :cond_b
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_11

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v0

    if-eqz v0, :cond_d

    nop

    :goto_d
    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v17, v7

    const/4 v9, 0x0

    goto/16 :goto_11

    :cond_d
    if-nez v1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    new-instance v0, Landroid/app/AppOpsManager$PackageOps;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v9, v2, v1}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v19, v0

    move-object v0, v1

    goto :goto_e

    :cond_e
    move-object/from16 v19, v2

    move-object v0, v1

    :goto_e
    new-instance v1, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v9, 0x0

    invoke-direct {v1, v2, v9}, Landroid/app/AppOpsManager$OpEntry;-><init>(II)V

    move-object v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_f

    move/from16 v17, v16

    goto :goto_f

    :cond_f
    move/from16 v17, v9

    :goto_f
    if-nez v10, :cond_10

    move/from16 v21, v9

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    aget v1, v20, v1

    move/from16 v21, v1

    :goto_10
    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object v2, v13

    move/from16 v24, v3

    move-object/from16 v3, v19

    move/from16 v25, v4

    move-object v4, v5

    move-object/from16 v26, v5

    move-object/from16 v5, v22

    move-object/from16 v27, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/appops/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/appops/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    move-object v1, v0

    move-object/from16 v2, v19

    :goto_11
    add-int/lit8 v3, v24, 0x1

    move/from16 v7, v17

    move-object/from16 v0, v18

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_c

    :cond_11
    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v17, v7

    const/4 v9, 0x0

    :goto_12
    add-int/lit8 v4, v25, 0x1

    move/from16 v7, v17

    move-object/from16 v0, v18

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    goto/16 :goto_b

    :cond_12
    move-object/from16 v18, v0

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v17, v7

    goto :goto_13

    :cond_13
    move-object/from16 v18, v0

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v17, v7

    :goto_13
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v0, v18

    goto/16 :goto_a

    :cond_14
    move-object/from16 v1, p4

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v13
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method
