.class public final Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;
.super Ljava/lang/Object;
.source "ChunkListingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/encryption/chunk/ChunkListingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final mLength:I

.field private final mStart:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mStart:J

    iput p3, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mLength:I

    return-void
.end method

.method synthetic constructor <init>(JILcom/android/server/backup/encryption/chunk/ChunkListingMap$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mLength:I

    return v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;->mStart:J

    return-wide v0
.end method
