import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A150400: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150400, there is no canonical definition to state claims against.
-/

/-! ## A150400.P1887085785500306839

`A110654(A187212(n)+A026876(n))`
-/

namespace A150400.P1887085785500306839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A187212 n + A026876 n).toNat

end

end A150400.P1887085785500306839

/-! ## A150400.P16036915828145604332

`A103221(A037597(n+1))+A000112(n)`
-/

namespace A150400.P16036915828145604332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A037597 (n + 1)).toNat + A000112 n

end

end A150400.P16036915828145604332

/-! ## A150400.P555273610307391811

`A241409(n)+A020911(A345242(n+2))`
-/

namespace A150400.P555273610307391811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241409 n + A020911 (A345242 (n + 2)).toNat

end

end A150400.P555273610307391811

/-!
# A150401: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150401, there is no canonical definition to state claims against.
-/

/-! ## A150401.P9530967365555673379

`A213219(∑[A149073(n)])`
-/

namespace A150401.P9530967365555673379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150401.P9530967365555673379

/-! ## A150401.P15872470186042051503

`A111858(A092443(n+1))+A072123(n+1)`
-/

namespace A150401.P15872470186042051503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111858 (A092443 (n + 1)).toNat + A072123 (n + 1)

end

end A150401.P15872470186042051503

/-!
# A150402: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150402, there is no canonical definition to state claims against.
-/

/-! ## A150402.P15892208518009589947

`A247971(A370539(n))`
-/

namespace A150402.P15892208518009589947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A370539 n).toNat

end

end A150402.P15892208518009589947

/-! ## A150402.P10873644896138500551

`A057907(A116774(n+1))`
-/

namespace A150402.P10873644896138500551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057907 (A116774 (n + 1)).toNat

end

end A150402.P10873644896138500551

/-!
# A150403: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150403, there is no canonical definition to state claims against.
-/

/-! ## A150403.P15491227752965546718

`A004001(A359711(n)-A035468(n+1))`
-/

namespace A150403.P15491227752965546718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A359711 n - A035468 (n + 1)).toNat

end

end A150403.P15491227752965546718

/-! ## A150403.P13512311945139692594

`∑[∏{p}[A149701(n)², #]]`
-/

namespace A150403.P13512311945139692594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149701 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150403.P13512311945139692594

/-!
# A150404: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150404, there is no canonical definition to state claims against.
-/

/-! ## A150404.P14222447513092172624

`A004525(A150410(n)+A150403(n))`
-/

namespace A150404.P14222447513092172624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150410 n + A150403 n).toNat

end

end A150404.P14222447513092172624

/-! ## A150404.P7100046857829383487

`A150409(n)-A011737(A052591(n))`
-/

namespace A150404.P7100046857829383487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150409 n - A011737 (A052591 n).toNat

end

end A150404.P7100046857829383487

/-! ## A150404.P7959040149154350880

`A353844(∑[A000296(n)])+A002450(n)`
-/

namespace A150404.P7959040149154350880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A002450 n

end

end A150404.P7959040149154350880

/-!
# A150405: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150405, there is no canonical definition to state claims against.
-/

/-! ## A150405.P8326284709073974704

`A004526(A034999(n)+A026597(n))`
-/

namespace A150405.P8326284709073974704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A034999 n + A026597 n).toNat

end

end A150405.P8326284709073974704

/-! ## A150405.P16861768312522566454

`A080907(A303071(n))`
-/

namespace A150405.P16861768312522566454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080907 (A303071 n).toNat

end

end A150405.P16861768312522566454

/-!
# A150406: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150406, there is no canonical definition to state claims against.
-/

/-! ## A150406.P17641636399318746645

`∑[A002264(A176755(n+1))]`
-/

namespace A150406.P17641636399318746645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A176755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150406.P17641636399318746645

/-! ## A150406.P14777598378319539648

`A099014(n)+A048766(A001576(n))`
-/

namespace A150406.P14777598378319539648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 n + A048766 (A001576 n).toNat

end

end A150406.P14777598378319539648

/-! ## A150406.P14044888667920777127

`A004525(A150414(n)+A150401(n))`
-/

namespace A150406.P14044888667920777127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150414 n + A150401 n).toNat

end

end A150406.P14044888667920777127

/-!
# A150407: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150407, there is no canonical definition to state claims against.
-/

/-! ## A150407.P14147352793955931427

`A052374(A273145(n))`
-/

namespace A150407.P14147352793955931427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052374 (A273145 n).toNat

end

end A150407.P14147352793955931427

/-! ## A150407.P8509198756538794017

`∑[A002330(A276752(n))]`
-/

namespace A150407.P8509198756538794017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A276752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150407.P8509198756538794017

/-!
# A150408: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150408, there is no canonical definition to state claims against.
-/

/-! ## A150408.P12365755824557567897

`A214701(A150412(n))`
-/

namespace A150408.P12365755824557567897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150412 n).toNat

end

end A150408.P12365755824557567897

/-! ## A150408.P8658700533927881348

`A157466(n*A007841(n))`
-/

namespace A150408.P8658700533927881348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157466 ((n : ℤ) * A007841 n).toNat

end

end A150408.P8658700533927881348

/-!
# A150409: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A150409, there is no canonical definition to state claims against.
-/

/-! ## A150409.P2960435956728425392

`A150404(n)+A011737(A052591(n))`
-/

namespace A150409.P2960435956728425392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150404 n + A011737 (A052591 n).toNat

end

end A150409.P2960435956728425392

/-! ## A150409.P5936927470183907053

`A065033(A150410(n)+A150403(n))`
-/

namespace A150409.P5936927470183907053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150410 n + A150403 n).toNat

end

end A150409.P5936927470183907053

/-! ## A150409.P4956584528382391652

`A150404(n)+A011737(Δ[A150403(n)])`
-/

namespace A150409.P4956584528382391652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150404 n + A011737 (f1 (n + 1) - f1 n).toNat

end

end A150409.P4956584528382391652

/-!
# A150411: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150411, there is no canonical definition to state claims against.
-/

/-! ## A150411.P17458836332095424918

`A004525(A149100(n)+A149054(n+1))`
-/

namespace A150411.P17458836332095424918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149100 n + A149054 (n + 1)).toNat

end

end A150411.P17458836332095424918

/-! ## A150411.P11734623061828894594

`A323088((n+2)²-1)`
-/

namespace A150411.P11734623061828894594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323088 ((n + 2) ^ 2 - 1)

end

end A150411.P11734623061828894594

/-!
# A150412: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150412, there is no canonical definition to state claims against.
-/

/-! ## A150412.P1768952016837790665

`Δ[A138999(2^n+4^n-(2^n-1)*(2^n-2)/6)]+floor(acot(n))`
-/

namespace A150412.P1768952016837790665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) - ((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A150412.P1768952016837790665

/-! ## A150412.P7438130802961012671

`A150413(A001096(n))`
-/

namespace A150412.P7438130802961012671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150413 (A001096 n).toNat

end

end A150412.P7438130802961012671

/-!
# A150414: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150414, there is no canonical definition to state claims against.
-/

/-! ## A150414.P14033782279758242212

`∑[∏{p}[A149709(n)², #]]`
-/

namespace A150414.P14033782279758242212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149709 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150414.P14033782279758242212

/-! ## A150414.P5859335453312338067

`∑[∏{p}[A149710(n)², #]]`
-/

namespace A150414.P5859335453312338067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149710 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150414.P5859335453312338067

/-!
# A150416: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150416, there is no canonical definition to state claims against.
-/

/-! ## A150416.P12640143940689891445

`A004525(A150417(n)+A150411(n))`
-/

namespace A150416.P12640143940689891445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150417 n + A150411 n).toNat

end

end A150416.P12640143940689891445

/-! ## A150416.P4528420862547042508

`A004525(A150423(n)+A150408(n))`
-/

namespace A150416.P4528420862547042508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150423 n + A150408 n).toNat

end

end A150416.P4528420862547042508

/-!
# A150417: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150417, there is no canonical definition to state claims against.
-/

/-! ## A150417.P2934875743139000835

`A004526(A150421(n)+A150412(n))`
-/

namespace A150417.P2934875743139000835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150421 n + A150412 n).toNat

end

end A150417.P2934875743139000835

/-! ## A150417.P4771109552297988265

`A065033(A150420(n)+A150412(n))`
-/

namespace A150417.P4771109552297988265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150420 n + A150412 n).toNat

end

end A150417.P4771109552297988265

/-!
# A150418: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150418, there is no canonical definition to state claims against.
-/

/-! ## A150418.P15903875646992445492

`A065033(A150420(n)+A150411(n))`
-/

namespace A150418.P15903875646992445492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150420 n + A150411 n).toNat

end

end A150418.P15903875646992445492

/-! ## A150418.P14101493313769550994

`A376988(3*n+4)+A000068(A027610(n+1))`
-/

namespace A150418.P14101493313769550994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376988 (3 * n + 4) + A000068 (A027610 (n + 1)).toNat

end

end A150418.P14101493313769550994

/-!
# A150419: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150419, there is no canonical definition to state claims against.
-/

/-! ## A150419.P16130303356267196003

`A029923(A108526(n+2))`
-/

namespace A150419.P16130303356267196003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029923 (A108526 (n + 2)).toNat

end

end A150419.P16130303356267196003

/-! ## A150419.P14357220554069886890

`A150415(n)+A089233(A111976(n))`
-/

namespace A150419.P14357220554069886890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150415 n + A089233 (A111976 n).toNat

end

end A150419.P14357220554069886890

/-! ## A150419.P5857050701120769720

`A150420(n)-A080224(A121725(n))`
-/

namespace A150419.P5857050701120769720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150420 n - A080224 (A121725 n).toNat

end

end A150419.P5857050701120769720

/-!
# A150420: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150420, there is no canonical definition to state claims against.
-/

/-! ## A150420.P649882215099274815

`A150419(n)+A080224(A121725(n))`
-/

namespace A150420.P649882215099274815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150419 n + A080224 (A121725 n).toNat

end

end A150420.P649882215099274815

/-! ## A150420.P3135698553788812184

`A150422(n)-A241448(A241461(n+1))`
-/

namespace A150420.P3135698553788812184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150422 n - A241448 (A241461 (n + 1)).toNat

end

end A150420.P3135698553788812184

/-!
# A150421: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150421, there is no canonical definition to state claims against.
-/

/-! ## A150421.P18411445881309320812

`A110654(A197168(n)+A151088(n))`
-/

namespace A150421.P18411445881309320812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A197168 n + A151088 n).toNat

end

end A150421.P18411445881309320812

/-! ## A150421.P8210649563608769231

`A150422(n)-A080224(A121725(n))`
-/

namespace A150421.P8210649563608769231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150422 n - A080224 (A121725 n).toNat

end

end A150421.P8210649563608769231

/-! ## A150421.P13324634514571778694

`A241448(A241461(n+1))+A150419(n)`
-/

namespace A150421.P13324634514571778694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 (A241461 (n + 1)).toNat + A150419 n

end

end A150421.P13324634514571778694

/-!
# A150422: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150422, there is no canonical definition to state claims against.
-/

/-! ## A150422.P6869175384190124985

`A150421(n)+A080224(A121725(n))`
-/

namespace A150422.P6869175384190124985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150421 n + A080224 (A121725 n).toNat

end

end A150422.P6869175384190124985

/-! ## A150422.P2034082280075046470

`A241448(A241461(n+1))+A150420(n)`
-/

namespace A150422.P2034082280075046470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 (A241461 (n + 1)).toNat + A150420 n

end

end A150422.P2034082280075046470

/-!
# A150423: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150423, there is no canonical definition to state claims against.
-/

/-! ## A150423.P9717426083708178066

`A372287(3*n+1)+A027868(A369231(n+2))`
-/

namespace A150423.P9717426083708178066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372287 (3 * n + 1) + A027868 (A369231 (n + 2)).toNat

end

end A150423.P9717426083708178066

/-! ## A150423.P374633804709473945

`Δ[A161208(Δ[ceil(2^(n-1))])]`
-/

namespace A150423.P374633804709473945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A150423.P374633804709473945

/-!
# A150424: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150424, there is no canonical definition to state claims against.
-/

/-! ## A150424.P1445148660037577029

`A052899(n)+A004525(A099013(n))`
-/

namespace A150424.P1445148660037577029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 n + A004525 (A099013 n).toNat

end

end A150424.P1445148660037577029

/-! ## A150424.P13107481609786244237

`A150425(n)-A335462(A117591(n))`
-/

namespace A150424.P13107481609786244237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150425 n - A335462 (A117591 n).toNat

end

end A150424.P13107481609786244237

/-! ## A150424.P5697723981719024419

`A052899(n)+A004525(∑[A099012(n)])`
-/

namespace A150424.P5697723981719024419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 n + A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150424.P5697723981719024419

/-!
# A150425: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150425, there is no canonical definition to state claims against.
-/

/-! ## A150425.P8717491470953922326

`A335462(A117591(n))+A150424(n)`
-/

namespace A150425.P8717491470953922326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (A117591 n).toNat + A150424 n

end

end A150425.P8717491470953922326

/-! ## A150425.P1863132310970205417

`ceil(A054341(n)*A194441(A000079(n))/(n+1))`
-/

namespace A150425.P1863132310970205417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054341 n * A194441 (A000079 n).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A150425.P1863132310970205417

/-!
# A150426: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150426, there is no canonical definition to state claims against.
-/

/-! ## A150426.P16515803541922871246

`A150428(n)-A343380(A029518(n+1))`
-/

namespace A150426.P16515803541922871246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150428 n - A343380 (A029518 (n + 1)).toNat

end

end A150426.P16515803541922871246

/-! ## A150426.P2164585168263029538

`∑[∏{p}[A149719(n)², #]]`
-/

namespace A150426.P2164585168263029538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149719 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150426.P2164585168263029538

/-!
# A150428: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150428, there is no canonical definition to state claims against.
-/

/-! ## A150428.P7325973874857540348

`A343380(A029518(n+1))+A150426(n)`
-/

namespace A150428.P7325973874857540348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A029518 (n + 1)).toNat + A150426 n

end

end A150428.P7325973874857540348

/-!
# A150429: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150429, there is no canonical definition to state claims against.
-/

/-! ## A150429.P4181592279923535148

`∑[or(1, A059995(Δ[(1-2^n)²]))]`
-/

namespace A150429.P4181592279923535148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059995 (f2 (n + 1) - f2 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150429.P4181592279923535148

/-! ## A150429.P1555195475883247575

`A091256(A000108(n))+A058622(2*n)`
-/

namespace A150429.P1555195475883247575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 (A000108 n).toNat + A058622 (2 * n)

end

end A150429.P1555195475883247575

/-!
# A150430: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150430, there is no canonical definition to state claims against.
-/

/-! ## A150430.P14576366850548988531

`A132090(n+1)+A098294(A001077(n))`
-/

namespace A150430.P14576366850548988531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 (n + 1) + A098294 (A001077 n).toNat

end

end A150430.P14576366850548988531

/-! ## A150430.P12659985989037312614

`A150468(n)-A298731(A001349(n+1))`
-/

namespace A150430.P12659985989037312614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150468 n - A298731 (A001349 (n + 1)).toNat

end

end A150430.P12659985989037312614

/-! ## A150430.P9894658308949381035

`A004525(A110679(n))+A001221(A310422(n))`
-/

namespace A150430.P9894658308949381035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110679 n).toNat + A001221 (A310422 n).toNat

end

end A150430.P9894658308949381035

/-!
# A150431: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A150431, there is no canonical definition to state claims against.
-/

/-! ## A150431.P5010699879318950482

`∑[A002330(A210996(n))]`
-/

namespace A150431.P5010699879318950482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002330 (A210996 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150431.P5010699879318950482

/-! ## A150431.P3154421991326009687

`A015448(n)+A001222(A074655(n))`
-/

namespace A150431.P3154421991326009687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n + A001222 (A074655 n).toNat

end

end A150431.P3154421991326009687

/-!
# A150432: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A150432, there is no canonical definition to state claims against.
-/

/-! ## A150432.P8743720577051230280

`A004526(A084480(n)+A065455(n))`
-/

namespace A150432.P8743720577051230280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A084480 n + A065455 n).toNat

end

end A150432.P8743720577051230280

/-! ## A150432.P18096849618345563392

`A150476(n)-A248639(A090830(n))`
-/

namespace A150432.P18096849618345563392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150476 n - A248639 (A090830 n).toNat

end

end A150432.P18096849618345563392

/-! ## A150432.P16761655883155006968

`A150477(n)-A248639(A090830(n))`
-/

namespace A150432.P16761655883155006968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150477 n - A248639 (A090830 n).toNat

end

end A150432.P16761655883155006968

/-!
# A150433: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150433, there is no canonical definition to state claims against.
-/

/-! ## A150433.P3639181309660903272

`A248148(A150733(n))`
-/

namespace A150433.P3639181309660903272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A150733 n).toNat

end

end A150433.P3639181309660903272

/-! ## A150433.P9062416740078889275

`A243046(A007559(n))+A006318(n)`
-/

namespace A150433.P9062416740078889275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243046 (A007559 n).toNat + A006318 n

end

end A150433.P9062416740078889275

/-!
# A150434: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150434, there is no canonical definition to state claims against.
-/

/-! ## A150434.P15806830615295645367

`A271865(A150384(n))`
-/

namespace A150434.P15806830615295645367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271865 (A150384 n).toNat

end

end A150434.P15806830615295645367

/-! ## A150434.P940823630227872880

`or(A085862(A070071(n+2)), A359986(n))`
-/

namespace A150434.P940823630227872880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085862 (A070071 (n + 2)).toNat) (A359986 n)

end

end A150434.P940823630227872880

/-!
# A150435: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150435, there is no canonical definition to state claims against.
-/

/-! ## A150435.P14304901656650675725

`A004001(A258702(n)+A151074(n))`
-/

namespace A150435.P14304901656650675725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A258702 n + A151074 n).toNat

end

end A150435.P14304901656650675725

/-! ## A150435.P399347318321855546

`A111853(A195463(n))`
-/

namespace A150435.P399347318321855546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111853 (A195463 n).toNat

end

end A150435.P399347318321855546

/-!
# A150436: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150436, there is no canonical definition to state claims against.
-/

/-! ## A150436.P16806465416384549555

`A005378(∑[A150712(n)])`
-/

namespace A150436.P16806465416384549555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150436.P16806465416384549555

/-! ## A150436.P121248656162372756

`A049317(A150467(n+1))`
-/

namespace A150436.P121248656162372756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (A150467 (n + 1)).toNat

end

end A150436.P121248656162372756

/-!
# A150437: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150437, there is no canonical definition to state claims against.
-/

/-! ## A150437.P4243737891283956571

`A214701(∑[A149737(n)])`
-/

namespace A150437.P4243737891283956571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150437.P4243737891283956571

/-! ## A150437.P5196704846827834097

`A256502(Δ[Δ[A148496(n)]])`
-/

namespace A150437.P5196704846827834097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (f1 (n + 1) - f1 n).toNat

end

end A150437.P5196704846827834097

/-!
# A150438: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150438, there is no canonical definition to state claims against.
-/

/-! ## A150438.P10842143313520742545

`A214701(A150441(n))`
-/

namespace A150438.P10842143313520742545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150441 n).toNat

end

end A150438.P10842143313520742545

/-! ## A150438.P4724260735305536516

`A171727(Δ[A104934(n)])`
-/

namespace A150438.P4724260735305536516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (f1 (n + 1) - f1 n).toNat

end

end A150438.P4724260735305536516

/-!
# A150439: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150439, there is no canonical definition to state claims against.
-/

/-! ## A150439.P116344632738803261

`and(A056000(A001850(n)), A150513(n))`
-/

namespace A150439.P116344632738803261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056000 (A001850 n).toNat) (A150513 n)

end

end A150439.P116344632738803261

/-! ## A150439.P15249372434505202439

`A108141(A150674(n))`
-/

namespace A150439.P15249372434505202439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A150674 n).toNat

end

end A150439.P15249372434505202439

/-!
# A150440: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150440, there is no canonical definition to state claims against.
-/

/-! ## A150440.P6083680056655280899

`∑[A266646(A323794(n))]`
-/

namespace A150440.P6083680056655280899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (A323794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150440.P6083680056655280899

/-! ## A150440.P6987663279332592879

`A066339(A020729(n)+3)`
-/

namespace A150440.P6987663279332592879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A020729 n + 3).toNat

end

end A150440.P6987663279332592879

/-!
# A150441: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150441, there is no canonical definition to state claims against.
-/

/-! ## A150441.P6234190302865304767

`A214701(A150444(n))`
-/

namespace A150441.P6234190302865304767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150444 n).toNat

end

end A150441.P6234190302865304767

/-! ## A150441.P13402876492934834373

`A330061(A000110(n))+A012814(n)`
-/

namespace A150441.P13402876492934834373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330061 (A000110 n).toNat + A012814 n

end

end A150441.P13402876492934834373

/-!
# A150442: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150442, there is no canonical definition to state claims against.
-/

/-! ## A150442.P15351954382573416156

`record[A187188(A288433(n))]`
-/

namespace A150442.P15351954382573416156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A288433 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150442.P15351954382573416156

/-! ## A150442.P14856707740928171515

`A059995(xor(10, A206450(n+1)))`
-/

namespace A150442.P14856707740928171515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.xor 10 (A206450 (n + 1))).toNat

end

end A150442.P14856707740928171515

/-!
# A150443: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150443, there is no canonical definition to state claims against.
-/

/-! ## A150443.P3355137169575088159

`A214701(A150448(n))`
-/

namespace A150443.P3355137169575088159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150448 n).toNat

end

end A150443.P3355137169575088159

/-! ## A150443.P8867898055853073471

`A246716(A325781(round(exp(n-1))+1))`
-/

namespace A150443.P8867898055853073471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (A325781 (SequenceMachineLib.roundAway (Real.exp ((n : ℤ) - 1 : ℝ)) + 1).toNat).toNat

end

end A150443.P8867898055853073471

/-!
# A150444: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150444, there is no canonical definition to state claims against.
-/

/-! ## A150444.P12073238409508779019

`∑[A038569(∏[A089253(n+1)])]`
-/

namespace A150444.P12073238409508779019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150444.P12073238409508779019

/-! ## A150444.P4295130612478253346

`A318921(A182962(n))+A006318(n)`
-/

namespace A150444.P4295130612478253346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A182962 n).toNat + A006318 n

end

end A150444.P4295130612478253346

/-!
# A150445: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150445, there is no canonical definition to state claims against.
-/

/-! ## A150445.P17539568043014816258

`A214701(A150450(n))`
-/

namespace A150445.P17539568043014816258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150450 n).toNat

end

end A150445.P17539568043014816258

/-! ## A150445.P5090396199097324844

`A110658(or(8, A171478(n)))`
-/

namespace A150445.P5090396199097324844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (Int.lor 8 (A171478 n)).toNat

end

end A150445.P5090396199097324844

/-!
# A150446: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150446, there is no canonical definition to state claims against.
-/

/-! ## A150446.P27731569323512093

`A247911(or(n, A095939(n)))`
-/

namespace A150446.P27731569323512093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (Int.lor (n : ℤ) (A095939 n)).toNat

end

end A150446.P27731569323512093

/-! ## A150446.P7267374433193284561

`A214701(A150450(n)+char[5])`
-/

namespace A150446.P7267374433193284561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150450 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A150446.P7267374433193284561

/-!
# A150447: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150447, there is no canonical definition to state claims against.
-/

/-! ## A150447.P8604199196752898218

`A051261(3*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A150447.P8604199196752898218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A051261 (3 * a (n - 1) - (a (n - 1) - a (n - 2))).toNat

end

end A150447.P8604199196752898218

/-! ## A150447.P10303816407763701174

`A214701(A150451(n))`
-/

namespace A150447.P10303816407763701174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150451 n).toNat

end

end A150447.P10303816407763701174

/-!
# A150448: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150448, there is no canonical definition to state claims against.
-/

/-! ## A150448.P10137953695201690206

`A256492(n)^C(n, 5)!`
-/

namespace A150448.P10137953695201690206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256492 n ^ Nat.factorial (Nat.choose n 5)

end

end A150448.P10137953695201690206

/-! ## A150448.P315057012719970710

`filter[A256492(n), A048820(#)]`
-/

namespace A150448.P315057012719970710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A048820 (f1 j).toNat = 1) n)

end

end A150448.P315057012719970710

/-!
# A150449: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150449, there is no canonical definition to state claims against.
-/

/-! ## A150449.P14403943652404499128

`∏{p}[A150538(n)², #]-A230244(∏{e}[n+1, #])`
-/

namespace A150449.P14403943652404499128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150538 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A230244 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A150449.P14403943652404499128

/-! ## A150449.P7377862452127195658

`∏{p}[A150538(n)², #]-A230266(∏{e}[n+1, #])`
-/

namespace A150449.P7377862452127195658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150538 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A230266 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A150449.P7377862452127195658

/-!
# A150450: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150450, there is no canonical definition to state claims against.
-/

/-! ## A150450.P15282607124301203686

`∑[∏{p}[A149746(n)², #]]`
-/

namespace A150450.P15282607124301203686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149746 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150450.P15282607124301203686

/-! ## A150450.P2362808326653833966

`∑[∏{p}[A149747(n)², #]]`
-/

namespace A150450.P2362808326653833966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149747 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150450.P2362808326653833966

/-!
# A150451: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150451, there is no canonical definition to state claims against.
-/

/-! ## A150451.P8378761240856027570

`A161336(A018004(n))`
-/

namespace A150451.P8378761240856027570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161336 (A018004 n).toNat

end

end A150451.P8378761240856027570

/-! ## A150451.P13758823484789069958

`A161336(∑[A027246(n)])`
-/

namespace A150451.P13758823484789069958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150451.P13758823484789069958

/-!
# A150452: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150452, there is no canonical definition to state claims against.
-/

/-! ## A150452.P12063933842671982302

`A215038(n)+A008687(A006058(n))`
-/

namespace A150452.P12063933842671982302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215038 n + A008687 (A006058 n).toNat

end

end A150452.P12063933842671982302

/-! ## A150452.P18426218475123922767

`A112543(A270294(n))+A109765(n)`
-/

namespace A150452.P18426218475123922767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (A270294 n).toNat + A109765 n

end

end A150452.P18426218475123922767

/-!
# A150453: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150453, there is no canonical definition to state claims against.
-/

/-! ## A150453.P3991580862611402868

`A008615(A050168(2*(n+1))+A026375(n))`
-/

namespace A150453.P3991580862611402868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A050168 (2 * (n + 1)) + A026375 n).toNat

end

end A150453.P3991580862611402868

/-! ## A150453.P8587403504616332165

`A008615(A050168(2*(n+1))+∑[A085362(n)])`
-/

namespace A150453.P8587403504616332165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A050168 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150453.P8587403504616332165

/-! ## A150453.P3843269575137452363

`A008615(A163841(∑[n])+A050168(2*(n+1)))`
-/

namespace A150453.P3843269575137452363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A163841 (∑ j ∈ Finset.range (n + 1), f1 j) + A050168 (2 * (n + 1))).toNat

end

end A150453.P3843269575137452363

/-!
# A150454: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150454, there is no canonical definition to state claims against.
-/

/-! ## A150454.P10227581205037220220

`A039708(A095939(n))`
-/

namespace A150454.P10227581205037220220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A095939 n).toNat

end

end A150454.P10227581205037220220

/-! ## A150454.P4884069862538485441

`A138311(∑[A149713(n)])`
-/

namespace A150454.P4884069862538485441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150454.P4884069862538485441

/-!
# A150455: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A150455, there is no canonical definition to state claims against.
-/

/-! ## A150455.P2800117420038036283

`A000027(A150456(n))`
-/

namespace A150455.P2800117420038036283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A150456 n).toNat

end

end A150455.P2800117420038036283

/-! ## A150455.P17838293623036447360

`A150456(A002998(n))`
-/

namespace A150455.P17838293623036447360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150456 (A002998 n).toNat

end

end A150455.P17838293623036447360

/-! ## A150455.P16087770453077252638

`A150456(A039723(n))`
-/

namespace A150455.P16087770453077252638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150456 (A039723 n).toNat

end

end A150455.P16087770453077252638

/-! ## A150455.P863927903556299030

`A150456(A046469(n))`
-/

namespace A150455.P863927903556299030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150456 (A046469 n).toNat

end

end A150455.P863927903556299030

/-! ## A150455.P3205682384250548899

`A150456(A051022(n))`
-/

namespace A150455.P3205682384250548899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150456 (A051022 n).toNat

end

end A150455.P3205682384250548899

/-!
# A150457: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150457, there is no canonical definition to state claims against.
-/

/-! ## A150457.P8858070489698546699

`A194208(A197189(n)+3)`
-/

namespace A150457.P8858070489698546699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194208 (A197189 n + 3).toNat

end

end A150457.P8858070489698546699

/-! ## A150457.P3584547547181922542

`A093848(record[A127568(n)])`
-/

namespace A150457.P3584547547181922542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A150457.P3584547547181922542

/-!
# A150458: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150458, there is no canonical definition to state claims against.
-/

/-! ## A150458.P7426151695441577773

`A060384(A111569(3*(n+1))+A020487(n+1))`
-/

namespace A150458.P7426151695441577773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A111569 (3 * (n + 1)) + A020487 (n + 1)).toNat

end

end A150458.P7426151695441577773

/-! ## A150458.P5786896860515589021

`A214701(A150464(n))`
-/

namespace A150458.P5786896860515589021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150464 n).toNat

end

end A150458.P5786896860515589021

/-!
# A150459: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150459, there is no canonical definition to state claims against.
-/

/-! ## A150459.P2405272340534084667

`ceil(A264292(2*(n+2))/9)`
-/

namespace A150459.P2405272340534084667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A264292 (2 * (n + 2)) : ℚ) / 9⌉

end

end A150459.P2405272340534084667

/-! ## A150459.P12852247877485838186

`A210357(A149039(n+1))`
-/

namespace A150459.P12852247877485838186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A149039 (n + 1)).toNat

end

end A150459.P12852247877485838186

/-!
# A150460: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150460, there is no canonical definition to state claims against.
-/

/-! ## A150460.P2946975362565241723

`A244988(A122450(n)+(n+1)/∏{p}[n+1, #])`
-/

namespace A150460.P2946975362565241723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (SequenceMachineLib.roundAway ((A122450 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A150460.P2946975362565241723

/-! ## A150460.P10497995510887485320

`A026741(A316475(n+1)+A122450(n))`
-/

namespace A150460.P10497995510887485320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A316475 (n + 1) + A122450 n).toNat

end

end A150460.P10497995510887485320

/-!
# A150461: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150461, there is no canonical definition to state claims against.
-/

/-! ## A150461.P9509172239346355991

`A065033(A150472(n)+A150454(n))`
-/

namespace A150461.P9509172239346355991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150472 n + A150454 n).toNat

end

end A150461.P9509172239346355991

/-! ## A150461.P8791116908318570195

`A192543(A026560(n+2)+A007961(n+1))`
-/

namespace A150461.P8791116908318570195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A026560 (n + 2) + A007961 (n + 1)).toNat

end

end A150461.P8791116908318570195

/-!
# A150462: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150462, there is no canonical definition to state claims against.
-/

/-! ## A150462.P8882415346912436776

`A214701(A150468(n))`
-/

namespace A150462.P8882415346912436776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150468 n).toNat

end

end A150462.P8882415346912436776

/-!
# A150463: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A150463, there is no canonical definition to state claims against.
-/

/-! ## A150463.P13387748054919052539

`A068962(A008330(2*n+1)+A000045(3*n+1))`
-/

namespace A150463.P13387748054919052539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A008330 (2 * n + 1) + A000045 (3 * n + 1)).toNat

end

end A150463.P13387748054919052539

/-! ## A150463.P11505461787840493667

`A138311(A150429(n))`
-/

namespace A150463.P11505461787840493667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A150429 n).toNat

end

end A150463.P11505461787840493667

/-!
# A150464: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150464, there is no canonical definition to state claims against.
-/

/-! ## A150464.P12386811017057430130

`A008619(A336257(n)+A099919(n))`
-/

namespace A150464.P12386811017057430130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A336257 n + A099919 n).toNat

end

end A150464.P12386811017057430130

/-! ## A150464.P5729659419425859876

`round(sqrt(A000027((n+1)^n*∑[n+1])))`
-/

namespace A150464.P5729659419425859876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000027 ((n + 1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)) : ℝ))

end

end A150464.P5729659419425859876

/-!
# A150465: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, 0)}.

The programs for A150465, there is no canonical definition to state claims against.
-/

/-! ## A150465.P12196985636951253761

`A194403(A060900(n))`
-/

namespace A150465.P12196985636951253761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194403 (A060900 n).toNat

end

end A150465.P12196985636951253761

/-! ## A150465.P17833606831228680474

`A257212(A045503(n))+A002450(n)`
-/

namespace A150465.P17833606831228680474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A045503 n).toNat + A002450 n

end

end A150465.P17833606831228680474

/-!
# A150466: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150466, there is no canonical definition to state claims against.
-/

/-! ## A150466.P2297615725013405679

`A150467(A001096(n))`
-/

namespace A150466.P2297615725013405679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150467 (A001096 n).toNat

end

end A150466.P2297615725013405679

/-! ## A150466.P7364641504775111826

`∑[A162226(A099489(n))]`
-/

namespace A150466.P7364641504775111826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A099489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150466.P7364641504775111826

/-!
# A150467: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150467, there is no canonical definition to state claims against.
-/

/-! ## A150467.P277129755812722414

`A004001(A051767(2*(n+2))+A026671(n))`
-/

namespace A150467.P277129755812722414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A051767 (2 * (n + 2)) + A026671 n).toNat

end

end A150467.P277129755812722414

/-!
# A150468: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150468, there is no canonical definition to state claims against.
-/

/-! ## A150468.P310741253373628318

`A028310(A150469(n)-A280313(n+1))`
-/

namespace A150468.P310741253373628318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150469 n - A280313 (n + 1)).toNat

end

end A150468.P310741253373628318

/-! ## A150468.P13507854386969207236

`A194920(A150240(n+1))`
-/

namespace A150468.P13507854386969207236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A150240 (n + 1)).toNat

end

end A150468.P13507854386969207236

/-! ## A150468.P1139261077933158422

`A194920(A150241(n+1))`
-/

namespace A150468.P1139261077933158422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A150241 (n + 1)).toNat

end

end A150468.P1139261077933158422

/-!
# A150469: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150469, there is no canonical definition to state claims against.
-/

/-! ## A150469.P15017899234689334230

`A028310(A280313(n+1)+A150468(n))`
-/

namespace A150469.P15017899234689334230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A280313 (n + 1) + A150468 n).toNat

end

end A150469.P15017899234689334230

/-! ## A150469.P2546415295569588622

`A159481(2*A150468(n))`
-/

namespace A150469.P2546415295569588622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (2 * A150468 n).toNat

end

end A150469.P2546415295569588622

/-! ## A150469.P7375274152838158955

`or(A001221(A198860(n)), A150468(n))`
-/

namespace A150469.P7375274152838158955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A198860 n).toNat) (A150468 n)

end

end A150469.P7375274152838158955

/-!
# A150470: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150470, there is no canonical definition to state claims against.
-/

/-! ## A150470.P10542420411724977773

`A128725(n)+A025480(A006139(n))`
-/

namespace A150470.P10542420411724977773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128725 n + A025480 (A006139 n).toNat

end

end A150470.P10542420411724977773

/-! ## A150470.P15802680191983568400

`A001281(A150476(n)+A150463(n))`
-/

namespace A150470.P15802680191983568400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150476 n + A150463 n).toNat

end

end A150470.P15802680191983568400

/-! ## A150470.P10637528863575408667

`A001281(A150477(n)+A150463(n))`
-/

namespace A150470.P10637528863575408667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A150477 n + A150463 n).toNat

end

end A150470.P10637528863575408667

/-!
# A150471: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, -1), (0, 0, 1), (1, 1, 0)}.

The programs for A150471, there is no canonical definition to state claims against.
-/

/-! ## A150471.P4898385284907099216

`A279002(n+3)-A255062(A116601(n))`
-/

namespace A150471.P4898385284907099216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279002 (n + 3) - A255062 (A116601 n).toNat

end

end A150471.P4898385284907099216

/-! ## A150471.P10535504428522783492

`A110654(A150770(n)+A000984(n))`
-/

namespace A150471.P10535504428522783492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150770 n + A000984 n).toNat

end

end A150471.P10535504428522783492

/-! ## A150471.P15056979484351756687

`A004525(A150481(n)+A150474(n))`
-/

namespace A150471.P15056979484351756687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150481 n + A150474 n).toNat

end

end A150471.P15056979484351756687

/-!
# A150472: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A150472, there is no canonical definition to state claims against.
-/

/-! ## A150472.P15078181274851618447

`A340763(A150647(n))+A073075(n)`
-/

namespace A150472.P15078181274851618447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (A150647 n).toNat + A073075 n

end

end A150472.P15078181274851618447

/-! ## A150472.P18362685792864008888

`A111852(A195463(n))`
-/

namespace A150472.P18362685792864008888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A195463 n).toNat

end

end A150472.P18362685792864008888

/-!
# A150473: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A150473, there is no canonical definition to state claims against.
-/

/-! ## A150473.P3709669674036946031

`A194237(A262441(n+1))`
-/

namespace A150473.P3709669674036946031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194237 (A262441 (n + 1)).toNat

end

end A150473.P3709669674036946031

/-! ## A150473.P8139524513594528873

`A004525(A150474(n)+A150468(n))`
-/

namespace A150473.P8139524513594528873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150474 n + A150468 n).toNat

end

end A150473.P8139524513594528873

/-! ## A150473.P680464584683490974

`A119620(n)+A060143(A151067(n))`
-/

namespace A150473.P680464584683490974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 n + A060143 (A151067 n).toNat

end

end A150473.P680464584683490974

/-!
# A150474: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150474, there is no canonical definition to state claims against.
-/

/-! ## A150474.P12288688750298579494

`A347249(A363773(n))+A194237(A262441(n+1))`
-/

namespace A150474.P12288688750298579494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347249 (A363773 n).toNat + A194237 (A262441 (n + 1)).toNat

end

end A150474.P12288688750298579494

/-! ## A150474.P76554989639295776

`A333183(n+1)-(n+1-A001281(A150477(n)+A150463(n)))`
-/

namespace A150474.P76554989639295776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333183 (n + 1) - ((n + 1 : ℤ) - A001281 (A150477 n + A150463 n).toNat)

end

end A150474.P76554989639295776

/-!
# A150475: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A150475, there is no canonical definition to state claims against.
-/

/-! ## A150475.P3625176411940908947

`A004526(A150485(n)+A150470(n))`
-/

namespace A150475.P3625176411940908947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150485 n + A150470 n).toNat

end

end A150475.P3625176411940908947

/-! ## A150475.P13270339568700576824

`A004525(A150485(n)+A150473(n))`
-/

namespace A150475.P13270339568700576824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150485 n + A150473 n).toNat

end

end A150475.P13270339568700576824

/-! ## A150475.P7964684553664973424

`A004526(A150485(n)+A150473(n))`
-/

namespace A150475.P7964684553664973424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150485 n + A150473 n).toNat

end

end A150475.P7964684553664973424

/-!
# A150476: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A150476, there is no canonical definition to state claims against.
-/

/-! ## A150476.P3807423356468722538

`∏{e}[7^n, A150477(#)]`
-/

namespace A150476.P3807423356468722538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A150477 (Nat.factorization (f1 n) p)

end

end A150476.P3807423356468722538

/-! ## A150476.P1761963972200485539

`A150477(n)%p?[2^n-3]`
-/

namespace A150476.P1761963972200485539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150477 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150476.P1761963972200485539

/-! ## A150476.P16267599949363429850

`A004151(A150477(n))`
-/

namespace A150476.P16267599949363429850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150477 n).toNat

end

end A150476.P16267599949363429850

/-! ## A150476.P17324954198235695438

`A150477(A073789(n))`
-/

namespace A150476.P17324954198235695438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150477 (A073789 n).toNat

end

end A150476.P17324954198235695438

/-!
# A150478: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150478, there is no canonical definition to state claims against.
-/

/-! ## A150478.P3056687116739257203

`A083382(A022086(3*(n+1))-1)`
-/

namespace A150478.P3056687116739257203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A022086 (3 * (n + 1)) - 1).toNat

end

end A150478.P3056687116739257203

/-! ## A150478.P18412497253501606944

`A150459(n)+A124762(A000110(n))`
-/

namespace A150478.P18412497253501606944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150459 n + A124762 (A000110 n).toNat

end

end A150478.P18412497253501606944

/-!
# A150479: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150479, there is no canonical definition to state claims against.
-/

/-! ## A150479.P14820520894733052183

`A132270(floor(e*4^n)+2)+1`
-/

namespace A150479.P14820520894733052183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (⌊Real.exp 1 * (4 ^ n : ℝ)⌋ + 2).toNat + 1

end

end A150479.P14820520894733052183

/-! ## A150479.P429112633251714785

`A150480(A001096(n))`
-/

namespace A150479.P429112633251714785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150480 (A001096 n).toNat

end

end A150479.P429112633251714785

/-!
# A150481: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150481, there is no canonical definition to state claims against.
-/

/-! ## A150481.P17063078848178629941

`A004526(A150492(n)+A150479(n))`
-/

namespace A150481.P17063078848178629941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150492 n + A150479 n).toNat

end

end A150481.P17063078848178629941

/-! ## A150481.P14740962729659250187

`or(A080791(A000272(n)), A150479(n))`
-/

namespace A150481.P14740962729659250187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A000272 n).toNat) (A150479 n)

end

end A150481.P14740962729659250187

/-! ## A150481.P12896699908177728762

`A150479(n)+A025458(A150200(n+1))`
-/

namespace A150481.P12896699908177728762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150479 n + A025458 (A150200 (n + 1)).toNat

end

end A150481.P12896699908177728762

/-!
# A150482: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A150482, there is no canonical definition to state claims against.
-/

/-! ## A150482.P6702327171024614140

`A004526(A150495(n)+A150481(n))`
-/

namespace A150482.P6702327171024614140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150495 n + A150481 n).toNat

end

end A150482.P6702327171024614140

/-! ## A150482.P12159437300821815933

`A150493(n)-A125005(A301061(n))`
-/

namespace A150482.P12159437300821815933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150493 n - A125005 (A301061 n).toNat

end

end A150482.P12159437300821815933

/-! ## A150482.P16253318419440959334

`A150494(n)-A058275(A153687(n+1))`
-/

namespace A150482.P16253318419440959334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150494 n - A058275 (A153687 (n + 1)).toNat

end

end A150482.P16253318419440959334

/-!
# A150483: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150483, there is no canonical definition to state claims against.
-/

/-! ## A150483.P9996058038859169089

`A341311(A356111(n)+A081294(n))`
-/

namespace A150483.P9996058038859169089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 (A356111 n + A081294 n).toNat

end

end A150483.P9996058038859169089

/-! ## A150483.P12706861131790917543

`A150485(n)-A045872(A098051(n))`
-/

namespace A150483.P12706861131790917543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150485 n - A045872 ((A098051 n).toNat + 10)

end

end A150483.P12706861131790917543

/-! ## A150483.P14042679188732809156

`A150485(n)-A045872(A006549(n+1))`
-/

namespace A150483.P14042679188732809156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150485 n - A045872 ((A006549 (n + 1)).toNat + 10)

end

end A150483.P14042679188732809156

/-!
# A150484: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150484, there is no canonical definition to state claims against.
-/

/-! ## A150484.P5086188748373581732

`A004525(A110679(n))+record[A265546(n)]`
-/

namespace A150484.P5086188748373581732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A110679 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150484.P5086188748373581732

/-! ## A150484.P16362136312481501362

`∑[A248180(A241655(n)+A000045(3*n))]`
-/

namespace A150484.P16362136312481501362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A241655 n + A000045 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150484.P16362136312481501362

/-! ## A150484.P11409553860819407086

`A008621(A000292(n)+A000045(3*n+2))`
-/

namespace A150484.P11409553860819407086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000292 n + A000045 (3 * n + 2)).toNat

end

end A150484.P11409553860819407086

/-!
# A150485: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150485, there is no canonical definition to state claims against.
-/

/-! ## A150485.P14762403848901744241

`A150483(n)+A045872(A098051(n))`
-/

namespace A150485.P14762403848901744241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150483 n + A045872 ((A098051 n).toNat + 10)

end

end A150485.P14762403848901744241

/-! ## A150485.P17871785561460216079

`A004526(A150498(n)+A150486(n))`
-/

namespace A150485.P17871785561460216079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150498 n + A150486 n).toNat

end

end A150485.P17871785561460216079

/-! ## A150485.P10486527922567804312

`A150487(n)-A108611(A090338(n))`
-/

namespace A150485.P10486527922567804312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150487 n - A108611 (A090338 n).toNat

end

end A150485.P10486527922567804312

/-!
# A150486: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150486, there is no canonical definition to state claims against.
-/

/-! ## A150486.P8722990967232657533

`A148813(n)+A002264(A007854(n))`
-/

namespace A150486.P8722990967232657533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148813 n + A002264 (A007854 n).toNat

end

end A150486.P8722990967232657533

/-! ## A150486.P13796356404176421411

`A004526(A150497(n)+A150491(n))`
-/

namespace A150486.P13796356404176421411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150497 n + A150491 n).toNat

end

end A150486.P13796356404176421411

/-!
# A150487: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150487, there is no canonical definition to state claims against.
-/

/-! ## A150487.P15784901734994778767

`A004526(A151095(n)+A039671(n))`
-/

namespace A150487.P15784901734994778767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151095 n + A039671 n).toNat

end

end A150487.P15784901734994778767

/-! ## A150487.P14647061897182624278

`A110654(A150488(n)+A150486(n))`
-/

namespace A150487.P14647061897182624278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150488 n + A150486 n).toNat

end

end A150487.P14647061897182624278

/-! ## A150487.P15934088372117830204

`A150489(n)-A083894(A007204(n))`
-/

namespace A150487.P15934088372117830204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150489 n - A083894 (A007204 n).toNat

end

end A150487.P15934088372117830204

/-!
# A150488: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150488, there is no canonical definition to state claims against.
-/

/-! ## A150488.P9094371510342172947

`A004525(A197553(n+1)+A150496(n))`
-/

namespace A150488.P9094371510342172947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A197553 (n + 1) + A150496 n).toNat

end

end A150488.P9094371510342172947

/-! ## A150488.P15374771743703863594

`or(A150486(n), A285728(A007178(n+1)))`
-/

namespace A150488.P15374771743703863594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150486 n) (A285728 (A007178 (n + 1)).toNat)

end

end A150488.P15374771743703863594

/-! ## A150488.P14522541722273343763

`xor(A124663(A032104(n+1)), A150487(n))`
-/

namespace A150488.P14522541722273343763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124663 (A032104 (n + 1)).toNat) (A150487 n)

end

end A150488.P14522541722273343763

/-!
# A150489: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A150489, there is no canonical definition to state claims against.
-/

/-! ## A150489.P4842404351991998547

`A276796(2*A150287(n))`
-/

namespace A150489.P4842404351991998547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (2 * A150287 n).toNat

end

end A150489.P4842404351991998547

/-! ## A150489.P12459612108726985079

`A065033(A122393(n)+A000142(n))`
-/

namespace A150489.P12459612108726985079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A122393 n + A000142 n).toNat

end

end A150489.P12459612108726985079

/-! ## A150489.P13354851096291973513

`A150487(n)+A083894(A007204(n))`
-/

namespace A150489.P13354851096291973513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150487 n + A083894 (A007204 n).toNat

end

end A150489.P13354851096291973513

/-!
# A150490: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150490, there is no canonical definition to state claims against.
-/

/-! ## A150490.P5033600195766290266

`A150489(n)+A108611(A005437(n))`
-/

namespace A150490.P5033600195766290266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150489 n + A108611 (A005437 n).toNat

end

end A150490.P5033600195766290266

/-! ## A150490.P11971716075047700648

`A276796(2*A150287(n))+A108611(A005437(n))`
-/

namespace A150490.P11971716075047700648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (2 * A150287 n).toNat + A108611 (A005437 n).toNat

end

end A150490.P11971716075047700648

/-!
# A150491: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A150491, there is no canonical definition to state claims against.
-/

/-! ## A150491.P6724254470942474673

`A004526(A152802(n))+A000108(n)`
-/

namespace A150491.P6724254470942474673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152802 n).toNat + A000108 n

end

end A150491.P6724254470942474673

/-! ## A150491.P12613796582609766844

`A220658(5^n-floor(5^n/4))`
-/

namespace A150491.P12613796582609766844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 ((5 ^ n : ℤ) - ⌊(5 ^ n : ℚ) / 4⌋).toNat

end

end A150491.P12613796582609766844

/-!
# A150492: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150492, there is no canonical definition to state claims against.
-/

/-! ## A150492.P5221400947660830703

`∑[∑[A260734((n-1)*floor(3^(n-1))+1)]]-n`
-/

namespace A150492.P5221400947660830703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (((n : ℤ) - 1) * ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A150492.P5221400947660830703

/-! ## A150492.P4305693340574540734

`A150493(A001096(n))`
-/

namespace A150492.P4305693340574540734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150493 (A001096 n).toNat

end

end A150492.P4305693340574540734

/-!
# A150493: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150493, there is no canonical definition to state claims against.
-/

/-! ## A150493.P12993657411699502605

`A150482(n)+A125005(A301061(n))`
-/

namespace A150493.P12993657411699502605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150482 n + A125005 (A301061 n).toNat

end

end A150493.P12993657411699502605

/-!
# A150494: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150494, there is no canonical definition to state claims against.
-/

/-! ## A150494.P1416178344384905985

`A150482(n)+A058275(A153687(n+1))`
-/

namespace A150494.P1416178344384905985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150482 n + A058275 (A153687 (n + 1)).toNat

end

end A150494.P1416178344384905985

/-! ## A150494.P1380134459786671429

`A058275(n+1)+A150493(n)-A125005(A301061(n))`
-/

namespace A150494.P1380134459786671429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058275 (n + 1) + (A150493 n - A125005 (A301061 n).toNat)

end

end A150494.P1380134459786671429

/-!
# A150496: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150496, there is no canonical definition to state claims against.
-/

/-! ## A150496.P3923387836125472383

`A004525(A135901(n)+A110679(n))`
-/

namespace A150496.P3923387836125472383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A135901 n + A110679 n).toNat

end

end A150496.P3923387836125472383

/-! ## A150496.P8896377101871326830

`A074840(A150259(n)+A150256(n))`
-/

namespace A150496.P8896377101871326830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A150259 n + A150256 n).toNat

end

end A150496.P8896377101871326830

/-!
# A150497: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150497, there is no canonical definition to state claims against.
-/

/-! ## A150497.P11760989045730912433

`A150503(n)-A084143(A000314(n))`
-/

namespace A150497.P11760989045730912433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150503 n - A084143 (A000314 n).toNat

end

end A150497.P11760989045730912433

/-! ## A150497.P11405098286065973432

`A150503(n)-A084143(A000665(n))`
-/

namespace A150497.P11405098286065973432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150503 n - A084143 (A000665 n).toNat

end

end A150497.P11405098286065973432

/-! ## A150497.P14240002882053891344

`A150503(n)-A085983(A000302(n))`
-/

namespace A150497.P14240002882053891344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150503 n - A085983 (A000302 n).toNat

end

end A150497.P14240002882053891344

/-!
# A150498: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A150498, there is no canonical definition to state claims against.
-/

/-! ## A150498.P3687449303808571607

`A150499(n)-A241469(A089850(n+2))`
-/

namespace A150498.P3687449303808571607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150499 n - A241469 (A089850 (n + 2)).toNat

end

end A150498.P3687449303808571607

/-! ## A150498.P16302287900564086223

`A350348(A150485(n))`
-/

namespace A150498.P16302287900564086223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A150485 n).toNat

end

end A150498.P16302287900564086223

/-!
# A150499: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150499, there is no canonical definition to state claims against.
-/

/-! ## A150499.P9005495950431191149

`A150489(n)+A060952(A001710(n))`
-/

namespace A150499.P9005495950431191149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150489 n + A060952 (A001710 n).toNat

end

end A150499.P9005495950431191149

/-! ## A150499.P7419881351670944223

`A004525(A150512(n)+A150491(n))`
-/

namespace A150499.P7419881351670944223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150512 n + A150491 n).toNat

end

end A150499.P7419881351670944223

/-! ## A150499.P17550833729672661450

`A150489(n)+A083894(A122393(n))`
-/

namespace A150499.P17550833729672661450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150489 n + A083894 (A122393 n).toNat

end

end A150499.P17550833729672661450

