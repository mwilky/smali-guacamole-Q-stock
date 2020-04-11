.class Lcom/android/server/wm/TaskRecord$TaskRecordFactory;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskRecordFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityTaskManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;JZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)",
            "Lcom/android/server/wm/TaskRecord;"
        }
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-wide/from16 v16, p16

    move/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    new-instance v32, Lcom/android/server/wm/TaskRecord;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)V

    return-object v32
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/TaskRecord;
    .locals 7

    new-instance v6, Lcom/android/server/wm/TaskRecord;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;)V

    return-object v6
.end method

.method create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;
    .locals 8

    new-instance v7, Lcom/android/server/wm/TaskRecord;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-object v7
.end method

.method handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTask: Unexpected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;
    .locals 70
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 v22, v2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    new-instance v23, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v23 .. v23}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v36, v23

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const-string v28, ""

    const/16 v29, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, -0x1

    const/16 v33, -0x1

    const/16 v34, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v35

    move/from16 v37, v15

    const/4 v15, 0x1

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v39, v4

    move/from16 v52, v5

    move-object/from16 v42, v6

    move-object/from16 v44, v7

    move/from16 v53, v9

    move/from16 v54, v10

    move/from16 v55, v11

    move/from16 v56, v12

    move v11, v13

    move v10, v14

    move-object/from16 v48, v17

    move-wide/from16 v50, v18

    move/from16 v14, v21

    move/from16 v38, v23

    move/from16 v40, v24

    move/from16 v41, v25

    move/from16 v43, v26

    move/from16 v45, v27

    move-object/from16 v49, v28

    move/from16 v5, v29

    move-object/from16 v12, v31

    move/from16 v46, v32

    move/from16 v47, v33

    move/from16 v13, v34

    move/from16 v4, v35

    move/from16 v57, v37

    move/from16 v37, v20

    :goto_0
    const-string v9, "ActivityTaskManager"

    if-ltz v4, :cond_3

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v15, "root_has_reset"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x6

    goto/16 :goto_2

    :sswitch_1
    const-string v15, "real_activity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v15, "never_relinquish_identity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v15, "calling_package"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x15

    goto/16 :goto_2

    :sswitch_4
    const-string v15, "persist_task_version"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1b

    goto/16 :goto_2

    :sswitch_5
    const-string v15, "last_description"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xd

    goto/16 :goto_2

    :sswitch_6
    const-string v15, "affinity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x4

    goto/16 :goto_2

    :sswitch_7
    const-string v15, "min_width"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x19

    goto/16 :goto_2

    :sswitch_8
    const-string v15, "prev_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x11

    goto/16 :goto_2

    :sswitch_9
    const-string v15, "task_type"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string v15, "calling_uid"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x14

    goto/16 :goto_2

    :sswitch_b
    const-string v15, "user_id"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x9

    goto/16 :goto_2

    :sswitch_c
    const-string v15, "root_affinity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x5

    goto/16 :goto_2

    :sswitch_d
    const-string v15, "supports_picture_in_picture"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x17

    goto/16 :goto_2

    :sswitch_e
    const-string v15, "auto_remove_recents"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x7

    goto/16 :goto_2

    :sswitch_f
    const-string v15, "orig_activity"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x3

    goto/16 :goto_2

    :sswitch_10
    const-string v15, "non_fullscreen_bounds"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x18

    goto/16 :goto_2

    :sswitch_11
    const-string v15, "min_height"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x1a

    goto/16 :goto_2

    :sswitch_12
    const-string v15, "resize_mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x16

    goto/16 :goto_2

    :sswitch_13
    const-string v15, "effective_uid"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xb

    goto :goto_2

    :sswitch_14
    const-string v15, "user_setup_complete"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xa

    goto :goto_2

    :sswitch_15
    const-string v15, "task_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x10

    goto :goto_2

    :sswitch_16
    const-string v15, "real_activity_suspended"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x2

    goto :goto_2

    :sswitch_17
    const-string v15, "task_affiliation_color"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x13

    goto :goto_2

    :sswitch_18
    const-string v15, "next_affiliation"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x12

    goto :goto_2

    :sswitch_19
    const-string v15, "task_id"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    goto :goto_2

    :sswitch_1a
    const-string v15, "last_time_moved"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0xe

    goto :goto_2

    :sswitch_1b
    const-string v15, "asked_compat_mode"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v15, 0x8

    goto :goto_2

    :goto_1
    const/4 v15, -0x1

    :goto_2
    packed-switch v15, :pswitch_data_0

    const-string v15, "task_description_"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v15, v36

    invoke-virtual {v15, v6, v7}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v19, v0

    move v13, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_3
    invoke-static {v7}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v19, v0

    move-object v12, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_4
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v19, v0

    move/from16 v30, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v49, v7

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_9
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_c
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v37

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_d
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v48, v7

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v19, v0

    move v11, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_10
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v19, v0

    move/from16 v16, v9

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_11
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v57

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_13
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_14
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v55

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto/16 :goto_3

    :pswitch_15
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v54

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_16
    move-object v8, v7

    const/4 v9, 0x1

    move-object/from16 v19, v0

    move/from16 v53, v9

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_17
    move-object/from16 v44, v7

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_18
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v42

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_19
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_1a
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v39

    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :pswitch_1b
    const/4 v9, -0x1

    if-ne v14, v9, :cond_1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_1
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    goto :goto_3

    :cond_2
    move-object/from16 v15, v36

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v7

    const-string v7, "TaskRecord: Unknown attribute="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v36, v15

    move-object/from16 v0, v19

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v19, v0

    move-object/from16 v15, v36

    move-object/from16 v36, v19

    move-object/from16 v58, v22

    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-ne v7, v4, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v2, :cond_4

    goto :goto_5

    :cond_4
    move-object/from16 v6, p0

    goto :goto_7

    :cond_5
    :goto_5
    const/4 v4, 0x2

    if-ne v7, v4, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "affinity_intent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v6, p0

    move-object/from16 v58, v4

    goto :goto_6

    :cond_6
    const-string v4, "intent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static/range {p1 .. p1}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v6, p0

    move-object/from16 v36, v4

    goto :goto_6

    :cond_7
    const-string v4, "activity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    nop

    invoke-static/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v6, p0

    goto :goto_6

    :cond_9
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v1}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->handleUnknownTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    goto :goto_4

    :cond_a
    move-object/from16 v6, p0

    goto :goto_4

    :cond_b
    move-object/from16 v6, p0

    :goto_7
    if-nez v53, :cond_c

    move-object/from16 v0, v44

    move-object/from16 v59, v0

    goto :goto_8

    :cond_c
    const-string v0, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    move-object/from16 v59, v0

    goto :goto_8

    :cond_d
    move-object/from16 v59, v8

    :goto_8
    if-gtz v16, :cond_11

    if-eqz v36, :cond_e

    move-object/from16 v0, v36

    goto :goto_9

    :cond_e
    move-object/from16 v0, v58

    :goto_9
    move-object v4, v0

    const/4 v8, 0x0

    if-eqz v4, :cond_10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    nop

    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v60, v2

    const/16 v2, 0x2200

    :try_start_1
    invoke-interface {v1, v0, v2, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v2

    :cond_f
    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move/from16 v60, v2

    goto :goto_a

    :cond_10
    move/from16 v60, v2

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating task #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": effectiveUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_b

    :cond_11
    move/from16 v60, v2

    move/from16 v0, v16

    :goto_b
    const/4 v1, 0x1

    if-ge v13, v1, :cond_12

    if-ne v11, v1, :cond_13

    const/4 v2, 0x2

    if-ne v5, v2, :cond_13

    const/4 v2, 0x1

    move/from16 v61, v30

    goto :goto_c

    :cond_12
    const/4 v2, 0x3

    if-ne v5, v2, :cond_13

    const/4 v2, 0x2

    const/4 v4, 0x1

    move/from16 v61, v4

    goto :goto_c

    :cond_13
    move v2, v5

    move/from16 v61, v30

    :goto_c
    move-object/from16 v8, p2

    iget-object v5, v8, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v4, p0

    move v6, v14

    move/from16 v62, v7

    move-object/from16 v7, v36

    move-object/from16 v8, v58

    move-object v1, v9

    move-object/from16 v9, v44

    move/from16 v63, v10

    move-object/from16 v10, v59

    move/from16 v64, v11

    move-object/from16 v11, v39

    move-object/from16 v65, v1

    move-object v1, v12

    move-object/from16 v12, v42

    move/from16 v66, v13

    move/from16 v13, v54

    move/from16 v67, v14

    move/from16 v14, v55

    move-object/from16 v68, v15

    const/16 v69, 0x1

    move/from16 v15, v56

    move/from16 v16, v63

    move/from16 v17, v0

    move-object/from16 v18, v48

    move-object/from16 v19, v3

    move-wide/from16 v20, v50

    move/from16 v22, v37

    move-object/from16 v23, v68

    move/from16 v24, v38

    move/from16 v25, v41

    move/from16 v26, v43

    move/from16 v27, v40

    move/from16 v28, v45

    move-object/from16 v29, v49

    move/from16 v30, v2

    move/from16 v31, v61

    move/from16 v32, v52

    move/from16 v33, v57

    move/from16 v34, v46

    move/from16 v35, v47

    invoke-virtual/range {v4 .. v35}, Lcom/android/server/wm/TaskRecord$TaskRecordFactory;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;Ljava/util/ArrayList;JZLandroid/app/ActivityManager$TaskDescription;IIIIILjava/lang/String;IZZZII)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iput-object v1, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_d
    if-ltz v5, :cond_14

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_14
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v5, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v65

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_1b
        -0x5ccdaff6 -> :sswitch_1a
        -0x5ba06deb -> :sswitch_19
        -0x591a685c -> :sswitch_18
        -0x4d0e36e6 -> :sswitch_17
        -0x43dc2f14 -> :sswitch_16
        -0x430d08ca -> :sswitch_15
        -0x3a0f4851 -> :sswitch_14
        -0x37680e48 -> :sswitch_13
        -0x3395d9b2 -> :sswitch_12
        -0x313f784c -> :sswitch_11
        -0x2a27c539 -> :sswitch_10
        -0x2a0990b3 -> :sswitch_f
        -0x1df202b3 -> :sswitch_e
        -0x158140a0 -> :sswitch_d
        -0x9b3481b -> :sswitch_c
        -0x8c511f1 -> :sswitch_b
        -0x7e175ab -> :sswitch_a
        0xac8bdb4 -> :sswitch_9
        0x13bdcee4 -> :sswitch_8
        0x2046b199 -> :sswitch_7
        0x24172928 -> :sswitch_6
        0x33cf43d3 -> :sswitch_5
        0x3c12eca9 -> :sswitch_4
        0x40756fcb -> :sswitch_3
        0x56e1584e -> :sswitch_2
        0x5bc3bc90 -> :sswitch_1
        0x789a804d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
