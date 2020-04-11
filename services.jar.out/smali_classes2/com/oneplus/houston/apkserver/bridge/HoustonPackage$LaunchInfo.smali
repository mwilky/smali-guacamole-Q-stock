.class final Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$LaunchInfo;
.super Ljava/lang/Object;
.source "HoustonPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LaunchInfo"
.end annotation


# instance fields
.field public mComponent:Ljava/lang/String;

.field public mIsColdStart:Z

.field public mSpendTime:J

.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$LaunchInfo;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$LaunchInfo;->mComponent:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$LaunchInfo;->mIsColdStart:Z

    iput-wide p4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$LaunchInfo;->mSpendTime:J

    return-void
.end method
