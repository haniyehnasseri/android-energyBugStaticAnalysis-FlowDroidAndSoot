.class public Lcom/ushahidi/android/app/ui/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;,
        Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PullToRefreshListView"

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mCurrentScrollState:I

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnRefreshListener:Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;

.field private mRefreshOriginalTopPadding:I

.field private mRefreshState:I

.field private mRefreshView:Landroid/widget/LinearLayout;

.field private mRefreshViewHeight:I

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/widget/ProgressBar;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/ushahidi/android/app/ui/PullToRefreshListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ushahidi/android/app/ui/PullToRefreshListView;

    .prologue
    .line 36
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    return v0
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x0

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 222
    .local v3, "historySize":I
    const/4 v6, 0x1

    .line 224
    .local v6, "pointerCount":I
    :try_start_0
    const-class v8, Landroid/view/MotionEvent;

    const-string v9, "getPointerCount"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 225
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .line 236
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 237
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_2
    if-ge v5, v6, :cond_2

    .line 238
    iget v8, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 240
    invoke-virtual {p0, v13}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 243
    :cond_0
    const/4 v2, 0x0

    .line 246
    .local v2, "historicalY":I
    :try_start_1
    const-class v8, Landroid/view/MotionEvent;

    const-string v9, "getHistoricalY"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 248
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    .line 262
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_3
    iget v8, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mLastMotionY:I

    sub-int v8, v2, v8

    iget v9, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v10, 0x3ffb333333333333L    # 1.7

    div-double/2addr v8, v10

    double-to-int v7, v8

    .line 265
    .local v7, "topPadding":I
    iget-object v8, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 266
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 268
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v10

    iget-object v11, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 269
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v11

    .line 265
    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 237
    .end local v2    # "historicalY":I
    .end local v7    # "topPadding":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 226
    .end local v1    # "h":I
    .end local v5    # "p":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v6, 0x1

    .line 234
    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "h":I
    .restart local v2    # "historicalY":I
    .restart local v5    # "p":I
    :catch_4
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v8

    float-to-int v2, v8

    .line 258
    goto :goto_3

    .line 252
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 254
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 256
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 236
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "historicalY":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 273
    .end local v5    # "p":I
    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 80
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 83
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 85
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 86
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 89
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 91
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    invoke-virtual {v0, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 99
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0072

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0071

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0070

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    .line 105
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0073

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 109
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;

    invoke-direct {v1, p0, v12}, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnClickRefreshListener;-><init>(Lcom/ushahidi/android/app/ui/PullToRefreshListView;Lcom/ushahidi/android/app/ui/PullToRefreshListView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 112
    iput v3, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    .line 114
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 118
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    .line 120
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 309
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 310
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 315
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 317
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 320
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 324
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 325
    return-void

    .line 322
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private resetHeader()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 290
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_0

    .line 291
    iput v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    .line 293
    invoke-direct {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->resetHeaderPadding()V

    .line 296
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 302
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 280
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    iget-object v3, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 282
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 283
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 279
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 284
    return-void
.end method

.method private scrollListBy(II)V
    .locals 8
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v7, 0x1

    .line 167
    :try_start_0
    const-class v2, Landroid/widget/ListView;

    const-string v3, "smoothScrollBy"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 169
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 180
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0, v7}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    .line 125
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mOnRefreshListener:Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mOnRefreshListener:Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;->onRefresh()V

    .line 386
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "PullToRefreshListView"

    const-string v1, "onRefreshComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->resetHeader()V

    .line 407
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->invalidateViews()V

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    .line 411
    :cond_0
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->onRefreshComplete()V

    .line 395
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 331
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_5

    .line 333
    if-nez p2, :cond_4

    .line 334
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 336
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v4, :cond_2

    .line 338
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 340
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 341
    iput v4, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v3, :cond_1

    .line 344
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v2, :cond_3

    .line 346
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 347
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    :cond_3
    iput v3, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    goto :goto_0

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    invoke-direct {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->resetHeader()V

    goto :goto_0

    .line 355
    :cond_5
    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v3, :cond_1

    if-nez p2, :cond_1

    iget v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_1

    .line 358
    invoke-virtual {p0, v2}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 363
    iput p2, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mCurrentScrollState:I

    .line 364
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 186
    .local v0, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 214
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    if-eq v1, v4, :cond_0

    .line 193
    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    .line 194
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 197
    :cond_2
    iput v4, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    .line 198
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->prepareForRefresh()V

    .line 199
    invoke-virtual {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->onRefresh()V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewHeight:I

    if-ge v1, v2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->resetHeader()V

    .line 203
    invoke-virtual {p0, v3}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    iput v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mLastMotionY:I

    goto :goto_0

    .line 211
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareForRefresh()V
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->resetHeaderPadding()V

    .line 369
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 377
    const/4 v0, 0x4

    iput v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshState:I

    .line 378
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->setSelection(I)V

    .line 132
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "lastUpdated"    # Ljava/lang/CharSequence;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;)V
    .locals 0
    .param p1, "onRefreshListener"    # Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ushahidi/android/app/ui/PullToRefreshListView;->mOnRefreshListener:Lcom/ushahidi/android/app/ui/PullToRefreshListView$OnRefreshListener;

    .line 141
    return-void
.end method
