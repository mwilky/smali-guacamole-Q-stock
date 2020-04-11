.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_e

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    new-array v6, v5, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v2, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v7, v2, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v5, v2, v3

    aput-object v2, v6, v4

    return-object v6

    :cond_0
    new-instance v6, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v1, -0x2

    if-ge v7, v8, :cond_c

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v8, :cond_1

    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v9, v7, 0x1

    :goto_1
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_b

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v10, :cond_2

    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float/2addr v11, v12

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v14, v12, v13

    const v15, 0x3d4ccccd    # 0.05f

    if-lez v14, :cond_3

    cmpl-float v14, v11, v15

    if-ltz v14, :cond_3

    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    goto/16 :goto_5

    :cond_3
    add-int/lit8 v14, v9, 0x1

    :goto_2
    if-ge v14, v1, :cond_a

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v16, :cond_4

    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v18

    sub-float v17, v17, v18

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v17, v17, v3

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v5, v3, v13

    if-lez v5, :cond_5

    cmpl-float v5, v17, v15

    if-ltz v5, :cond_5

    move-object/from16 v20, v0

    move/from16 v23, v1

    const/16 v18, 0x2

    const/16 v19, 0x1

    goto/16 :goto_4

    :cond_5
    new-array v5, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v8, v5, v4

    const/16 v19, 0x1

    aput-object v10, v5, v19

    const/16 v18, 0x2

    aput-object v16, v5, v18

    invoke-static {v5}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v2, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v13

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v15

    move-object/from16 v20, v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    add-float v15, v4, v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v21, v21, v22

    div-float v15, v15, v21

    const/high16 v21, 0x43340000    # 180.0f

    cmpl-float v21, v15, v21

    if-gtz v21, :cond_9

    const/high16 v21, 0x41100000    # 9.0f

    cmpg-float v21, v15, v21

    if-gez v21, :cond_6

    move/from16 v23, v1

    goto :goto_3

    :cond_6
    sub-float v21, v4, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v22

    div-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const v22, 0x3dcccccd    # 0.1f

    cmpl-float v23, v21, v22

    if-ltz v23, :cond_7

    move/from16 v23, v1

    goto :goto_3

    :cond_7
    mul-float v23, v4, v4

    mul-float v24, v0, v0

    move/from16 v25, v0

    add-float v0, v23, v24

    move/from16 v23, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, v13, v0

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v24

    div-float v1, v1, v24

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v22, v1, v22

    if-ltz v22, :cond_8

    goto :goto_3

    :cond_8
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 v25, v0

    move/from16 v23, v1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v0, v20

    move/from16 v1, v23

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const v15, 0x3d4ccccd    # 0.05f

    goto/16 :goto_2

    :cond_a
    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v0, v20

    move/from16 v1, v23

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v20, v0

    move/from16 v23, v1

    move/from16 v18, v3

    move/from16 v19, v5

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v18

    move/from16 v5, v19

    move-object/from16 v0, v20

    move/from16 v1, v23

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    move-object/from16 v20, v0

    move/from16 v23, v1

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    return-object v0

    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_e
    move-object/from16 v20, v0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    int-to-float v8, v6

    const/high16 v9, 0x43640000    # 228.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    const/4 v8, 0x3

    :cond_2
    const/4 v10, 0x5

    new-array v10, v10, [I

    add-int/lit8 v11, v8, -0x1

    :goto_1
    if-ge v11, v6, :cond_a

    aput v2, v10, v2

    aput v2, v10, v3

    const/4 v12, 0x2

    aput v2, v10, v12

    aput v2, v10, v9

    const/4 v13, 0x4

    aput v2, v10, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v7, :cond_8

    invoke-virtual {v5, v15, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-eqz v16, :cond_4

    and-int/lit8 v9, v14, 0x1

    if-ne v9, v3, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    aget v9, v10, v14

    add-int/2addr v9, v3

    aput v9, v10, v14

    const/4 v9, 0x3

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v14, 0x1

    if-nez v9, :cond_7

    if-ne v14, v13, :cond_6

    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0, v10, v11, v15}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    aput v2, v10, v2

    aput v2, v10, v3

    aput v2, v10, v12

    const/4 v14, 0x3

    aput v2, v10, v14

    aput v2, v10, v13

    move v14, v9

    const/4 v9, 0x3

    goto :goto_3

    :cond_5
    aget v9, v10, v12

    aput v9, v10, v2

    const/4 v9, 0x3

    aget v16, v10, v9

    aput v16, v10, v3

    aget v16, v10, v13

    aput v16, v10, v12

    aput v3, v10, v9

    aput v2, v10, v13

    const/4 v14, 0x3

    goto :goto_3

    :cond_6
    const/4 v9, 0x3

    add-int/lit8 v14, v14, 0x1

    aget v16, v10, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v10, v14

    goto :goto_3

    :cond_7
    const/4 v9, 0x3

    aget v16, v10, v14

    add-int/lit8 v16, v16, 0x1

    aput v16, v10, v14

    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_8
    invoke-static {v10}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v0, v10, v11, v7}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_9
    add-int/2addr v11, v8

    goto :goto_1

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    array-length v11, v9

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_b

    aget-object v13, v9, v12

    invoke-static {v13}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v14, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v14, v13}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v9

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v9
.end method
