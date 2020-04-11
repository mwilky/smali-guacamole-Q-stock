.class final Lcom/android/server/display/OverlayDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;,
        Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_PATTERN:Ljava/util/regex/Pattern;

.field private static final MAX_HEIGHT:I = 0x1000

.field private static final MAX_WIDTH:I = 0x1000

.field private static final MIN_HEIGHT:I = 0x64

.field private static final MIN_WIDTH:I = 0x64

.field private static final MODE_PATTERN:Ljava/util/regex/Pattern;

.field static final TAG:Ljava/lang/String; = "OverlayDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "overlay:"


# instance fields
.field private mCurrentOverlaySetting:Ljava/lang/String;

.field private final mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    nop

    const-string v0, "([^,]+)(,[a-z]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    nop

    const-string v0, "(\\d+)x(\\d+)/(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6

    const-string v5, "OverlayDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/OverlayDisplayAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/OverlayDisplayAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static chooseOverlayGravity(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x53

    return v0

    :cond_0
    const/16 v0, 0x35

    return v0

    :cond_1
    const/16 v0, 0x55

    return v0

    :cond_2
    const/16 v0, 0x33

    return v0
.end method

.method private updateOverlayDisplayDevices()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateOverlayDisplayDevicesLocked()V
    .locals 25

    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object v9, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v10, "OverlayDisplayAdapter"

    if-nez v0, :cond_3

    const-string v0, "Dismissing all overlay display devices."

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dismissLocked()V

    goto :goto_1

    :cond_2
    iget-object v0, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    const-string v1, ";"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    move v1, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_c

    aget-object v15, v11, v14

    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->DISPLAY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x4

    if-lt v1, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many overlay display devices specified: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    const-string v0, "\\|"

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v3, v13

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_8

    move/from16 v19, v3

    aget-object v3, v13, v2

    sget-object v0, Lcom/android/server/display/OverlayDisplayAdapter;->MODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v20, v5

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v21, v7

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xa

    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v17, v11

    const/4 v7, 0x2

    :try_start_1
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/16 v7, 0xa

    invoke-static {v11, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v24, v5

    const/16 v5, 0xa

    :try_start_2
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0x64

    if-lt v0, v7, :cond_5

    const/16 v7, 0x1000

    if-gt v0, v7, :cond_5

    const/16 v7, 0x64

    if-lt v11, v7, :cond_5

    const/16 v7, 0x1000

    if-gt v11, v7, :cond_5

    const/16 v7, 0x78

    if-lt v5, v7, :cond_5

    const/16 v7, 0x280

    if-gt v5, v7, :cond_5

    new-instance v7, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    invoke-direct {v7, v0, v11, v5}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;-><init>(III)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, "Ignoring out-of-range overlay display mode: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v17, v11

    :goto_4
    goto :goto_5

    :cond_6
    move-object/from16 v24, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v17

    move/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    goto/16 :goto_3

    :cond_8
    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v17, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, v1, 0x1

    move v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104020c

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x0

    aput-object v7, v5, v13

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11}, Lcom/android/server/display/OverlayDisplayAdapter;->chooseOverlayGravity(I)I

    move-result v16

    if-eqz v4, :cond_9

    const-string v1, ",secure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v13

    :goto_6
    move-object/from16 v18, v6

    move v6, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing overlay display device #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v8, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v13, v3

    move-object v3, v7

    move-object/from16 v22, v4

    move-object/from16 v4, v18

    move/from16 v23, v0

    move-object v0, v5

    move/from16 v5, v16

    move-object/from16 v24, v7

    move v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Ljava/lang/String;Ljava/util/List;IZI)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v23

    goto :goto_8

    :cond_a
    move-object/from16 v22, v4

    move-object/from16 v18, v6

    goto :goto_7

    :cond_b
    move-object/from16 v21, v7

    move-object/from16 v17, v11

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed overlay display devices setting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v11, v17

    goto/16 :goto_2

    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentOverlaySetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mCurrentOverlaySetting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverlays: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-virtual {v1, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerLocked()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/OverlayDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
