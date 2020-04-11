.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ProcessList;

.field private final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field private final synthetic f$10:Ljava/lang/String;

.field private final synthetic f$2:J

.field private final synthetic f$3:Lcom/android/server/am/HostingRecord;

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:[I

.field private final synthetic f$7:I

.field private final synthetic f$8:I

.field private final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/HostingRecord;Ljava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$0:Lcom/android/server/am/ProcessList;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-wide p3, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$2:J

    iput-object p5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$3:Lcom/android/server/am/HostingRecord;

    iput-object p6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$4:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$5:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$6:[I

    iput p9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$7:I

    iput p10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$8:I

    iput-object p11, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$9:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$10:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$0:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-wide v2, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$2:J

    iget-object v4, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$3:Lcom/android/server/am/HostingRecord;

    iget-object v5, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$4:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$5:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$6:[I

    iget v8, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$7:I

    iget v9, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$8:I

    iget-object v10, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$9:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/am/-$$Lambda$ProcessList$UexWKwJsFw6TLuMbVvCip_NmVGY;->f$10:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ProcessList;->lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/HostingRecord;Ljava/lang/String;Ljava/lang/String;[IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
