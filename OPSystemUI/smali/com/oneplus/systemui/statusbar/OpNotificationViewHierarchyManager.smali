.class public Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "OpNotificationViewHierarchyManager.java"


# instance fields
.field private mIsAnyNotificationLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->mIsAnyNotificationLocked:Z

    return-void
.end method


# virtual methods
.method public isAnyNotificationLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->mIsAnyNotificationLocked:Z

    return p0
.end method

.method protected setAnyNotificationLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/systemui/statusbar/OpNotificationViewHierarchyManager;->mIsAnyNotificationLocked:Z

    return-void
.end method
