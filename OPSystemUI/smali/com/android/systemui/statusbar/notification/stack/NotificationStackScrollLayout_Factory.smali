.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout_Factory;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public static newNotificationStackScrollLayout(Landroid/content/Context;Landroid/util/AttributeSet;ZLjava/lang/Object;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object v4, p3

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-object v10
.end method
