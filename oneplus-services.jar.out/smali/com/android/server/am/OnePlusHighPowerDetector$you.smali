.class public Lcom/android/server/am/OnePlusHighPowerDetector$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field public final is:I

.field public final pid:I

.field public pkgName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->uid:I

    iput p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pid:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->pkgName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$you;->is:I

    return-void
.end method
