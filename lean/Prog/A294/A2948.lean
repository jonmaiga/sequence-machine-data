import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A294800: Number of permutations of [n] avoiding {1324, 2341, 3421}.

The programs for A294800, there is no canonical definition to state claims against.
-/

/-! ## A294800.P8195725401010479511

`A294801(n)-A025444(A076875(n))`
-/

namespace A294800.P8195725401010479511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294801 n - A025444 (A076875 n).toNat

end

end A294800.P8195725401010479511

/-! ## A294800.P16308679919203490856

`xor(A220400(A279573(n)), A294798(n))`
-/

namespace A294800.P16308679919203490856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A220400 (A279573 n).toNat) (A294798 n)

end

end A294800.P16308679919203490856

/-! ## A294800.P10765756836696363522

`or(A000089(A294707(n+2)), A294693(n))`
-/

namespace A294800.P10765756836696363522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000089 (A294707 (n + 2)).toNat) (A294693 n)

end

end A294800.P10765756836696363522

/-!
# A294801: Number of permutations of [n] avoiding {4231, 1324, 2341}.

The programs for A294801, there is no canonical definition to state claims against.
-/

/-! ## A294801.P2168048154996711718

`A294800(n)+A025444(A076875(n))`
-/

namespace A294801.P2168048154996711718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294800 n + A025444 (A076875 n).toNat

end

end A294801.P2168048154996711718

/-! ## A294801.P203101824572923698

`A294694(n)+A256974(A025274(n+1))`
-/

namespace A294801.P203101824572923698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294694 n + A256974 (A025274 (n + 1)).toNat

end

end A294801.P203101824572923698

/-! ## A294801.P14217783304219925700

`A294694(n)-A216279(A294678(2*n+1))`
-/

namespace A294801.P14217783304219925700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294694 n - A216279 (A294678 (2 * n + 1)).toNat

end

end A294801.P14217783304219925700

/-! ## A294801.P15910447638592444603

`A165521(n)-A171874(n)*A171874(A171874(n))`
-/

namespace A294801.P15910447638592444603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165521 n - A171874 n * A171874 (A171874 n).toNat

end

end A294801.P15910447638592444603

/-!
# A294802: Number of permutations of [n] avoiding {3412, 3421, 1324}.

The programs for A294802, the canonical program `A294802.P6174665993768073668` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294802 has offset 0).

The definition of A294802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294802.P6174665993768073668

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=21, a(5)=73`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294802

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P6174665993768073668.Spec : Prop :=
  ∀ n, P6174665993768073668.a n = A294802 n

theorem P6174665993768073668.correct : P6174665993768073668.Spec := by
  intro n
  simp only [A294802]

end A294802

/-! ## A294802.P9473856329624246084

`A294695(n)-A184955(2*n+1)`
-/

namespace A294802.P9473856329624246084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294695 n - A184955 (2 * n + 1)

end

end A294802.P9473856329624246084

namespace A294802

/-- `A294695(n)-A184955(2*n+1)` -/
def P9473856329624246084.Spec : Prop :=
  ∀ n, P9473856329624246084.a n = A294802 n

end A294802

/-! ## A294802.P5075096000551740304

`A294803(n)-A025444(A076875(n))`
-/

namespace A294802.P5075096000551740304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294803 n - A025444 (A076875 n).toNat

end

end A294802.P5075096000551740304

namespace A294802

/-- `A294803(n)-A025444(A076875(n))` -/
def P5075096000551740304.Spec : Prop :=
  ∀ n, P5075096000551740304.a n = A294802 n

end A294802

/-! ## A294802.P7368828012197397678

`xor(A184955(A081605(n+1)), A294695(n))`
-/

namespace A294802.P7368828012197397678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184955 (A081605 (n + 1)).toNat) (A294695 n)

end

end A294802.P7368828012197397678

namespace A294802

/-- `xor(A184955(A081605(n+1)), A294695(n))` -/
def P7368828012197397678.Spec : Prop :=
  ∀ n, P7368828012197397678.a n = A294802 n

end A294802

/-!
# A294803: Number of permutations of [n] avoiding {1324, 2413, 3421}.

The programs for A294803, there is no canonical definition to state claims against.
-/

/-! ## A294803.P10227201316274691880

`A294802(n)+A025444(A076875(n))`
-/

namespace A294803.P10227201316274691880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294802 n + A025444 (A076875 n).toNat

end

end A294803.P10227201316274691880

/-! ## A294803.P17573598741417069075

`A071842(A099947(n))+A294802(n)+A184955(2*n+1)`
-/

namespace A294803.P17573598741417069075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071842 (A099947 n).toNat + (A294802 n + A184955 (2 * n + 1))

end

end A294803.P17573598741417069075

/-! ## A294803.P15286039164738304372

`A025444(A076875(n))+A294695(n)-A184955(2*n+1)`
-/

namespace A294803.P15286039164738304372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (A076875 n).toNat + (A294695 n - A184955 (2 * n + 1))

end

end A294803.P15286039164738304372

/-!
# A294804: Number of permutations of [n] avoiding {1324, 3142, 4231}.

The programs for A294804, there is no canonical definition to state claims against.
-/

/-! ## A294804.P13617563040882437163

`A008651(12*or(1, 3^n-∑[2^n]))`
-/

namespace A294804.P13617563040882437163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (12 * Int.lor 1 ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A294804.P13617563040882437163

/-! ## A294804.P8121225934789859956

`A157271(A393344(n))`
-/

namespace A294804.P8121225934789859956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A393344 n).toNat

end

end A294804.P8121225934789859956

/-! ## A294804.P1663007687601923080

`A247911(A289614(n+1))`
-/

namespace A294804.P1663007687601923080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A289614 (n + 1)).toNat

end

end A294804.P1663007687601923080

/-!
# A294805: Number of permutations of [n] avoiding {1324, 2341, 2413}.

The programs for A294805, there is no canonical definition to state claims against.
-/

/-! ## A294805.P8743469090225414808

`A210380(A148150(n))`
-/

namespace A294805.P8743469090225414808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A148150 n).toNat

end

end A294805.P8743469090225414808

/-! ## A294805.P7258912869540224999

`A226190(2*A047022(n))`
-/

namespace A294805.P7258912869540224999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (2 * A047022 n).toNat

end

end A294805.P7258912869540224999

/-! ## A294805.P7034430112684031646

`A062778(A062569(n)+13)`
-/

namespace A294805.P7034430112684031646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062778 (A062569 n + 13).toNat

end

end A294805.P7034430112684031646

/-!
# A294806: Number of permutations of [n] avoiding {1324, 3421, 3241}.

The programs for A294806, there is no canonical definition to state claims against.
-/

/-! ## A294806.P5786539207188077269

`A294768(n)+A282947(A294819(n))`
-/

namespace A294806.P5786539207188077269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294768 n + A282947 (A294819 n).toNat

end

end A294806.P5786539207188077269

/-! ## A294806.P13010008790578078200

`A294807(n)-A016389(A006261(n))`
-/

namespace A294806.P13010008790578078200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 n - A016389 (A006261 n).toNat

end

end A294806.P13010008790578078200

/-! ## A294806.P15702211659239697250

`A294807(n)-A025458(A001349(n))`
-/

namespace A294806.P15702211659239697250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 n - A025458 (A001349 n).toNat

end

end A294806.P15702211659239697250

/-! ## A294806.P4337346062253597381

`A294807(n)-A286339(A001764(n))`
-/

namespace A294806.P4337346062253597381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 n - A286339 (A001764 n).toNat

end

end A294806.P4337346062253597381

/-!
# A294807: Number of permutations of [n] avoiding {1324, 1342, 3421}.

The programs for A294807, there is no canonical definition to state claims against.
-/

/-! ## A294807.P5622095768515439071

`A294806(n)+A016389(A006261(n))`
-/

namespace A294807.P5622095768515439071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 n + A016389 (A006261 n).toNat

end

end A294807.P5622095768515439071

/-! ## A294807.P123400815737433054

`A294806(n)+A025458(A001349(n))`
-/

namespace A294807.P123400815737433054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 n + A025458 (A001349 n).toNat

end

end A294807.P123400815737433054

/-! ## A294807.P16630730228234722614

`A294806(n)+A185238(A053307(n))`
-/

namespace A294807.P16630730228234722614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 n + A185238 (A053307 n).toNat

end

end A294807.P16630730228234722614

/-! ## A294807.P4066359766531527289

`A294806(n)+A025457(A294794(n+1))`
-/

namespace A294807.P4066359766531527289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294806 n + A025457 (A294794 (n + 1)).toNat

end

end A294807.P4066359766531527289

/-!
# A294808: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-j^(k*j)*x^j)^j in powers of x.

The programs for A294808, there is no canonical definition to state claims against.
-/

/-! ## A294808.P2061330177464890122

`A294605(n)+A011734(A156953(n))`
-/

namespace A294808.P2061330177464890122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 n + A011734 (A156953 n).toNat

end

end A294808.P2061330177464890122

/-! ## A294808.P8174302204117758584

`A294605(n)+A133010(A135722(n))`
-/

namespace A294808.P8174302204117758584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 n + A133010 (A135722 n).toNat

end

end A294808.P8174302204117758584

/-! ## A294808.P17487816062909031774

`A294605(n)+A185036(A122890(n))`
-/

namespace A294808.P17487816062909031774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 n + A185036 (A122890 n).toNat

end

end A294808.P17487816062909031774

/-! ## A294808.P11855601865563618092

`A294605(n)+A010894(A334437(n))`
-/

namespace A294808.P11855601865563618092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 n + A010894 ((A334437 n).toNat + 21)

end

end A294808.P11855601865563618092

/-! ## A294808.P13481987433123290493

`A294605(n)+A024155(A000204(n+1))`
-/

namespace A294808.P13481987433123290493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 n + A024155 (A000204 (n + 1)).toNat

end

end A294808.P13481987433123290493

/-!
# A294809: Expansion of Product_{k>=1} (1 - k^k*x^k)^k.

The programs for A294809, there is no canonical definition to state claims against.
-/

/-! ## A294809.P12108590274601705214

`A294808(∑[n+2]-1)`
-/

namespace A294809.P12108590274601705214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294809.P12108590274601705214

/-! ## A294809.P6385180936586486128

`A294808(A034856(n+1))+A011734(n)`
-/

namespace A294809.P6385180936586486128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (A034856 (n + 1)).toNat + A011734 n

end

end A294809.P6385180936586486128

/-! ## A294809.P1104464463694680007

`A294808(A034856(n+1))+A025439(n)`
-/

namespace A294809.P1104464463694680007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 (A034856 (n + 1)).toNat + A025439 n

end

end A294809.P1104464463694680007

/-! ## A294809.P10869704598237789338

`or(A000007(n), A294808(A034856(n+1)))`
-/

namespace A294809.P10869704598237789338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294808 (A034856 (n + 1)).toNat)

end

end A294809.P10869704598237789338

/-! ## A294809.P9048414810818037873

`or(A004530(n), A294808(A034856(n+1)))`
-/

namespace A294809.P9048414810818037873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004530 n) (A294808 (A034856 (n + 1)).toNat)

end

end A294809.P9048414810818037873

/-!
# A294810: a(n) = Sum_{d|n} d^(n+2).

The programs for A294810, there is no canonical definition to state claims against.
-/

/-! ## A294810.P10198163613080354722

`∑{d}[n+1, #^(n+3)]`
-/

namespace A294810.P10198163613080354722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 3)

end

end A294810.P10198163613080354722

/-! ## A294810.P2049005581913324463

`record[∑{d}[n-1, #*#^n]]`
-/

namespace A294810.P2049005581913324463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d * d ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294810.P2049005581913324463

/-! ## A294810.P5977504060510143037

`A308504(∑[n+3]+1)`
-/

namespace A294810.P5977504060510143037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294810.P5977504060510143037

/-! ## A294810.P7818413861949051061

`A109974(A161532(n)+8)`
-/

namespace A294810.P7818413861949051061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (A161532 n + 8).toNat

end

end A294810.P7818413861949051061

/-! ## A294810.P3122839176383706329

`A109974(eq[8, A304337(n+1)])`
-/

namespace A294810.P3122839176383706329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294810.P3122839176383706329

/-!
# A294812: Let b(n) be the number of permutations {c_1..c_n} of {1..n} for which c_1 - c_2 + ... + (-1)^(n-1)*c_n are pentagonal numbers (A000326). Then a(n) = b(n)/A010551(n).

The programs for A294812, there is no canonical definition to state claims against.
-/

/-! ## A294812.P5318113370543272701

`A272351(A148515(n))`
-/

namespace A294812.P5318113370543272701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (A148515 n).toNat

end

end A294812.P5318113370543272701

/-! ## A294812.P3115328292000063557

`A096594(n+1)-A001221(A169792(n))`
-/

namespace A294812.P3115328292000063557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096594 (n + 1) - A001221 (A169792 n).toNat

end

end A294812.P3115328292000063557

/-!
# A294813: Expansion of Product_{k>=1} 1/(1 - k^k*x^k)^k.

The programs for A294813, there is no canonical definition to state claims against.
-/

/-! ## A294813.P10076334787635366659

`A294950(∑[n+2]-1)`
-/

namespace A294813.P10076334787635366659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294813.P10076334787635366659

/-! ## A294813.P675725194468234592

`and(-1, A294950(A034856(n+1)))`
-/

namespace A294813.P675725194468234592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A294950 (A034856 (n + 1)).toNat)

end

end A294813.P675725194468234592

/-! ## A294813.P5988475892274179839

`A294950(A034856(n+1))+A011734(n)`
-/

namespace A294813.P5988475892274179839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A034856 (n + 1)).toNat + A011734 n

end

end A294813.P5988475892274179839

/-! ## A294813.P6282104000752435635

`A294950(A034856(n+1))+A025439(n)`
-/

namespace A294813.P6282104000752435635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A034856 (n + 1)).toNat + A025439 n

end

end A294813.P6282104000752435635

/-! ## A294813.P11609630464674936935

`A294950(A034856(n+1))+A184946(n)`
-/

namespace A294813.P11609630464674936935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 (A034856 (n + 1)).toNat + A184946 n

end

end A294813.P11609630464674936935

/-!
# A294814: Number of permutations of [n] avoiding {1324, 1342, 3412}.

The programs for A294814, there is no canonical definition to state claims against.
-/

/-! ## A294814.P12560822239340627611

`A014085(A011782(2*n))-A005185(n+1)`
-/

namespace A294814.P12560822239340627611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A011782 (2 * n)).toNat - A005185 (n + 1)

end

end A294814.P12560822239340627611

/-! ## A294814.P14503202040490913479

`A320536(A001558(n))`
-/

namespace A294814.P14503202040490913479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A001558 n).toNat

end

end A294814.P14503202040490913479

/-! ## A294814.P17450987832151739330

`A320536(A149124(n+1))`
-/

namespace A294814.P17450987832151739330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A149124 (n + 1)).toNat

end

end A294814.P17450987832151739330

/-!
# A294815: Number of permutations of [n] avoiding {2143, 4132, 1324}.

The programs for A294815, there is no canonical definition to state claims against.
-/

/-! ## A294815.P17648083524014031199

`A081293(n)-2^A004891(n+1)`
-/

namespace A294815.P17648083524014031199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081293 n : ℚ) - (2 : ℚ) ^ (A004891 (n + 1) : ℤ)

end

end A294815.P17648083524014031199

/-! ## A294815.P9448946872795527740

`A130983(A014137(n))-(2^n-1)`
-/

namespace A294815.P9448946872795527740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130983 (A014137 n).toNat - ((2 ^ n : ℤ) - 1)

end

end A294815.P9448946872795527740

/-! ## A294815.P15288619982588254232

`A081293(n)-A003963(A008776(n))`
-/

namespace A294815.P15288619982588254232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n - A003963 (A008776 n).toNat

end

end A294815.P15288619982588254232

/-! ## A294815.P14189410361338989555

`A130342(A014137(n))-A000225(n)`
-/

namespace A294815.P14189410361338989555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (A014137 n).toNat - A000225 n

end

end A294815.P14189410361338989555

/-!
# A294816: Number of permutations of [n] avoiding {1342, 2314, 4231}.

The programs for A294816, there is no canonical definition to state claims against.
-/

/-! ## A294816.P3809830260611975354

`A110656(3*A322940(n))`
-/

namespace A294816.P3809830260611975354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A322940 n).toNat

end

end A294816.P3809830260611975354

/-! ## A294816.P14403775948421403814

`A110656(lcm(3, A322940(n)))`
-/

namespace A294816.P14403775948421403814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lcm 3 (A322940 n))

end

end A294816.P14403775948421403814

/-! ## A294816.P2841112439725270723

`A106244(lt[A302528(3*n+1), 2])`
-/

namespace A294816.P2841112439725270723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302528 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A294816.P2841112439725270723

/-!
# A294817: Number of permutations of [n] avoiding {1324, 2431, 3241}.

The programs for A294817, there is no canonical definition to state claims against.
-/

/-! ## A294817.P15787346584756616055

`A294772(n)-A137579(A011782(n))`
-/

namespace A294817.P15787346584756616055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294772 n - A137579 (A011782 n).toNat

end

end A294817.P15787346584756616055

/-! ## A294817.P17968170250413479500

`A294772(n)-A285006(A008969(n+1))`
-/

namespace A294817.P17968170250413479500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294772 n - A285006 (A008969 (n + 1)).toNat

end

end A294817.P17968170250413479500

/-! ## A294817.P2596681568305590162

`A294772(n)-A006503(A172540(n+2))`
-/

namespace A294817.P2596681568305590162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294772 n - A006503 (A172540 (n + 2)).toNat

end

end A294817.P2596681568305590162

/-!
# A294818: Number of permutations of [n] avoiding {1324, 2314, 2431}.

The programs for A294818, there is no canonical definition to state claims against.
-/

/-! ## A294818.P3769728629901167344

`A294814(n)+floor(A294688(n+1)/8)`
-/

namespace A294818.P3769728629901167344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294814 n + ⌊(A294688 (n + 1) : ℚ) / 8⌋

end

end A294818.P3769728629901167344

/-! ## A294818.P2581486930536286704

`or(A294772(n), A306227(A149044(n)))`
-/

namespace A294818.P2581486930536286704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A294772 n) (A306227 (A149044 n).toNat)

end

end A294818.P2581486930536286704

/-! ## A294818.P12147921576853486911

`A033182(A020876(n+1))`
-/

namespace A294818.P12147921576853486911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A020876 (n + 1)).toNat

end

end A294818.P12147921576853486911

/-!
# A294819: Number of permutations of [n] avoiding {1324, 2431, 3142}.

The programs for A294819, there is no canonical definition to state claims against.
-/

/-! ## A294819.P4461178665960048077

`A294820(A024645(n))`
-/

namespace A294819.P4461178665960048077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294820 (A024645 n).toNat

end

end A294819.P4461178665960048077

/-! ## A294819.P2287645832526754682

`A294820(A024646(n))`
-/

namespace A294819.P2287645832526754682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294820 (A024646 n).toNat

end

end A294819.P2287645832526754682

/-! ## A294819.P15476646789660159783

`A294820(A024647(n))`
-/

namespace A294819.P15476646789660159783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294820 (A024647 n).toNat

end

end A294819.P15476646789660159783

/-! ## A294819.P12939852567223254041

`A294820(A024648(n))`
-/

namespace A294819.P12939852567223254041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294820 (A024648 n).toNat

end

end A294819.P12939852567223254041

/-!
# A294821: Irregular triangle read by rows: T(n,k) = 1 if k is the largest divisor of n <= sqrt(n), otherwise T(n,k) = 0. With n >= 1, and 1 <= k <= A000196(n).

The programs for A294821, there is no canonical definition to state claims against.
-/

/-! ## A294821.P15380026099355520470

`A057427(A294721(n+1))`
-/

namespace A294821.P15380026099355520470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A294721 (n + 1)).toNat

end

end A294821.P15380026099355520470

/-! ## A294821.P4713307684071918782

`A002828(A294721(n+1)²)`
-/

namespace A294821.P4713307684071918782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P4713307684071918782

/-! ## A294821.P18385963335908424173

`A011602(A294721(n+1)²)`
-/

namespace A294821.P18385963335908424173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011602 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P18385963335908424173

/-! ## A294821.P12545460332945732924

`A067694(A294721(n+1)²)`
-/

namespace A294821.P12545460332945732924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P12545460332945732924

/-! ## A294821.P17464250433162467427

`A089309(A294721(n+1)²)`
-/

namespace A294821.P17464250433162467427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P17464250433162467427

/-! ## A294821.P8934095898793093397

`A102426(A294721(n+1)²)`
-/

namespace A294821.P8934095898793093397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102426 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P8934095898793093397

/-! ## A294821.P7389654164311118304

`A190321(A294721(n+1)²)`
-/

namespace A294821.P7389654164311118304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190321 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P7389654164311118304

/-! ## A294821.P1762096809808961817

`A019425(2*A294721(n+1))`
-/

namespace A294821.P1762096809808961817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * A294721 (n + 1)).toNat

end

end A294821.P1762096809808961817

/-! ## A294821.P7521869807256012912

`A019427(2*A294721(n+1))`
-/

namespace A294821.P7521869807256012912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (2 * A294721 (n + 1)).toNat

end

end A294821.P7521869807256012912

/-! ## A294821.P7616732159525246383

`A178334(2*A294721(n+1))`
-/

namespace A294821.P7616732159525246383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * A294721 (n + 1)).toNat

end

end A294821.P7616732159525246383

/-! ## A294821.P3428197997052071287

`1-A000007(A294721(n+1)²)`
-/

namespace A294821.P3428197997052071287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A294721 (n + 1) ^ 2).toNat

end

end A294821.P3428197997052071287

/-! ## A294821.P13078672146244754725

`A000122(A294721(n+1)²)-1`
-/

namespace A294821.P13078672146244754725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A294721 (n + 1) ^ 2).toNat - 1

end

end A294821.P13078672146244754725

/-! ## A294821.P6860096633402015790

`A000040(A294721(n+1)+1)%2`
-/

namespace A294821.P6860096633402015790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A294721 (n + 1) + 1).toNat) 2

end

end A294821.P6860096633402015790

/-! ## A294821.P9097392137788532981

`ceil(sin(A007318(n)*A294721(n+1))²)`
-/

namespace A294821.P9097392137788532981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A007318 n * A294721 (n + 1) : ℝ) ^ 2⌉

end

end A294821.P9097392137788532981

/-! ## A294821.P14462179783859313658

`and(1, A000040(2*A294721(n+1)+1))`
-/

namespace A294821.P14462179783859313658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (2 * A294721 (n + 1) + 1).toNat)

end

end A294821.P14462179783859313658

/-! ## A294821.P16908542900308654253

`A008683(2*(A294721(n+1)+1)²)+1`
-/

namespace A294821.P16908542900308654253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (A294721 (n + 1) + 1) ^ 2).toNat + 1

end

end A294821.P16908542900308654253

/-! ## A294821.P13724367197914104462

`round(A001221(2*A294721(n+1)+1)/2)`
-/

namespace A294821.P13724367197914104462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001221 (2 * A294721 (n + 1) + 1).toNat : ℚ) / 2)

end

end A294821.P13724367197914104462

/-! ## A294821.P12780421764233076097

`ceil(sin(A000005(n+1)*A294721(n+1))²)`
-/

namespace A294821.P12780421764233076097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A000005 (n + 1) * A294721 (n + 1) : ℝ) ^ 2⌉

end

end A294821.P12780421764233076097

/-! ## A294821.P1964501887889983892

`A001221(A001316(A294721(n+1)²))`
-/

namespace A294821.P1964501887889983892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 (A294721 (n + 1) ^ 2).toNat).toNat

end

end A294821.P1964501887889983892

/-!
# A294822: Number of permutations of [n] avoiding {1243, 1324, 2431}.

The programs for A294822, there is no canonical definition to state claims against.
-/

/-! ## A294822.P2442634541054049753

`A319337(∏[ceil(2^(n-1))])-char[6]`
-/

namespace A294822.P2442634541054049753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319337 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294822.P2442634541054049753

/-! ## A294822.P17041811659292304746

`A247983(A148796(n))`
-/

namespace A294822.P17041811659292304746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A148796 n).toNat

end

end A294822.P17041811659292304746

/-! ## A294822.P5268346117550904233

`A226233(A217779(n))`
-/

namespace A294822.P5268346117550904233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A217779 n).toNat

end

end A294822.P5268346117550904233

/-!
# A294823: Number of permutations of [n] avoiding {1234, 1324, 2341}.

The programs for A294823, there is no canonical definition to state claims against.
-/

/-! ## A294823.P12274630922848578301

`A337635(n*A294159(n))`
-/

namespace A294823.P12274630922848578301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 ((n : ℤ) * A294159 n).toNat

end

end A294823.P12274630922848578301

/-! ## A294823.P8012292766703349869

`A053022(n+2)-A055930(A056272(n))`
-/

namespace A294823.P8012292766703349869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053022 (n + 2) - A055930 (A056272 n).toNat

end

end A294823.P8012292766703349869

/-! ## A294823.P2020826072365039706

`A319337(2^C(n, 2))`
-/

namespace A294823.P2020826072365039706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319337 (2 ^ Nat.choose n 2)

end

end A294823.P2020826072365039706

/-!
# A294824: Number of permutations of [n] avoiding {1324, 2413, 2431}.

The programs for A294824, there is no canonical definition to state claims against.
-/

/-! ## A294824.P14490691857762828344

`Δ[∑[(4-6/(n+1))*a(n-1)]-A001519(n)]` with `a(0)=1`
-/

namespace A294824.P14490691857762828344
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (A001519 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294824.P14490691857762828344

/-! ## A294824.P12389854094722503617

`A039598(∑[n])-A001906(n)`
-/

namespace A294824.P12389854094722503617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (∑ j ∈ Finset.range (n + 1), f1 j) - A001906 n

end

end A294824.P12389854094722503617

/-! ## A294824.P9009218279261771251

`A067323(∑[n])-A001906(n)`
-/

namespace A294824.P9009218279261771251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j) - A001906 n

end

end A294824.P9009218279261771251

/-! ## A294824.P6852176884140620581

`∑[A071724(n)]-A001906(n)`
-/

namespace A294824.P6852176884140620581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001906 n

end

end A294824.P6852176884140620581

/-! ## A294824.P11473767062309578501

`Δ[A014137(n)-A001519(n)]`
-/

namespace A294824.P11473767062309578501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294824.P11473767062309578501

/-!
# A294825: Number of permutations of [n] avoiding {2431, 1324, 1342}.

The programs for A294825, there is no canonical definition to state claims against.
-/

/-! ## A294825.P3226355104245550885

`A004719(A080937(n))+A000588(n)`
-/

namespace A294825.P3226355104245550885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A080937 n).toNat + A000588 n

end

end A294825.P3226355104245550885

/-! ## A294825.P8958942127107164801

`A065883(A080937(n)+A000588(n))`
-/

namespace A294825.P8958942127107164801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A080937 n + A000588 n).toNat

end

end A294825.P8958942127107164801

/-! ## A294825.P17317115466374853635

`A080937(n)+A000588(A087051(n))`
-/

namespace A294825.P17317115466374853635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n + A000588 (A087051 n).toNat

end

end A294825.P17317115466374853635

/-! ## A294825.P18406917100565157205

`A325978(A080937(n)+A000588(n))`
-/

namespace A294825.P18406917100565157205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (A080937 n + A000588 n).toNat

end

end A294825.P18406917100565157205

/-! ## A294825.P6873797443794922214

`A000588(n)+A001222(A065017(n+1))*A080937(n)`
-/

namespace A294825.P6873797443794922214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + A001222 (A065017 (n + 1)).toNat * A080937 n

end

end A294825.P6873797443794922214

/-!
# A294826: Numerators of the partial sums of the reciprocals of twice the heptagonal numbers (k + 1)*(5*k + 2) = A135706(k+1) = 2*A000566(k+1), for k >= 0.

The programs for A294826, there is no canonical definition to state claims against.
-/

/-! ## A294826.P13902496693562747528

`A247115(n+1)/A294336(A317708(n+1))`
-/

namespace A294826.P13902496693562747528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247115 (n + 1) : ℚ) / (A294336 (A317708 (n + 1)).toNat : ℚ)

end

end A294826.P13902496693562747528

/-! ## A294826.P15927733631124479787

`A247115(n+1)/A294336(A341221(n+3))`
-/

namespace A294826.P15927733631124479787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247115 (n + 1) : ℚ) / (A294336 (A341221 (n + 3)).toNat : ℚ)

end

end A294826.P15927733631124479787

/-! ## A294826.P7048997846860804526

`A247115(n+1)/A066099(A325556(2*n+1))`
-/

namespace A294826.P7048997846860804526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247115 (n + 1) : ℚ) / (A066099 (A325556 (2 * n + 1)).toNat : ℚ)

end

end A294826.P7048997846860804526

/-! ## A294826.P12861673919130110721

`A247115(n+1)/A296774(A107635(n))`
-/

namespace A294826.P12861673919130110721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247115 (n + 1) : ℚ) / (A296774 (A107635 n).toNat : ℚ)

end

end A294826.P12861673919130110721

/-! ## A294826.P13557327861747537290

`A247115(n+1)/A288120(A135177(n+1))`
-/

namespace A294826.P13557327861747537290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247115 (n + 1) : ℚ) / (A288120 (A135177 (n + 1)).toNat : ℚ)

end

end A294826.P13557327861747537290

/-!
# A294835: Denominators of the partial sums of the reciprocals of the positive tetradecagonal numbers (k + 1)*(6*k + 1) = A051866(k+1), for k >= 0.

The programs for A294835, there is no canonical definition to state claims against.
-/

/-! ## A294835.P280017200771552729

`record[A284002(n)]*A008542(n+1)`
-/

namespace A294835.P280017200771552729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A008542 (n + 1)

end

end A294835.P280017200771552729

/-!
# A294836: Expansion of Product_{k>=1} (1 + x^k)^(k*(2*k-1)).

The programs for A294836, there is no canonical definition to state claims against.
-/

/-! ## A294836.P6210004050256016737

`A216153(A005132(n!))`
-/

namespace A294836.P6210004050256016737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216153 (A005132 (Nat.factorial n)).toNat

end

end A294836.P6210004050256016737

/-! ## A294836.P5406051945837121506

`A284918(A148380(n+1))`
-/

namespace A294836.P5406051945837121506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284918 (A148380 (n + 1)).toNat

end

end A294836.P5406051945837121506

/-!
# A294837: Expansion of Product_{k>=1} (1 + x^k)^(k*(5*k-3)/2).

The programs for A294837, there is no canonical definition to state claims against.
-/

/-! ## A294837.P2384767070953232645

`A340280(A131924(n))+A238349(n)`
-/

namespace A294837.P2384767070953232645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340280 (A131924 n).toNat + A238349 n

end

end A294837.P2384767070953232645

/-! ## A294837.P2483720527242322048

`A000244(n)-A046820(A056572(n))`
-/

namespace A294837.P2483720527242322048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A046820 (A056572 n).toNat

end

end A294837.P2483720527242322048

/-!
# A294838: Expansion of Product_{k>=1} (1 + x^k)^(k*(3*k-2)).

The programs for A294838, there is no canonical definition to state claims against.
-/

/-! ## A294838.P14815911462344774755

`A162226(∑[A006349(n+1)])`
-/

namespace A294838.P14815911462344774755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294838.P14815911462344774755

/-!
# A294839: Expansion of Product_{k>=1} (1 + x^(2*k-1))^(k*(3*k-1)/2)*(1 + x^(2*k))^(k*(3*k+1)/2).

The programs for A294839, there is no canonical definition to state claims against.
-/

/-! ## A294839.P9289395603172132188

`xor(A000225(n), A087117(A048420(n+1)))`
-/

namespace A294839.P9289395603172132188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A087117 (A048420 (n + 1)).toNat)

end

end A294839.P9289395603172132188

/-! ## A294839.P16524892569044356701

`A262689(A038055(n+1)-n)`
-/

namespace A294839.P16524892569044356701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A038055 (n + 1) - (n : ℤ)).toNat

end

end A294839.P16524892569044356701

/-! ## A294839.P17381402727225999109

`2^n-A001221(A198628(n))`
-/

namespace A294839.P17381402727225999109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001221 (A198628 n).toNat

end

end A294839.P17381402727225999109

/-! ## A294839.P13818142142028140611

`2^n-A001221(A272992(n))`
-/

namespace A294839.P13818142142028140611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001221 (A272992 n).toNat

end

end A294839.P13818142142028140611

/-!
# A294840: Expansion of Product_{k>=1} (1 + x^(2*k-1))^(k*(5*k-3)/2)*(1 + x^(2*k))^(k*(5*k+3)/2).

The programs for A294840, there is no canonical definition to state claims against.
-/

/-! ## A294840.P7502281055097489405

`A098019(A189594(n+1))`
-/

namespace A294840.P7502281055097489405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (A189594 (n + 1)).toNat

end

end A294840.P7502281055097489405

/-! ## A294840.P16832667831903889990

`A098019(A189601(n+1))`
-/

namespace A294840.P16832667831903889990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (A189601 (n + 1)).toNat

end

end A294840.P16832667831903889990

/-! ## A294840.P16505725117225153972

`A082447(A034478(n))-n`
-/

namespace A294840.P16505725117225153972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A034478 n).toNat - (n : ℤ)

end

end A294840.P16505725117225153972

/-!
# A294841: Expansion of Product_{k>=1} (1 + x^(2*k-1))^(k*(3*k-2))*(1 + x^(2*k))^(k*(3*k+2)).

The programs for A294841, there is no canonical definition to state claims against.
-/

/-! ## A294841.P8907917026371446194

`A005041(11*A260346(n))`
-/

namespace A294841.P8907917026371446194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (11 * A260346 n).toNat

end

end A294841.P8907917026371446194

/-! ## A294841.P7258076880633733359

`A262689(6^n-A249440(n+1))`
-/

namespace A294841.P7258076880633733359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((6 ^ n : ℤ) - A249440 (n + 1)).toNat

end

end A294841.P7258076880633733359

/-! ## A294841.P9872148270483147911

`A371426(n)-A209229(A371372(n))`
-/

namespace A294841.P9872148270483147911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371426 n - A209229 (A371372 n).toNat

end

end A294841.P9872148270483147911

/-!
# A294842: Expansion of Product_{k>=1} (1 + x^k)^(k^2*(k+1)/2).

The programs for A294842, there is no canonical definition to state claims against.
-/

/-! ## A294842.P6201489008015683255

`A347625(∑[∑[floor(3*n/2)]])`
-/

namespace A294842.P6201489008015683255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294842.P6201489008015683255

/-! ## A294842.P4883926678990877690

`A320856(n)-A001222(A158117(3*n))`
-/

namespace A294842.P4883926678990877690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320856 (n + 10) - A001222 (A158117 (3 * n)).toNat

end

end A294842.P4883926678990877690

/-!
# A294843: Expansion of Product_{k>=1} (1 + x^k)^(k*(k+1)*(4*k-1)/6).

The programs for A294843, there is no canonical definition to state claims against.
-/

/-! ## A294843.P1531110438858806008

`A319853(A052481(n))+A301957(3*n+1)`
-/

namespace A294843.P1531110438858806008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319853 (A052481 n).toNat + A301957 (3 * n + 1)

end

end A294843.P1531110438858806008

/-!
# A294844: Expansion of Product_{k>=1} (1 + x^k)^(k*(k+1)*(5*k-2)/6).

The programs for A294844, there is no canonical definition to state claims against.
-/

/-! ## A294844.P6542702261780288243

`A002260(∑[1-n^3]²)`
-/

namespace A294844.P6542702261780288243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A294844.P6542702261780288243

/-!
# A294845: Expansion of Product_{k>=1} (1 + x^k)^(k*(k+1)*(2*k-1)/2).

The programs for A294845, there is no canonical definition to state claims against.
-/

/-! ## A294845.P17233280867634201461

`A120707(A057544(2*n))-A057516(n)`
-/

namespace A294845.P17233280867634201461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120707 (A057544 (2 * n)).toNat - A057516 n

end

end A294845.P17233280867634201461

/-! ## A294845.P4280480866038015243

`or(A023872(n), A290689(A069217(n+1)))`
-/

namespace A294845.P4280480866038015243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023872 n) (A290689 (A069217 (n + 1)).toNat)

end

end A294845.P4280480866038015243

/-!
# A294847: a(n) is the total number of line segments in the diagram described in A236104 after n-th stage, with a(0) = 2.

The programs for A294847, there is no canonical definition to state claims against.
-/

/-! ## A294847.P346570262225665158

`A293750(n)+2`
-/

namespace A294847.P346570262225665158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293750 n + 2

end

end A294847.P346570262225665158

/-! ## A294847.P17768058766688689965

`2*A294848(n)`
-/

namespace A294847.P17768058766688689965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294848 n

end

end A294847.P17768058766688689965

/-! ## A294847.P12130293460268523656

`2*(A294849(n)+1)`
-/

namespace A294847.P12130293460268523656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294849 n + 1)

end

end A294847.P12130293460268523656

/-! ## A294847.P16168114471700909851

`A004277(A294848(n))`
-/

namespace A294847.P16168114471700909851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294848 n).toNat

end

end A294847.P16168114471700909851

/-! ## A294847.P7611481155445217910

`A321220(A293750(n))`
-/

namespace A294847.P7611481155445217910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A293750 n).toNat

end

end A294847.P7611481155445217910

/-!
# A294848: a(n) is the total number of horizontal line segments in the diagram of the symmetries of sigma described in A236104 after n-th stage, with a(0) = 1.

The programs for A294848, there is no canonical definition to state claims against.
-/

/-! ## A294848.P11395509656170654816

`A294847(n)/2`
-/

namespace A294848.P11395509656170654816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294847 n : ℚ) / 2

end

end A294848.P11395509656170654816

/-! ## A294848.P12598063357314299675

`A294849(n)+1`
-/

namespace A294848.P12598063357314299675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 n + 1

end

end A294848.P12598063357314299675

/-! ## A294848.P10727230829197969898

`A293750(n)/2+1`
-/

namespace A294848.P10727230829197969898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293750 n : ℚ) / 2 + 1

end

end A294848.P10727230829197969898

/-! ## A294848.P5504959041956984842

`A001281(A294847(n))`
-/

namespace A294848.P5504959041956984842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A294847 n).toNat

end

end A294848.P5504959041956984842

/-! ## A294848.P6916608600071273390

`A008619(A293750(n))`
-/

namespace A294848.P6916608600071273390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A293750 n).toNat

end

end A294848.P6916608600071273390

/-!
# A294849: a(n) is the total number of horizontal line segments that belong to the Dyck paths in the diagram of the symmetries of sigma described in A236104 and A237593 after n-th stage, with a(0) = 0.

The programs for A294849, there is no canonical definition to state claims against.
-/

/-! ## A294849.P2652070508998227364

`A293750(n)/2`
-/

namespace A294849.P2652070508998227364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293750 n : ℚ) / 2

end

end A294849.P2652070508998227364

/-! ## A294849.P12690750260130624328

`A294848(n)-1`
-/

namespace A294849.P12690750260130624328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294848 n - 1

end

end A294849.P12690750260130624328

/-! ## A294849.P11736450892894019881

`A294847(n)/2-1`
-/

namespace A294849.P11736450892894019881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294847 n : ℚ) / 2 - 1

end

end A294849.P11736450892894019881

/-! ## A294849.P4111706536008362901

`A001281(A293750(n))`
-/

namespace A294849.P4111706536008362901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A293750 n).toNat

end

end A294849.P4111706536008362901

/-! ## A294849.P10113080708250355214

`A023443(A294848(n))`
-/

namespace A294849.P10113080708250355214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A294848 n).toNat

end

end A294849.P10113080708250355214

/-!
# A294850: Number of compositions (ordered partitions) of 1 into exactly 2*n+1 powers of 1/3.

The programs for A294850, there is no canonical definition to state claims against.
-/

/-! ## A294850.P5420215271562462471

`A294746(∑[n+3])`
-/

namespace A294850.P5420215271562462471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294850.P5420215271562462471

/-! ## A294850.P18410765082194827515

`A152847(n)*A294746(A141214(n))`
-/

namespace A294850.P18410765082194827515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A294746 (A141214 n).toNat

end

end A294850.P18410765082194827515

/-! ## A294850.P53836496075375013

`lcm(A165326(n), A294746(A141214(n)))`
-/

namespace A294850.P53836496075375013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A165326 n) (A294746 (A141214 n).toNat)

end

end A294850.P53836496075375013

/-! ## A294850.P1026155447140058627

`A007318(∑[n])*A294746(A141214(n))`
-/

namespace A294850.P1026155447140058627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A294746 (A141214 n).toNat

end

end A294850.P1026155447140058627

/-! ## A294850.P2221432219351718407

`A294746(A141214(n))/A152847(n+4)`
-/

namespace A294850.P2221432219351718407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294746 (A141214 n).toNat : ℚ) / (A152847 (n + 4) : ℚ)

end

end A294850.P2221432219351718407

/-!
# A294851: Number of compositions (ordered partitions) of 1 into exactly 3*n+1 powers of 1/4.

The programs for A294851, there is no canonical definition to state claims against.
-/

/-! ## A294851.P11321796973173895652

`A294746(∑[n+3]+n+3)`
-/

namespace A294851.P11321796973173895652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294851.P11321796973173895652

/-!
# A294852: Number of compositions (ordered partitions) of 1 into exactly 4*n+1 powers of 1/5.

The programs for A294852, there is no canonical definition to state claims against.
-/

/-! ## A294852.P16133168347670256581

`A294746(eq[4, A025581(n)])`
-/

namespace A294852.P16133168347670256581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294852.P16133168347670256581

/-! ## A294852.P18024492596283163267

`A294746(eq[9, A099375(n)])`
-/

namespace A294852.P18024492596283163267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294852.P18024492596283163267

/-!
# A294853: Number of compositions (ordered partitions) of 1 into exactly 5*n+1 powers of 1/6.

The programs for A294853, there is no canonical definition to state claims against.
-/

/-! ## A294853.P6152189272704026785

`A294746(eq[5, A025581(n)])`
-/

namespace A294853.P6152189272704026785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294853.P6152189272704026785

/-! ## A294853.P2488128424282090132

`A294746(eq[6, A193739(n)])`
-/

namespace A294853.P2488128424282090132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294853.P2488128424282090132

/-!
# A294854: Number of compositions (ordered partitions) of 1 into exactly 6*n+1 powers of 1/7.

The programs for A294854, there is no canonical definition to state claims against.
-/

/-! ## A294854.P9291841270816107481

`A294746(eq[6, A025581(n)])`
-/

namespace A294854.P9291841270816107481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294854.P9291841270816107481

/-! ## A294854.P1971558372077222546

`A294746(eq[7, A193739(n)])`
-/

namespace A294854.P1971558372077222546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294854.P1971558372077222546

/-!
# A294855: Number of compositions (ordered partitions) of 1 into exactly 7*n+1 powers of 1/8.

The programs for A294855, there is no canonical definition to state claims against.
-/

/-! ## A294855.P13950266134306469427

`A294746(eq[7, A025581(n)])`
-/

namespace A294855.P13950266134306469427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A294855.P13950266134306469427

/-!
# A294856: 

The programs for A294856, there is no canonical definition to state claims against.
-/

/-! ## A294856.P15551594624622636133

`A294746(A000124(n+8)+n-1)`
-/

namespace A294856.P15551594624622636133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294746 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A294856.P15551594624622636133

/-!
# A294859: Triangle whose n-th row is the concatenated sequence of all Lyndon compositions of n in lexicographic order.

The programs for A294859, there is no canonical definition to state claims against.
-/

/-! ## A294859.P2702803740164168449

`Δ[lt[A296657(n+2), acot(n)]]`
-/

namespace A294859.P2702803740164168449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 2)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A294859.P2702803740164168449

/-! ## A294859.P1511125373599936249

`Δ[eq[A000007(n), A296657(n+2)]]`
-/

namespace A294859.P1511125373599936249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A294859.P1511125373599936249

/-! ## A294859.P14900045194178251712

`Δ[eq[A019590(n+1), A296657(n+1)]]`
-/

namespace A294859.P14900045194178251712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A294859.P14900045194178251712

/-! ## A294859.P13135560007986126273

`Δ[eq[A033322(n+1), A296657(n+1)]]`
-/

namespace A294859.P13135560007986126273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296657 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A294859.P13135560007986126273

/-! ## A294859.P3930125075736464937

`A089309(∑[A035214(A209237(n))])`
-/

namespace A294859.P3930125075736464937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A209237 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294859.P3930125075736464937

/-!
# A294860: Solution of the equation a(n) = a(n-2) + b(n-2), where a( ) and b( ) are increasing sequences of positive integers such that every positive integer is in one of them and only one term is in both.

The programs for A294860, there is no canonical definition to state claims against.
-/

/-! ## A294860.P11118040933992050907

`A000196(A331755(n+1)+A206802(n+2))`
-/

namespace A294860.P11118040933992050907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A331755 (n + 1) + A206802 (n + 2)).toNat

end

end A294860.P11118040933992050907

/-! ## A294860.P4869257856634787289

`A180447(A071239(n+1))`
-/

namespace A294860.P4869257856634787289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A071239 (n + 1)).toNat

end

end A294860.P4869257856634787289

/-! ## A294860.P18203861932948557021

`A217713(A288996(n+1))`
-/

namespace A294860.P18203861932948557021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A288996 (n + 1)).toNat

end

end A294860.P18203861932948557021

/-! ## A294860.P1187232295259153304

`A325690(2*(n+2))+A209229(A042263(n+2))`
-/

namespace A294860.P1187232295259153304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 (2 * (n + 2)) + A209229 (A042263 (n + 2)).toNat

end

end A294860.P1187232295259153304

/-! ## A294860.P17306743587262554695

`A325690(2*(n+2))+A089885(A089889(n+1))`
-/

namespace A294860.P17306743587262554695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 (2 * (n + 2)) + A089885 (A089889 (n + 1)).toNat

end

end A294860.P17306743587262554695

/-!
# A294861: Solution of the complementary equation a(n) = a(n-2) + b(n-2) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294861, there is no canonical definition to state claims against.
-/

/-! ## A294861.P14872965883916832202

`A022943(n+1)-1`
-/

namespace A294861.P14872965883916832202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022943 (n + 1) - 1

end

end A294861.P14872965883916832202

/-! ## A294861.P815104709885039528

`A033999(or(1, n))+A022943(n+1)`
-/

namespace A294861.P815104709885039528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + A022943 (n + 1)

end

end A294861.P815104709885039528

/-! ## A294861.P18155246398777913150

`A163805(A170818(n+1))+A022943(n+1)`
-/

namespace A294861.P18155246398777913150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A170818 (n + 1)).toNat + A022943 (n + 1)

end

end A294861.P18155246398777913150

/-! ## A294861.P7027450368084523279

`A094267(Δ[A005379(n)]!)+A022943(n+1)`
-/

namespace A294861.P7027450368084523279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (Nat.factorial (f1 (n + 1) - f1 n).toNat) + A022943 (n + 1)

end

end A294861.P7027450368084523279

/-! ## A294861.P13264158533079396493

`A057428(n+1)+A022943(n+1)`
-/

namespace A294861.P13264158533079396493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A022943 (n + 1)

end

end A294861.P13264158533079396493

/-! ## A294861.P8651957930579706707

`A033880(Δ[A054385(n+1)])+A022943(n+1)`
-/

namespace A294861.P8651957930579706707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (f1 (n + 1) - f1 n).toNat + A022943 (n + 1)

end

end A294861.P8651957930579706707

/-! ## A294861.P13711894781319227057

`A033999(2*n+1)+A022943(n+1)`
-/

namespace A294861.P13711894781319227057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A022943 (n + 1)

end

end A294861.P13711894781319227057

/-! ## A294861.P3320552970153223337

`A023443(A022943(n+1))`
-/

namespace A294861.P3320552970153223337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022943 (n + 1)).toNat

end

end A294861.P3320552970153223337

/-! ## A294861.P16613424085783833823

`abs(A022961(A022943(n+1)+4))`
-/

namespace A294861.P16613424085783833823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022961 (A022943 (n + 1) + 4).toNat|

end

end A294861.P16613424085783833823

/-!
# A294862: Solution of the complementary equation a(n) = a(n-2) + b(n-2) + 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294862, there is no canonical definition to state claims against.
-/

/-! ## A294862.P13730481986570957436

`A294476(n)-A057427(A068639(n))`
-/

namespace A294862.P13730481986570957436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A057427 (A068639 n).toNat

end

end A294862.P13730481986570957436

/-! ## A294862.P5610901771061644672

`A294476(n)-A060576(A133310(n))`
-/

namespace A294862.P5610901771061644672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A060576 (A133310 n).toNat

end

end A294862.P5610901771061644672

/-! ## A294862.P7355989554422549774

`A294476(n)-A157928(A080412(n))`
-/

namespace A294862.P7355989554422549774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A157928 (A080412 n).toNat

end

end A294862.P7355989554422549774

/-! ## A294862.P7389522433375674195

`A294476(n)+A057428(A008616(n+1))`
-/

namespace A294862.P7389522433375674195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n + A057428 (A008616 (n + 1)).toNat

end

end A294862.P7389522433375674195

/-! ## A294862.P15296978763504621674

`A294476(n)-A000035(A295609(n))`
-/

namespace A294862.P15296978763504621674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A000035 (A295609 n).toNat

end

end A294862.P15296978763504621674

/-! ## A294862.P11903450352017155413

`A294476(n)-A267587(A008619(n)+n)`
-/

namespace A294862.P11903450352017155413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A267587 (A008619 n + (n : ℤ)).toNat

end

end A294862.P11903450352017155413

/-! ## A294862.P8351679834485945020

`A294476(n)-A157928(A057300(n))`
-/

namespace A294862.P8351679834485945020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A157928 (A057300 n).toNat

end

end A294862.P8351679834485945020

/-! ## A294862.P2752420658385995820

`A294476(n)-A000035(A163985(n))`
-/

namespace A294862.P2752420658385995820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A000035 (A163985 n).toNat

end

end A294862.P2752420658385995820

/-! ## A294862.P3771095796968719841

`A294476(n)-A267587(A008619(3*n))`
-/

namespace A294862.P3771095796968719841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A267587 (A008619 (3 * n)).toNat

end

end A294862.P3771095796968719841

/-! ## A294862.P11648399933290007481

`A294476(n)-A057427(A012265(n))`
-/

namespace A294862.P11648399933290007481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A057427 (A012265 n).toNat

end

end A294862.P11648399933290007481

/-! ## A294862.P9978145787191993230

`A294476(n)-A267587(∑[A008619(n)])`
-/

namespace A294862.P9978145787191993230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A267587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294862.P9978145787191993230

/-! ## A294862.P9914854870511359455

`A294476(n)-A267587(A294476(n)-n)`
-/

namespace A294862.P9914854870511359455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294476 n - A267587 (A294476 n - (n : ℤ)).toNat

end

end A294862.P9914854870511359455

/-!
# A294863: Solution of the complementary equation a(n) = a(n-2) + b(n-2) + 3, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294863, there is no canonical definition to state claims against.
-/

/-! ## A294863.P5564250181402529788

`A022944(n+2)-3`
-/

namespace A294863.P5564250181402529788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022944 (n + 2) - 3

end

end A294863.P5564250181402529788

/-! ## A294863.P11020353445232621902

`∑[Δ[A022944(n+1)]/C(2, C(2, n²))]`
-/

namespace A294863.P11020353445232621902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022944 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294863.P11020353445232621902

/-! ## A294863.P16449521438535671660

`∑[Δ[A022944(n+1)]/A054977(n)]`
-/

namespace A294863.P16449521438535671660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022944 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294863.P16449521438535671660

/-! ## A294863.P13697860155787696994

`∑[Δ[A022944(n+1)]/A000108(C(2, n+1))]`
-/

namespace A294863.P13697860155787696994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022944 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A000108 (Nat.choose 2 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294863.P13697860155787696994

/-! ## A294863.P12174703066286546423

`A023445(Δ[A022944(n+1)])+A022944(n+1)`
-/

namespace A294863.P12174703066286546423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (f1 (n + 1) - f1 n).toNat + A022944 (n + 1)

end

end A294863.P12174703066286546423

/-! ## A294863.P10280373802019520415

`A023445(A022944(n+2))`
-/

namespace A294863.P10280373802019520415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A022944 (n + 2)).toNat

end

end A294863.P10280373802019520415

/-!
# A294864: Solution of the complementary equation a(n) = a(n-2) + b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294864, there is no canonical definition to state claims against.
-/

/-! ## A294864.P587610526416449287

`A294481(n)-A267870(n+1)`
-/

namespace A294864.P587610526416449287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A267870 (n + 1)

end

end A294864.P587610526416449287

/-! ## A294864.P955930202687944670

`A294481(n)+A057428(A068639(n))`
-/

namespace A294864.P955930202687944670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n + A057428 (A068639 n).toNat

end

end A294864.P955930202687944670

/-! ## A294864.P9497334105874211920

`A294481(n)-A060576(A133310(n))`
-/

namespace A294864.P9497334105874211920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A060576 (A133310 n).toNat

end

end A294864.P9497334105874211920

/-! ## A294864.P6976725925866760072

`A294481(n)-A157928(A014681(n)-A157928(n))`
-/

namespace A294864.P6976725925866760072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A157928 (A014681 n - A157928 n).toNat

end

end A294864.P6976725925866760072

/-! ## A294864.P4288085813522520736

`A294481(n)-A057428(n)*A057428(A068639(n))`
-/

namespace A294864.P4288085813522520736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A057428 n * A057428 (A068639 n).toNat

end

end A294864.P4288085813522520736

/-! ## A294864.P8467539478946212902

`A294481(n)-A157928(A014681(n))`
-/

namespace A294864.P8467539478946212902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A157928 (A014681 n).toNat

end

end A294864.P8467539478946212902

/-! ## A294864.P8007232209570193793

`A294481(n)-A000035(A295609(n))`
-/

namespace A294864.P8007232209570193793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A000035 (A295609 n).toNat

end

end A294864.P8007232209570193793

/-! ## A294864.P2668625866935203850

`A294481(n)-A157928(A057300(n))`
-/

namespace A294864.P2668625866935203850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A157928 (A057300 n).toNat

end

end A294864.P2668625866935203850

/-! ## A294864.P4792757145906250487

`A294481(n)-A000035(A004274(n))`
-/

namespace A294864.P4792757145906250487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A000035 (A004274 n).toNat

end

end A294864.P4792757145906250487

/-! ## A294864.P10204431778742860718

`A294481(n)-A000035(A163985(n))`
-/

namespace A294864.P10204431778742860718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A000035 (A163985 n).toNat

end

end A294864.P10204431778742860718

/-! ## A294864.P8228711568535267575

`A294481(n)-A267587(A294481(n)-n)`
-/

namespace A294864.P8228711568535267575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294481 n - A267587 (A294481 n - (n : ℤ)).toNat

end

end A294864.P8228711568535267575

/-!
# A294865: Solution of the complementary equation a(n) = a(n-2) + 2*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294865, there is no canonical definition to state claims against.
-/

/-! ## A294865.P13456872389558414342

`∑[A272727(A187829(n+1))+n]`
-/

namespace A294865.P13456872389558414342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 (A187829 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294865.P13456872389558414342

/-! ## A294865.P1626318542613823511

`A003004(A210981(n)+1)`
-/

namespace A294865.P1626318542613823511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A210981 n + 1).toNat

end

end A294865.P1626318542613823511

/-!
# A294866: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294866, there is no canonical definition to state claims against.
-/

/-! ## A294866.P12795136293927434927

`∑[∑[A055642(62*n²)+n-1]]+1-n`
-/

namespace A294866.P12795136293927434927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (62 * n ^ 2) + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)

end

end A294866.P12795136293927434927

/-! ## A294866.P1295690978647567704

`∑[A232748(A022951(n+1))]`
-/

namespace A294866.P1295690978647567704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (A022951 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294866.P1295690978647567704

/-! ## A294866.P8041157112650843647

`A278814(A001297(n))`
-/

namespace A294866.P8041157112650843647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A001297 n).toNat

end

end A294866.P8041157112650843647

/-! ## A294866.P571869129185118232

`A177116(2*(n+1))+A010054(A150383(n))`
-/

namespace A294866.P571869129185118232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177116 (2 * (n + 1)) + A010054 (A150383 n).toNat

end

end A294866.P571869129185118232

/-!
# A294867: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) -1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294867, there is no canonical definition to state claims against.
-/

/-! ## A294867.P16981042938150703386

`∑[∑[A003247(n+1)%A164935(n)]]`
-/

namespace A294867.P16981042938150703386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003247 (n + 1)) (A164935 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294867.P16981042938150703386

/-! ## A294867.P17026650586679537245

`A178522(A034856(n+1))+A000292(n)`
-/

namespace A294867.P17026650586679537245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 (A034856 (n + 1)).toNat + A000292 n

end

end A294867.P17026650586679537245

/-! ## A294867.P6388956198935994750

`A055086(A006261(2*n)-n)`
-/

namespace A294867.P6388956198935994750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A006261 (2 * n) - (n : ℤ)).toNat

end

end A294867.P6388956198935994750

/-! ## A294867.P11818494882358259944

`∑[A239504(n!)]`
-/

namespace A294867.P11818494882358259944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294867.P11818494882358259944

/-!
# A294868: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) -2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294868, there is no canonical definition to state claims against.
-/

/-! ## A294868.P12809116528416440120

`∑[∑[comp[A061846(n+3)+3]]]+1`
-/

namespace A294868.P12809116528416440120
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061846 (n + 3) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294868.P12809116528416440120

/-! ## A294868.P13464851706408782334

`∑[A131209(A332410(n))]+1`
-/

namespace A294868.P13464851706408782334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A332410 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294868.P13464851706408782334

/-! ## A294868.P8816899026900933866

`A116721(n+1)+A025441(A010551(n))`
-/

namespace A294868.P8816899026900933866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) + A025441 (A010551 n).toNat

end

end A294868.P8816899026900933866

/-! ## A294868.P10756637354389507862

`A165766(A062724(n))+A116721(n+1)`
-/

namespace A294868.P10756637354389507862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165766 (A062724 n).toNat + A116721 (n + 1)

end

end A294868.P10756637354389507862

/-!
# A294869: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294869, there is no canonical definition to state claims against.
-/

/-! ## A294869.P4448997002252664571

`∑[∑[A000037(n+1)%A111090(n+1)]]+1`
-/

namespace A294869.P4448997002252664571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000037 (n + 1)) (A111090 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294869.P4448997002252664571

/-! ## A294869.P17875282784910626425

`A172471(A001297(n))+A002061(n)`
-/

namespace A294869.P17875282784910626425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A001297 n).toNat + A002061 n

end

end A294869.P17875282784910626425

/-! ## A294869.P17532445862838405895

`∑[A109439(∑[A004683(n+1)])]`
-/

namespace A294869.P17532445862838405895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109439 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294869.P17532445862838405895

/-! ## A294869.P7520507055535982664

`A184425(a(n-1))+Δ[A000292(n)]-1` with `a(0)=1, a(1)=2`
-/

namespace A294869.P7520507055535982664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A184425 (a (n - 1)).toNat + (f1 (n + 1) - f1 n) - 1

end

end A294869.P7520507055535982664

/-!
# A294870: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) + 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294870, there is no canonical definition to state claims against.
-/

/-! ## A294870.P3658724452026531966

`∑[∑[A138887(n+1)%A138899(n+1)]]+1`
-/

namespace A294870.P3658724452026531966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138887 (n + 1)) (A138899 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294870.P3658724452026531966

/-! ## A294870.P6730554966269634629

`∑[∑[A296484(n)%A296517(n+3)]]`
-/

namespace A294870.P6730554966269634629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296484 n) (A296517 (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294870.P6730554966269634629

/-! ## A294870.P5311430865329163479

`∑[∑[A245028(n+4)%A154700(n+1)]]`
-/

namespace A294870.P5311430865329163479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245028 (n + 4)) (A154700 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294870.P5311430865329163479

/-! ## A294870.P8004632824720706873

`A000267(A000212(5*n-(4-a(n-1))))` with `a(0)=1`
-/

namespace A294870.P8004632824720706873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000267 (A000212 ((5 * n : ℤ) - (4 - a (n - 1))).toNat).toNat

end

end A294870.P8004632824720706873

/-!
# A294871: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) + 3, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294871, there is no canonical definition to state claims against.
-/

/-! ## A294871.P12895438570319329123

`A004273(n)²+A365734(n+2)+A079978(A307635(n))`
-/

namespace A294871.P12895438570319329123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2 + (A365734 (n + 2) + A079978 (A307635 n).toNat)

end

end A294871.P12895438570319329123

/-! ## A294871.P2470508872651232748

`A005041((n+1)*∑[n]²)`
-/

namespace A294871.P2470508872651232748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A294871.P2470508872651232748

/-! ## A294871.P4742702594080158085

`A172471(∑[(1-2*n²)²])`
-/

namespace A294871.P4742702594080158085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294871.P4742702594080158085

/-! ## A294871.P14416724474302189876

`∑[∑[(n+2)*A062157(n!+1)+3]]`
-/

namespace A294871.P14416724474302189876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A062157 (Nat.factorial n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294871.P14416724474302189876

/-!
# A294872: Solution of the complementary equation a(n) = 2*a(n-1) - a(n-2) + b(n-1) + n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294872, there is no canonical definition to state claims against.
-/

/-! ## A294872.P9019951270854688486

`∑[abs(A127565(A052905(n)))]`
-/

namespace A294872.P9019951270854688486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127565 (A052905 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294872.P9019951270854688486

/-! ## A294872.P15189967004790030315

`∑[A003003((1-2*n)²)]`
-/

namespace A294872.P15189967004790030315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 ((1 - (2 * n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294872.P15189967004790030315

/-! ## A294872.P11311795460452949110

`∑[A213923(A279361(n))]`
-/

namespace A294872.P11311795460452949110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213923 (A279361 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294872.P11311795460452949110

/-!
# A294873: a(n) = Product_{d|n, d>1, d = x^(2k-1) for some maximal k >= 1} prime(k).

The programs for A294873, there is no canonical definition to state claims against.
-/

/-! ## A294873.P8902117210673090004

`A319521(A293524(n+1))`
-/

namespace A294873.P8902117210673090004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319521 (A293524 (n + 1)).toNat

end

end A294873.P8902117210673090004

/-! ## A294873.P6950385679465242859

`A292589(10*A293524(n+1))`
-/

namespace A294873.P6950385679465242859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (10 * A293524 (n + 1)).toNat

end

end A294873.P6950385679465242859

/-! ## A294873.P15573457108547384148

`A293524(n+1)/A126316(A112624(n+1))`
-/

namespace A294873.P15573457108547384148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293524 (n + 1) : ℚ) / (A126316 (A112624 (n + 1)).toNat : ℚ)

end

end A294873.P15573457108547384148

/-! ## A294873.P197704116185227232

`A294874((n+1)²)/A126316(A112624(n+1))`
-/

namespace A294873.P197704116185227232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294874 ((n + 1) ^ 2) : ℚ) / (A126316 (A112624 (n + 1)).toNat : ℚ)

end

end A294873.P197704116185227232

/-! ## A294873.P1314510411358662014

`lcm(A091090(A057977(n)), A295557(n+1))`
-/

namespace A294873.P1314510411358662014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091090 (A057977 n).toNat) (A295557 (n + 1))

end

end A294873.P1314510411358662014

/-!
# A294874: a(n) = Product_{d|n, d>1, d = x^(2k) for some maximal k} prime(k).

The programs for A294874, there is no canonical definition to state claims against.
-/

/-! ## A294874.P1993116861636188548

`A293524(A000188(n+1))`
-/

namespace A294874.P1993116861636188548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293524 (A000188 (n + 1)).toNat

end

end A294874.P1993116861636188548

/-! ## A294874.P13187294735733981841

`A293524(sqrt(A008833(n+1)))`
-/

namespace A294874.P13187294735733981841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293524 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A294874.P13187294735733981841

/-! ## A294874.P7756451130048695058

`A293524(A057918(n+1)+1)`
-/

namespace A294874.P7756451130048695058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293524 (A057918 (n + 1) + 1).toNat

end

end A294874.P7756451130048695058

/-! ## A294874.P8506899463109782614

`A293524((n+1)/A019554(n+1))`
-/

namespace A294874.P8506899463109782614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A294874.P8506899463109782614

/-! ## A294874.P6864948782502426520

`gcd(A294873((n+1)/∏{p}[n+1, #]), A294875(n+1))`
-/

namespace A294874.P6864948782502426520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294873 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) (A294875 (n + 1))

end

end A294874.P6864948782502426520

/-! ## A294874.P5716594754975312440

`gcd(A294873(A292589(n+1)), A294875(n+1))`
-/

namespace A294874.P5716594754975312440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294873 (A292589 (n + 1)).toNat) (A294875 (n + 1))

end

end A294874.P5716594754975312440

/-! ## A294874.P16006288675856947169

`A328879(A294897(n+1))`
-/

namespace A294874.P16006288675856947169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328879 (A294897 (n + 1)).toNat

end

end A294874.P16006288675856947169

/-! ## A294874.P13923230178949361995

`A336158(A037445(n+1)*A293514(n+1))`
-/

namespace A294874.P13923230178949361995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A037445 (n + 1) * A293514 (n + 1)).toNat

end

end A294874.P13923230178949361995

/-! ## A294874.P16177934784594676664

`A046523(A293515(n+1)%A065978(n+1))`
-/

namespace A294874.P16177934784594676664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A293515 (n + 1)) (A065978 (n + 1))).toNat

end

end A294874.P16177934784594676664

/-! ## A294874.P3971887837281010304

`A294873(A008833(n+1))%A121856(A108690(n+1))`
-/

namespace A294874.P3971887837281010304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294873 (A008833 (n + 1)).toNat) (A121856 (A108690 (n + 1)).toNat)

end

end A294874.P3971887837281010304

/-!
# A294875: a(n) = Product_{d|n, d = x^k, with x,k > 1} prime(A052409(d)-1).

The programs for A294875, the canonical program `A294875.P6830521774454542538` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294875 has offset 1).

The definition of A294875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294875.P7732460959640154628

`A064989(A293524(n+1))`
-/

namespace A294875.P7732460959640154628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A293524 (n + 1)).toNat

end

end A294875.P7732460959640154628

namespace A294875

/-- `A064989(A293524(n+1))` -/
def P7732460959640154628.Spec : Prop :=
  ∀ n, P7732460959640154628.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P6830521774454542538

`∏{d}[n+1, A008578(A253641(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A294875

/-- `∏{d}[n+1, A008578(A253641(#))]` -/
def P6830521774454542538.Spec : Prop :=
  ∀ n, P6830521774454542538.a n = A294875 (n + 1)

theorem P6830521774454542538.correct : P6830521774454542538.Spec := by
  intro n
  simp only [A294875, Nat.add_sub_cancel]

end A294875

/-! ## A294875.P4276675207940539568

`A331188(A295879(n+1)²)/A304042(∑[n+1])`
-/

namespace A294875.P4276675207940539568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A295879 (n + 1) ^ 2).toNat : ℚ) / (A304042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A294875.P4276675207940539568

namespace A294875

/-- `A331188(A295879(n+1)²)/A304042(∑[n+1])` -/
def P4276675207940539568.Spec : Prop :=
  ∀ n, P4276675207940539568.a n = (A294875 (n + 1) : ℚ)

end A294875

/-! ## A294875.P4836220172069960729

`A331188(A295879(n+1)²)+A000007(A007318(n))`
-/

namespace A294875.P4836220172069960729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A295879 (n + 1) ^ 2).toNat + A000007 (A007318 n).toNat

end

end A294875.P4836220172069960729

namespace A294875

/-- `A331188(A295879(n+1)²)+A000007(A007318(n))` -/
def P4836220172069960729.Spec : Prop :=
  ∀ n, P4836220172069960729.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P9370841639802917200

`A304042(A055998(n))*A331188(A295879(n+1)²)`
-/

namespace A294875.P9370841639802917200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A055998 n).toNat * A331188 (A295879 (n + 1) ^ 2).toNat

end

end A294875.P9370841639802917200

namespace A294875

/-- `A304042(A055998(n))*A331188(A295879(n+1)²)` -/
def P9370841639802917200.Spec : Prop :=
  ∀ n, P9370841639802917200.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P3136664216343650894

`A331188(A295879(n+1)²)%A045458(C(n, 2)+1)`
-/

namespace A294875.P3136664216343650894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331188 (A295879 (n + 1) ^ 2).toNat) (A045458 (Nat.choose n 2 + 1))

end

end A294875.P3136664216343650894

namespace A294875

/-- `A331188(A295879(n+1)²)%A045458(C(n, 2)+1)` -/
def P3136664216343650894.Spec : Prop :=
  ∀ n, P3136664216343650894.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P3415165976423009262

`A007318(A000096(n))*A331188(A295879(n+1)²)`
-/

namespace A294875.P3415165976423009262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A331188 (A295879 (n + 1) ^ 2).toNat

end

end A294875.P3415165976423009262

namespace A294875

/-- `A007318(A000096(n))*A331188(A295879(n+1)²)` -/
def P3415165976423009262.Spec : Prop :=
  ∀ n, P3415165976423009262.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P543341286350636050

`A007318(A000217(n))*A331188(A295879(n+1)²)`
-/

namespace A294875.P543341286350636050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A331188 (A295879 (n + 1) ^ 2).toNat

end

end A294875.P543341286350636050

namespace A294875

/-- `A007318(A000217(n))*A331188(A295879(n+1)²)` -/
def P543341286350636050.Spec : Prop :=
  ∀ n, P543341286350636050.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P17232756420926763537

`A331188(A295879(n+1)²)+A000038(A000124(n))`
-/

namespace A294875.P17232756420926763537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (A295879 (n + 1) ^ 2).toNat + A000038 (A000124 n).toNat

end

end A294875.P17232756420926763537

namespace A294875

/-- `A331188(A295879(n+1)²)+A000038(A000124(n))` -/
def P17232756420926763537.Spec : Prop :=
  ∀ n, P17232756420926763537.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P2939699686725253554

`A331188(A295879(n+1)²)/A007318(A000217(n+4))`
-/

namespace A294875.P2939699686725253554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331188 (A295879 (n + 1) ^ 2).toNat : ℚ) / (A007318 (A000217 (n + 4)).toNat : ℚ)

end

end A294875.P2939699686725253554

namespace A294875

/-- `A331188(A295879(n+1)²)/A007318(A000217(n+4))` -/
def P2939699686725253554.Spec : Prop :=
  ∀ n, P2939699686725253554.a n = (A294875 (n + 1) : ℚ)

end A294875

/-! ## A294875.P5266265905819686821

`A014963(A330853(n+1))*A331188(A295879(n+1)²)`
-/

namespace A294875.P5266265905819686821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A330853 (n + 1)).toNat * A331188 (A295879 (n + 1) ^ 2).toNat

end

end A294875.P5266265905819686821

namespace A294875

/-- `A014963(A330853(n+1))*A331188(A295879(n+1)²)` -/
def P5266265905819686821.Spec : Prop :=
  ∀ n, P5266265905819686821.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P9013489958327828424

`A186421(A331188(A295879(n+1)²))`
-/

namespace A294875.P9013489958327828424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A331188 (A295879 (n + 1) ^ 2).toNat).toNat

end

end A294875.P9013489958327828424

namespace A294875

/-- `A186421(A331188(A295879(n+1)²))` -/
def P9013489958327828424.Spec : Prop :=
  ∀ n, P9013489958327828424.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P3784923359140515505

`A350390(∏{d}[A003557(n+1), A329601(#)])`
-/

namespace A294875.P3784923359140515505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (∏ d ∈ Nat.divisors (f1 n).natAbs, A329601 d).toNat

end

end A294875.P3784923359140515505

namespace A294875

/-- `A350390(∏{d}[A003557(n+1), A329601(#)])` -/
def P3784923359140515505.Spec : Prop :=
  ∀ n, P3784923359140515505.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P17265321397777449873

`A102631(∏{e}[A003557(n+1), A002110(#)])`
-/

namespace A294875.P17265321397777449873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A294875.P17265321397777449873

namespace A294875

/-- `A102631(∏{e}[A003557(n+1), A002110(#)])` -/
def P17265321397777449873.Spec : Prop :=
  ∀ n, P17265321397777449873.a n = A294875 (n + 1)

end A294875

/-! ## A294875.P15392038791278294444

`A102631(A124859(n+1)/A181819(n+1))`
-/

namespace A294875.P15392038791278294444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (SequenceMachineLib.roundAway ((A124859 (n + 1) : ℚ) / (A181819 (n + 1) : ℚ))).toNat

end

end A294875.P15392038791278294444

namespace A294875

/-- `A102631(A124859(n+1)/A181819(n+1))` -/
def P15392038791278294444.Spec : Prop :=
  ∀ n, P15392038791278294444.a n = A294875 (n + 1)

end A294875

/-!
# A294877: Lexicographically earliest such sequence a that a(i) = a(j) => A003557(i) = A003557(j) and A046523(i) = A046523(j), for all i, j.

The programs for A294877, there is no canonical definition to state claims against.
-/

/-! ## A294877.P5016644167985115202

`A305790(n+1)+A217153(A214323(n))`
-/

namespace A294877.P5016644167985115202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305790 (n + 1) + A217153 (A214323 n).toNat

end

end A294877.P5016644167985115202

/-! ## A294877.P15167221117421826343

`A305790(n+1)%A050781(A010893(n))`
-/

namespace A294877.P15167221117421826343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305790 (n + 1)) (A050781 (A010893 (n + 13)).toNat)

end

end A294877.P15167221117421826343

/-! ## A294877.P1766948058492172921

`A305079(A257364(n+1))*A305790(n+1)`
-/

namespace A294877.P1766948058492172921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A257364 (n + 1)).toNat * A305790 (n + 1)

end

end A294877.P1766948058492172921

/-! ## A294877.P97275620398534860

`A098725(A005231(3*n+1))*A305790(n+1)`
-/

namespace A294877.P97275620398534860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098725 (A005231 (3 * n + 1)).toNat * A305790 (n + 1)

end

end A294877.P97275620398534860

/-! ## A294877.P14665057456793442334

`lcm(A123271(n+2), A305790(n+1))`
-/

namespace A294877.P14665057456793442334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A305790 (n + 1))

end

end A294877.P14665057456793442334

/-!
# A294878: Characteristic function for A001608, Perrin sequence.

The programs for A294878, the canonical program `A294878.P14737743431472594223` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294878 has offset 0).

The definition of A294878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294878.P12522567748697058944

`char[ogf((-3+x^2)/(-1+x^2+x^3))]`
-/

namespace A294878.P12522567748697058944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, 0, -1, -1] n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P12522567748697058944

namespace A294878

/-- `char[ogf((-3+x^2)/(-1+x^2+x^3))]` -/
def P12522567748697058944.Spec : Prop :=
  ∀ n, (P12522567748697058944.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P14737743431472594223

`char[a(n-2)+a(n-3)]` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294878

/-- `char[a(n-2)+a(n-3)]` -/
def P14737743431472594223.Spec : Prop :=
  ∀ n, (P14737743431472594223.a n : ℤ) = A294878 n

theorem P14737743431472594223.correct : P14737743431472594223.Spec := by
  intro n
  simp only [A294878]

end A294878

/-! ## A294878.P8808241348869579878

`char[A001608(n)]`
-/

namespace A294878.P8808241348869579878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P8808241348869579878

namespace A294878

/-- `char[A001608(n)]` -/
def P8808241348869579878.Spec : Prop :=
  ∀ n, (P8808241348869579878.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P7742404914210892807

`char[Δ[A193744(n)]]`
-/

namespace A294878.P7742404914210892807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P7742404914210892807

namespace A294878

/-- `char[Δ[A193744(n)]]` -/
def P7742404914210892807.Spec : Prop :=
  ∀ n, (P7742404914210892807.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P6191812523946115037

`char[Δ[A290612(n+4)]]`
-/

namespace A294878.P6191812523946115037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290612 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P6191812523946115037

namespace A294878

/-- `char[Δ[A290612(n+4)]]` -/
def P6191812523946115037.Spec : Prop :=
  ∀ n, (P6191812523946115037.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P17068930620423083495

`char[A306646(A034856(n+1))]`
-/

namespace A294878.P17068930620423083495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306646 (A034856 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P17068930620423083495

namespace A294878

/-- `char[A306646(A034856(n+1))]` -/
def P17068930620423083495.Spec : Prop :=
  ∀ n, (P17068930620423083495.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P701785106029970346

`char[A001945(n)-A078712(n)]`
-/

namespace A294878.P701785106029970346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n - A078712 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P701785106029970346

namespace A294878

/-- `char[A001945(n)-A078712(n)]` -/
def P701785106029970346.Spec : Prop :=
  ∀ n, (P701785106029970346.a n : ℤ) = A294878 n

end A294878

/-! ## A294878.P3351760028388268867

`char[A193744(n+1)-A193744(n)]`
-/

namespace A294878.P3351760028388268867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 (n + 1) - A193744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A294878.P3351760028388268867

namespace A294878

/-- `char[A193744(n+1)-A193744(n)]` -/
def P3351760028388268867.Spec : Prop :=
  ∀ n, (P3351760028388268867.a n : ℤ) = A294878 n

end A294878

/-!
# A294879: Number of proper divisors of n that are in Perrin sequence, A001608.

The programs for A294879, the canonical program `A294879.P13597222505789495960` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294879 has offset 1).

The definition of A294879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294879.P11570905034959706392

`A294880(n+1)-A294878(n+1)`
-/

namespace A294879.P11570905034959706392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294880 (n + 1) - A294878 (n + 1)

end

end A294879.P11570905034959706392

namespace A294879

/-- `A294880(n+1)-A294878(n+1)` -/
def P11570905034959706392.Spec : Prop :=
  ∀ n, P11570905034959706392.a n = A294879 (n + 1)

end A294879

/-! ## A294879.P13597222505789495960

`∑{d}[n+1, A294878(#)]-A294878(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294879

/-- `∑{d}[n+1, A294878(#)]-A294878(n+1)` -/
def P13597222505789495960.Spec : Prop :=
  ∀ n, P13597222505789495960.a n = A294879 (n + 1)

theorem P13597222505789495960.correct : P13597222505789495960.Spec := by
  intro n
  simp only [A294879, Nat.add_sub_cancel]

end A294879

/-! ## A294879.P1169595726430916351

`∑{d}[n+1, A157658(#)*A294880((n+1)/#)]`
-/

namespace A294879.P1169595726430916351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294879.P1169595726430916351

namespace A294879

/-- `∑{d}[n+1, A157658(#)*A294880((n+1)/#)]` -/
def P1169595726430916351.Spec : Prop :=
  ∀ n, P1169595726430916351.a n = A294879 (n + 1)

end A294879

/-! ## A294879.P9938882506858441695

`A000120(A337541(∏{d}[n+1, #]))`
-/

namespace A294879.P9938882506858441695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A337541 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A294879.P9938882506858441695

namespace A294879

/-- `A000120(A337541(∏{d}[n+1, #]))` -/
def P9938882506858441695.Spec : Prop :=
  ∀ n, P9938882506858441695.a n = A294879 (n + 1)

end A294879

/-! ## A294879.P605968395226808914

`A001221(A000009(A225244(n+1)))`
-/

namespace A294879.P605968395226808914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000009 (A225244 (n + 1)).toNat).toNat

end

end A294879.P605968395226808914

namespace A294879

/-- `A001221(A000009(A225244(n+1)))` -/
def P605968395226808914.Spec : Prop :=
  ∀ n, P605968395226808914.a n = A294879 (n + 1)

end A294879

/-!
# A294880: Number of divisors of n that are in Perrin sequence, A001608.

The programs for A294880, the canonical program `A294880.P12752550258716232869` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294880 has offset 1).

The definition of A294880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294878, A294879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294880.P12752550258716232869

`A294879(n+1)+A294878(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294880

/-- `A294879(n+1)+A294878(n+1)` -/
def P12752550258716232869.Spec : Prop :=
  ∀ n, P12752550258716232869.a n = A294880 (n + 1)

theorem P12752550258716232869.correct : P12752550258716232869.Spec := by
  intro n
  simp only [A294880, Nat.add_sub_cancel]

end A294880

/-! ## A294880.P2535029441634500599

`∑{d}[n+1, A294878(#)]`
-/

namespace A294880.P2535029441634500599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294878 d

end

end A294880.P2535029441634500599

namespace A294880

/-- `∑{d}[n+1, A294878(#)]` -/
def P2535029441634500599.Spec : Prop :=
  ∀ n, P2535029441634500599.a n = A294880 (n + 1)

end A294880

/-! ## A294880.P11228899094874359016

`A294879(4*11*(n+1)-(n+1))`
-/

namespace A294880.P11228899094874359016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294879 (4 * (11 * (n + 1)) - (n + 1))

end

end A294880.P11228899094874359016

namespace A294880

/-- `A294879(4*11*(n+1)-(n+1))` -/
def P11228899094874359016.Spec : Prop :=
  ∀ n, P11228899094874359016.a n = A294880 (n + 1)

end A294880

/-! ## A294880.P1914264437842248256

`dr(A294879(A129598(n+1)))`
-/

namespace A294880.P1914264437842248256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A294879 (A129598 (n + 1)).toNat)

end

end A294880.P1914264437842248256

namespace A294880

/-- `dr(A294879(A129598(n+1)))` -/
def P1914264437842248256.Spec : Prop :=
  ∀ n, (P1914264437842248256.a n : ℤ) = A294880 (n + 1)

end A294880

/-! ## A294880.P17905420028515196476

`A294879(A253560(n+1))%6`
-/

namespace A294880.P17905420028515196476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294879 (A253560 (n + 1)).toNat) 6

end

end A294880.P17905420028515196476

namespace A294880

/-- `A294879(A253560(n+1))%6` -/
def P17905420028515196476.Spec : Prop :=
  ∀ n, P17905420028515196476.a n = A294880 (n + 1)

end A294880

/-! ## A294880.P16127518207086258817

`A057427(n)*A294879(A129598(n+1))`
-/

namespace A294880.P16127518207086258817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A294879 (A129598 (n + 1)).toNat

end

end A294880.P16127518207086258817

namespace A294880

/-- `A057427(n)*A294879(A129598(n+1))` -/
def P16127518207086258817.Spec : Prop :=
  ∀ n, P16127518207086258817.a n = A294880 (n + 1)

end A294880

/-! ## A294880.P5600484405843122206

`lcm(A209615(n+1), A294879(A253560(n+1)))`
-/

namespace A294880.P5600484405843122206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209615 (n + 1)) (A294879 (A253560 (n + 1)).toNat)

end

end A294880.P5600484405843122206

namespace A294880

/-- `lcm(A209615(n+1), A294879(A253560(n+1)))` -/
def P5600484405843122206.Spec : Prop :=
  ∀ n, (P5600484405843122206.a n : ℤ) = A294880 (n + 1)

end A294880

/-! ## A294880.P11438237414253066392

`dr(A294879(A225004(n+1)))`
-/

namespace A294880.P11438237414253066392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A294879 (A225004 (n + 1)).toNat)

end

end A294880.P11438237414253066392

namespace A294880

/-- `dr(A294879(A225004(n+1)))` -/
def P11438237414253066392.Spec : Prop :=
  ∀ n, (P11438237414253066392.a n : ℤ) = A294880 (n + 1)

end A294880

/-! ## A294880.P4567731638455864930

`∑{d}[A294879(A225004(n+1)), A000010(#)]`
-/

namespace A294880.P4567731638455864930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294879 (A225004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A294880.P4567731638455864930

namespace A294880

/-- `∑{d}[A294879(A225004(n+1)), A000010(#)]` -/
def P4567731638455864930.Spec : Prop :=
  ∀ n, P4567731638455864930.a n = A294880 (n + 1)

end A294880

/-! ## A294880.P12671954440556310229

`A007318(∑[n])*A294879(A225004(n+1))`
-/

namespace A294880.P12671954440556310229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A294879 (A225004 (n + 1)).toNat

end

end A294880.P12671954440556310229

namespace A294880

/-- `A007318(∑[n])*A294879(A225004(n+1))` -/
def P12671954440556310229.Spec : Prop :=
  ∀ n, P12671954440556310229.a n = A294880 (n + 1)

end A294880

/-!
# A294881: Number of proper divisors of n that are irreducible when their binary expansion is interpreted as polynomial over GF(2).

The programs for A294881, there is no canonical definition to state claims against.
-/

/-! ## A294881.P15623509662110422398

`A294883(n+1)-A091225(n+1)`
-/

namespace A294881.P15623509662110422398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (n + 1) - A091225 (n + 1)

end

end A294881.P15623509662110422398

/-! ## A294881.P8977579376011137768

`A032741(n+1)-A294882(n+1)`
-/

namespace A294881.P8977579376011137768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294882 (n + 1)

end

end A294881.P8977579376011137768

/-! ## A294881.P7780842858116010709

`A000005(n+1)-(A294882(n+1)+1)`
-/

namespace A294881.P7780842858116010709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294882 (n + 1) + 1)

end

end A294881.P7780842858116010709

/-! ## A294881.P12355227167091975057

`∑{d}[n+1, A157658(#)*A294883((n+1)/#)]`
-/

namespace A294881.P12355227167091975057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294883 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294881.P12355227167091975057

/-! ## A294881.P11445489702000034696

`A226637(A000005(n+1)-A294882(n+1))`
-/

namespace A294881.P11445489702000034696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226637 (A000005 (n + 1) - A294882 (n + 1)).toNat

end

end A294881.P11445489702000034696

/-! ## A294881.P10916287854807195112

`A000005(n+1)-(A294884(n+1)+A091225(n+1))`
-/

namespace A294881.P10916287854807195112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294884 (n + 1) + A091225 (n + 1))

end

end A294881.P10916287854807195112

/-! ## A294881.P6450418109431235708

`A294891(n+1)+A294892(n+1)-A294882(n+1)`
-/

namespace A294881.P6450418109431235708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + (A294892 (n + 1) - A294882 (n + 1))

end

end A294881.P6450418109431235708

/-!
# A294882: Number of proper divisors of n that are not irreducible when their binary expansion is interpreted as polynomial over GF(2).

The programs for A294882, there is no canonical definition to state claims against.
-/

/-! ## A294882.P16391456126312769391

`A294884(n+1)+A091225(n+1)-1`
-/

namespace A294882.P16391456126312769391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294884 (n + 1) + A091225 (n + 1) - 1

end

end A294882.P16391456126312769391

/-! ## A294882.P8518288691218948959

`A032741(n+1)-A294881(n+1)`
-/

namespace A294882.P8518288691218948959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294881 (n + 1)

end

end A294882.P8518288691218948959

/-! ## A294882.P3683574682433536652

`log2(A100577(n+1))-A294881(n+1)`
-/

namespace A294882.P3683574682433536652
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A100577 (n + 1) : ℝ) - (A294881 (n + 1) : ℝ)

end

end A294882.P3683574682433536652

/-! ## A294882.P13172482108428190239

`A000005(n+1)-(A294881(n+1)+1)`
-/

namespace A294882.P13172482108428190239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294881 (n + 1) + 1)

end

end A294882.P13172482108428190239

/-! ## A294882.P664715432528433083

`∑{d}[n+1, A157658(#)*A294884((n+1)/#)]`
-/

namespace A294882.P664715432528433083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294884 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294882.P664715432528433083

/-! ## A294882.P18059807078273141434

`A032741(n+1)+A091225(n+1)-A294883(n+1)`
-/

namespace A294882.P18059807078273141434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A091225 (n + 1) - A294883 (n + 1))

end

end A294882.P18059807078273141434

/-! ## A294882.P7391805546975899907

`A294891(n+1)+A294892(n+1)-A294881(n+1)`
-/

namespace A294882.P7391805546975899907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + (A294892 (n + 1) - A294881 (n + 1))

end

end A294882.P7391805546975899907

/-! ## A294882.P11695886829154224795

`A296081(n+1)*A296082(n+1)-A294881(n+1)`
-/

namespace A294882.P11695886829154224795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296081 (n + 1) * A296082 (n + 1) - A294881 (n + 1)

end

end A294882.P11695886829154224795

/-!
# A294883: Number of divisors of n that are irreducible when their binary expansion is interpreted as polynomial over GF(2).

The programs for A294883, there is no canonical definition to state claims against.
-/

/-! ## A294883.P14436289544763430300

`A294881(n+1)+A091225(n+1)`
-/

namespace A294883.P14436289544763430300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (n + 1) + A091225 (n + 1)

end

end A294883.P14436289544763430300

/-! ## A294883.P8835165857471681802

`∑{d}[n+1, A091225(#)]`
-/

namespace A294883.P8835165857471681802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091225 d

end

end A294883.P8835165857471681802

/-! ## A294883.P4330370122044441850

`∑{d}[n+1, (A245701(#)+1)%2]`
-/

namespace A294883.P4330370122044441850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A245701 d + 1) 2

end

end A294883.P4330370122044441850

/-! ## A294883.P2280765586476121662

`∑{d}[n+1, A010051(A278233(#))]`
-/

namespace A294883.P2280765586476121662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A278233 d).toNat

end

end A294883.P2280765586476121662

/-! ## A294883.P15761771650210026920

`A000005(n+1)-A294884(n+1)`
-/

namespace A294883.P15761771650210026920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294884 (n + 1)

end

end A294883.P15761771650210026920

/-! ## A294883.P11578599316530656590

`A032741(n+1)+A091225(n+1)-A294882(n+1)`
-/

namespace A294883.P11578599316530656590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A091225 (n + 1) - A294882 (n + 1))

end

end A294883.P11578599316530656590

/-! ## A294883.P6049157033816709448

`A294893(n+1)+A294894(n+1)-A294884(n+1)`
-/

namespace A294883.P6049157033816709448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A294884 (n + 1))

end

end A294883.P6049157033816709448

/-! ## A294883.P4684411541372510619

`val(A305814(n+1), 2)`
-/

namespace A294883.P4684411541372510619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305814 (n + 1)).toNat 2

end

end A294883.P4684411541372510619

/-! ## A294883.P3243220337555855554

`A183063(2*(n+1))-A294884(n+1)`
-/

namespace A294883.P3243220337555855554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) - A294884 (n + 1)

end

end A294883.P3243220337555855554

/-! ## A294883.P14039519318334001445

`A294881(A138127(n+1))`
-/

namespace A294883.P14039519318334001445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (A138127 (n + 1)).toNat

end

end A294883.P14039519318334001445

/-!
# A294884: Number of divisors of n that are not irreducible when their binary expansion is interpreted as polynomial over GF(2).

The programs for A294884, there is no canonical definition to state claims against.
-/

/-! ## A294884.P5634210234045212724

`1+A294882(n+1)-A091225(n+1)`
-/

namespace A294884.P5634210234045212724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A294882 (n + 1) - A091225 (n + 1)

end

end A294884.P5634210234045212724

/-! ## A294884.P16231456915275381644

`∑{d}[n+1, A091247(#)]+1`
-/

namespace A294884.P16231456915275381644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091247 d + 1

end

end A294884.P16231456915275381644

/-! ## A294884.P1298493624511046923

`∑{d}[n+1, 1-A091225(#)]`
-/

namespace A294884.P1298493624511046923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A091225 d)

end

end A294884.P1298493624511046923

/-! ## A294884.P14059662466850158382

`∑{d}[n+1, A245701(#)%2]`
-/

namespace A294884.P14059662466850158382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A245701 d) 2

end

end A294884.P14059662466850158382

/-! ## A294884.P5653812635098852901

`Δ[A054519(n)]-A294883(n+1)`
-/

namespace A294884.P5653812635098852901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294883 (n + 1)

end

end A294884.P5653812635098852901

/-! ## A294884.P1079634728213885189

`A000005(n+1)-A294883(n+1)`
-/

namespace A294884.P1079634728213885189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294883 (n + 1)

end

end A294884.P1079634728213885189

/-! ## A294884.P6099617578448465332

`A032741(n+1)+1-A294883(n+1)`
-/

namespace A294884.P6099617578448465332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (1 - A294883 (n + 1))

end

end A294884.P6099617578448465332

/-! ## A294884.P15065178784719435041

`A334954(n+1)-(A294883(n+1)+1)`
-/

namespace A294884.P15065178784719435041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A294883 (n + 1) + 1)

end

end A294884.P15065178784719435041

/-! ## A294884.P12605429294575213685

`A294893(n+1)+A294894(n+1)-A294883(n+1)`
-/

namespace A294884.P12605429294575213685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) + (A294894 (n + 1) - A294883 (n + 1))

end

end A294884.P12605429294575213685

/-! ## A294884.P14043077578953550171

`∑{d}[n+1, A005171(A091203(#))]`
-/

namespace A294884.P14043077578953550171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005171 (A091203 d).toNat

end

end A294884.P14043077578953550171

/-! ## A294884.P16328221710748714138

`∑{d}[n+1, A010051(A091225(#)+A091206(#))]`
-/

namespace A294884.P16328221710748714138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A091225 d + A091206 d).toNat

end

end A294884.P16328221710748714138

/-!
# A294885: a(n) = A004125(n) mod n = [Sum_{i=1..n} (n mod i)] mod n.

The programs for A294885, the canonical program `A294885.P17017631997926307317` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294885 has offset 1).

The definition of A294885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294885.P17017631997926307317

`(n*∑[∑{d}[n+1, #]])%(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294885

/-- `(n*∑[∑{d}[n+1, #]])%(n+1)` -/
def P17017631997926307317.Spec : Prop :=
  ∀ n, (P17017631997926307317.a n : ℤ) = A294885 (n + 1)

theorem P17017631997926307317.correct : P17017631997926307317.Spec := by
  intro n
  simp only [A294885, Nat.add_sub_cancel]

end A294885

/-! ## A294885.P11553631714397248987

`A004125(n+1)%(n+1)`
-/

namespace A294885.P11553631714397248987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004125 (n + 1)) (n + 1 : ℤ)

end

end A294885.P11553631714397248987

namespace A294885

/-- `A004125(n+1)%(n+1)` -/
def P11553631714397248987.Spec : Prop :=
  ∀ n, P11553631714397248987.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P16508294449050064302

`A024920(n+1)%(n+1)`
-/

namespace A294885.P16508294449050064302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024920 (n + 1)) (n + 1 : ℤ)

end

end A294885.P16508294449050064302

namespace A294885

/-- `A024920(n+1)%(n+1)` -/
def P16508294449050064302.Spec : Prop :=
  ∀ n, P16508294449050064302.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P5698994311547995900

`A111490(n+1)%(n+1)`
-/

namespace A294885.P5698994311547995900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111490 (n + 1)) (n + 1 : ℤ)

end

end A294885.P5698994311547995900

namespace A294885

/-- `A111490(n+1)%(n+1)` -/
def P5698994311547995900.Spec : Prop :=
  ∀ n, P5698994311547995900.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P2354166079206544718

`∑[A033879(n+1)]%(n+1)`
-/

namespace A294885.P2354166079206544718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A294885.P2354166079206544718

namespace A294885

/-- `∑[A033879(n+1)]%(n+1)` -/
def P2354166079206544718.Spec : Prop :=
  ∀ n, P2354166079206544718.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P2238596699899813782

`∑[1-A237588(n+1)]%(n+1)`
-/

namespace A294885.P2238596699899813782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A294885.P2238596699899813782

namespace A294885

/-- `∑[1-A237588(n+1)]%(n+1)` -/
def P2238596699899813782.Spec : Prop :=
  ∀ n, P2238596699899813782.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P13888373284322728729

`(n*∑[A000203(n+1)])%(n+1)`
-/

namespace A294885.P13888373284322728729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A294885.P13888373284322728729

namespace A294885

/-- `(n*∑[A000203(n+1)])%(n+1)` -/
def P13888373284322728729.Spec : Prop :=
  ∀ n, P13888373284322728729.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P14628931359310131749

`∑[n+1-A001065(n+1)]%(n+1)`
-/

namespace A294885.P14628931359310131749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A294885.P14628931359310131749

namespace A294885

/-- `∑[n+1-A001065(n+1)]%(n+1)` -/
def P14628931359310131749.Spec : Prop :=
  ∀ n, P14628931359310131749.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P18318643221392721888

`∑[2*n-A064987(n+1)/(n+1)+2]%(n+1)`
-/

namespace A294885.P18318643221392721888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A294885.P18318643221392721888

namespace A294885

/-- `∑[2*n-A064987(n+1)/(n+1)+2]%(n+1)` -/
def P18318643221392721888.Spec : Prop :=
  ∀ n, P18318643221392721888.a n = A294885 (n + 1)

end A294885

/-! ## A294885.P7771045957997938730

`∑[2*n-(A245093(∑[n+1])-2)]%(n+1)`
-/

namespace A294885.P7771045957997938730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A245093 (∑ j ∈ Finset.range (n + 1), f2 j) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A294885.P7771045957997938730

namespace A294885

/-- `∑[2*n-(A245093(∑[n+1])-2)]%(n+1)` -/
def P7771045957997938730.Spec : Prop :=
  ∀ n, P7771045957997938730.a n = A294885 (n + 1)

end A294885

/-!
# A294886: Sum of deficient proper divisors of n.

The programs for A294886, the canonical program `A294886.P14072930957252500369` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294886 has offset 1).

The definition of A294886 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187793, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294886.P14072930957252500369

`A187793(n+1)-A294934(n+1)*(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294886

/-- `A187793(n+1)-A294934(n+1)*(n+1)` -/
def P14072930957252500369.Spec : Prop :=
  ∀ n, P14072930957252500369.a n = A294886 (n + 1)

theorem P14072930957252500369.correct : P14072930957252500369.Spec := by
  intro n
  simp only [A294886, Nat.add_sub_cancel]

end A294886

/-! ## A294886.P11773543282861696977

`∑{d}[n+1, #]-(n+1)-A294887(n+1)`
-/

namespace A294886.P11773543282861696977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A294887 (n + 1)

end

end A294886.P11773543282861696977

namespace A294886

/-- `∑{d}[n+1, #]-(n+1)-A294887(n+1)` -/
def P11773543282861696977.Spec : Prop :=
  ∀ n, P11773543282861696977.a n = A294886 (n + 1)

end A294886

/-! ## A294886.P2989226281457214021

`A001065(n+1)-A294887(n+1)`
-/

namespace A294886.P2989226281457214021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294887 (n + 1)

end

end A294886.P2989226281457214021

namespace A294886

/-- `A001065(n+1)-A294887(n+1)` -/
def P2989226281457214021.Spec : Prop :=
  ∀ n, P2989226281457214021.a n = A294886 (n + 1)

end A294886

/-! ## A294886.P15408640902435554985

`n+1-(A294887(n+1)+A033879(n+1))`
-/

namespace A294886.P15408640902435554985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A294887 (n + 1) + A033879 (n + 1))

end

end A294886.P15408640902435554985

namespace A294886

/-- `n+1-(A294887(n+1)+A033879(n+1))` -/
def P15408640902435554985.Spec : Prop :=
  ∀ n, P15408640902435554985.a n = A294886 (n + 1)

end A294886

/-! ## A294886.P11363370520850274118

`∑{d}[n+1, A157658(#)*A187793((n+1)/#)]`
-/

namespace A294886.P11363370520850274118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A187793 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294886.P11363370520850274118

namespace A294886

/-- `∑{d}[n+1, A157658(#)*A187793((n+1)/#)]` -/
def P11363370520850274118.Spec : Prop :=
  ∀ n, P11363370520850274118.a n = A294886 (n + 1)

end A294886

/-! ## A294886.P16227667133350738648

`A294888(n+1)+A294889(n+1)-A294887(n+1)`
-/

namespace A294886.P16227667133350738648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1) + (A294889 (n + 1) - A294887 (n + 1))

end

end A294886.P16227667133350738648

namespace A294886

/-- `A294888(n+1)+A294889(n+1)-A294887(n+1)` -/
def P16227667133350738648.Spec : Prop :=
  ∀ n, P16227667133350738648.a n = A294886 (n + 1)

end A294886

/-!
# A294887: Sum of nondeficient proper divisors of n.

The programs for A294887, the canonical program `A294887.P440205835715067692` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294887 has offset 1).

The definition of A294887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294887.P440205835715067692

`A001065(n+1)-A294886(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294887

/-- `A001065(n+1)-A294886(n+1)` -/
def P440205835715067692.Spec : Prop :=
  ∀ n, P440205835715067692.a n = A294887 (n + 1)

theorem P440205835715067692.correct : P440205835715067692.Spec := by
  intro n
  simp only [A294887, Nat.add_sub_cancel]

end A294887

/-! ## A294887.P9416314156129143642

`A091818(n+1)/2-A294886(n+1)`
-/

namespace A294887.P9416314156129143642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A294886 (n + 1) : ℚ)

end

end A294887.P9416314156129143642

namespace A294887

/-- `A091818(n+1)/2-A294886(n+1)` -/
def P9416314156129143642.Spec : Prop :=
  ∀ n, P9416314156129143642.a n = (A294887 (n + 1) : ℚ)

end A294887

/-! ## A294887.P8552219024226591399

`n+1-(A294886(n+1)+A033879(n+1))`
-/

namespace A294887.P8552219024226591399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A294886 (n + 1) + A033879 (n + 1))

end

end A294887.P8552219024226591399

namespace A294887

/-- `n+1-(A294886(n+1)+A033879(n+1))` -/
def P8552219024226591399.Spec : Prop :=
  ∀ n, P8552219024226591399.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P4720420475620623287

`n+1-(A294886(n+1)-A033880(n+1))`
-/

namespace A294887.P4720420475620623287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A294886 (n + 1) - A033880 (n + 1))

end

end A294887.P4720420475620623287

namespace A294887

/-- `n+1-(A294886(n+1)-A033880(n+1))` -/
def P4720420475620623287.Spec : Prop :=
  ∀ n, P4720420475620623287.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P16352467695821560938

`A294888(n+1)+A294889(n+1)-A294886(n+1)`
-/

namespace A294887.P16352467695821560938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294888 (n + 1) + (A294889 (n + 1) - A294886 (n + 1))

end

end A294887.P16352467695821560938

namespace A294887

/-- `A294888(n+1)+A294889(n+1)-A294886(n+1)` -/
def P16352467695821560938.Spec : Prop :=
  ∀ n, P16352467695821560938.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P9798441212314475994

`A319699(A103517(n))-A294886(n+1)`
-/

namespace A294887.P9798441212314475994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A103517 n).toNat - A294886 (n + 1)

end

end A294887.P9798441212314475994

namespace A294887

/-- `A319699(A103517(n))-A294886(n+1)` -/
def P9798441212314475994.Spec : Prop :=
  ∀ n, P9798441212314475994.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P18035736105400371891

`A004525(A091818(n+1)-2*A294886(n+1))`
-/

namespace A294887.P18035736105400371891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1) - 2 * A294886 (n + 1)).toNat

end

end A294887.P18035736105400371891

namespace A294887

/-- `A004525(A091818(n+1)-2*A294886(n+1))` -/
def P18035736105400371891.Spec : Prop :=
  ∀ n, P18035736105400371891.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P8771111859469663460

`A004525(A091818(n+1)-A294886(n+1)-A294886(n+1))`
-/

namespace A294887.P8771111859469663460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1) - A294886 (n + 1) - A294886 (n + 1)).toNat

end

end A294887.P8771111859469663460

namespace A294887

/-- `A004525(A091818(n+1)-A294886(n+1)-A294886(n+1))` -/
def P8771111859469663460.Spec : Prop :=
  ∀ n, P8771111859469663460.a n = A294887 (n + 1)

end A294887

/-! ## A294887.P5248991983016382570

`A004525(A091818(n+1))-A294886(n+1)`
-/

namespace A294887.P5248991983016382570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1)).toNat - A294886 (n + 1)

end

end A294887.P5248991983016382570

namespace A294887

/-- `A004525(A091818(n+1))-A294886(n+1)` -/
def P5248991983016382570.Spec : Prop :=
  ∀ n, P5248991983016382570.a n = A294887 (n + 1)

end A294887

/-!
# A294888: Sum of nonabundant proper divisors of n.

The programs for A294888, the canonical program `A294888.P2385972138544037667` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294888 has offset 1).

The definition of A294888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294888.P1413478580166354081

`A001065(n+1)-A294889(n+1)`
-/

namespace A294888.P1413478580166354081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294889 (n + 1)

end

end A294888.P1413478580166354081

namespace A294888

/-- `A001065(n+1)-A294889(n+1)` -/
def P1413478580166354081.Spec : Prop :=
  ∀ n, P1413478580166354081.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P3492141631554319409

`A091818(n+1)/2-A294889(n+1)`
-/

namespace A294888.P3492141631554319409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A294889 (n + 1) : ℚ)

end

end A294888.P3492141631554319409

namespace A294888

/-- `A091818(n+1)/2-A294889(n+1)` -/
def P3492141631554319409.Spec : Prop :=
  ∀ n, P3492141631554319409.a n = (A294888 (n + 1) : ℚ)

end A294888

/-! ## A294888.P1072566368349789402

`A000203(n+1)-(A294889(n+1)+n+1)`
-/

namespace A294888.P1072566368349789402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A294889 (n + 1) + (n + 1 : ℤ))

end

end A294888.P1072566368349789402

namespace A294888

/-- `A000203(n+1)-(A294889(n+1)+n+1)` -/
def P1072566368349789402.Spec : Prop :=
  ∀ n, P1072566368349789402.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P17755759658917090938

`n+1-(A294889(n+1)+A033879(n+1))`
-/

namespace A294888.P17755759658917090938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A294889 (n + 1) + A033879 (n + 1))

end

end A294888.P17755759658917090938

namespace A294888

/-- `n+1-(A294889(n+1)+A033879(n+1))` -/
def P17755759658917090938.Spec : Prop :=
  ∀ n, P17755759658917090938.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P18084354384894961774

`A007503(n+1)-(A294889(n+1)+A062249(n+1))`
-/

namespace A294888.P18084354384894961774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A294889 (n + 1) + A062249 (n + 1))

end

end A294888.P18084354384894961774

namespace A294888

/-- `A007503(n+1)-(A294889(n+1)+A062249(n+1))` -/
def P18084354384894961774.Spec : Prop :=
  ∀ n, P18084354384894961774.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P9162356103829645569

`A294886(n+1)+A294887(n+1)-A294889(n+1)`
-/

namespace A294888.P9162356103829645569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + (A294887 (n + 1) - A294889 (n + 1))

end

end A294888.P9162356103829645569

namespace A294888

/-- `A294886(n+1)+A294887(n+1)-A294889(n+1)` -/
def P9162356103829645569.Spec : Prop :=
  ∀ n, P9162356103829645569.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P4510446234396223340

`A325974(n+1)+A325977(n+1)-A294889(n+1)`
-/

namespace A294888.P4510446234396223340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (n + 1) + (A325977 (n + 1) - A294889 (n + 1))

end

end A294888.P4510446234396223340

namespace A294888

/-- `A325974(n+1)+A325977(n+1)-A294889(n+1)` -/
def P4510446234396223340.Spec : Prop :=
  ∀ n, P4510446234396223340.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P10096721290837774831

`A326126(n+1)-(A326128(n+1)+A294889(n+1))`
-/

namespace A294888.P10096721290837774831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (A326128 (n + 1) + A294889 (n + 1))

end

end A294888.P10096721290837774831

namespace A294888

/-- `A326126(n+1)-(A326128(n+1)+A294889(n+1))` -/
def P10096721290837774831.Spec : Prop :=
  ∀ n, P10096721290837774831.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P2385972138544037667

`A294886(n+1)+A082551(n+1)*A187794(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294888

/-- `A294886(n+1)+A082551(n+1)*A187794(n+1)` -/
def P2385972138544037667.Spec : Prop :=
  ∀ n, P2385972138544037667.a n = A294888 (n + 1)

theorem P2385972138544037667.correct : P2385972138544037667.Spec := by
  intro n
  simp only [A294888, Nat.add_sub_cancel]

end A294888

/-! ## A294888.P4372782370183822928

`A146076(n+1)+A000593(n+1)-(n+1)-A294889(n+1)`
-/

namespace A294888.P4372782370183822928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (A000593 (n + 1) - (n + 1 : ℤ)) - A294889 (n + 1)

end

end A294888.P4372782370183822928

namespace A294888

/-- `A146076(n+1)+A000593(n+1)-(n+1)-A294889(n+1)` -/
def P4372782370183822928.Spec : Prop :=
  ∀ n, P4372782370183822928.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P15007357649986606398

`A004525(A091818(n+1)-2*A294889(n+1))`
-/

namespace A294888.P15007357649986606398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1) - 2 * A294889 (n + 1)).toNat

end

end A294888.P15007357649986606398

namespace A294888

/-- `A004525(A091818(n+1)-2*A294889(n+1))` -/
def P15007357649986606398.Spec : Prop :=
  ∀ n, P15007357649986606398.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P5391002468486097645

`A004525(A091818(n+1)-A294889(n+1)-A294889(n+1))`
-/

namespace A294888.P5391002468486097645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1) - A294889 (n + 1) - A294889 (n + 1)).toNat

end

end A294888.P5391002468486097645

namespace A294888

/-- `A004525(A091818(n+1)-A294889(n+1)-A294889(n+1))` -/
def P5391002468486097645.Spec : Prop :=
  ∀ n, P5391002468486097645.a n = A294888 (n + 1)

end A294888

/-! ## A294888.P6617604901320018052

`A004525(A091818(n+1))-A294889(n+1)`
-/

namespace A294888.P6617604901320018052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091818 (n + 1)).toNat - A294889 (n + 1)

end

end A294888.P6617604901320018052

namespace A294888

/-- `A004525(A091818(n+1))-A294889(n+1)` -/
def P6617604901320018052.Spec : Prop :=
  ∀ n, P6617604901320018052.a n = A294888 (n + 1)

end A294888

/-!
# A294889: Sum of abundant proper divisors of n.

The programs for A294889, the canonical program `A294889.P8457081136466232752` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294889 has offset 1).

The definition of A294889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A187795, A294937, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294889.P8457081136466232752

`A187795(n+1)-A294937(n+1)*(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294889

/-- `A187795(n+1)-A294937(n+1)*(n+1)` -/
def P8457081136466232752.Spec : Prop :=
  ∀ n, P8457081136466232752.a n = A294889 (n + 1)

theorem P8457081136466232752.correct : P8457081136466232752.Spec := by
  intro n
  simp only [A294889, Nat.add_sub_cancel]

end A294889

/-! ## A294889.P3663956152667717036

`A001065(n+1)-A294888(n+1)`
-/

namespace A294889.P3663956152667717036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A294888 (n + 1)

end

end A294889.P3663956152667717036

namespace A294889

/-- `A001065(n+1)-A294888(n+1)` -/
def P3663956152667717036.Spec : Prop :=
  ∀ n, P3663956152667717036.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P660639625184042641

`A237588(n+1)-A294888(n+1)+n`
-/

namespace A294889.P660639625184042641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - A294888 (n + 1) + (n : ℤ)

end

end A294889.P660639625184042641

namespace A294889

/-- `A237588(n+1)-A294888(n+1)+n` -/
def P660639625184042641.Spec : Prop :=
  ∀ n, P660639625184042641.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P10931738735304160675

`A000203(n+1)-(A294888(n+1)+n+1)`
-/

namespace A294889.P10931738735304160675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A294888 (n + 1) + (n + 1 : ℤ))

end

end A294889.P10931738735304160675

namespace A294889

/-- `A000203(n+1)-(A294888(n+1)+n+1)` -/
def P10931738735304160675.Spec : Prop :=
  ∀ n, P10931738735304160675.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P392179596493899809

`n+1-(A294888(n+1)+A033879(n+1))`
-/

namespace A294889.P392179596493899809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A294888 (n + 1) + A033879 (n + 1))

end

end A294889.P392179596493899809

namespace A294889

/-- `n+1-(A294888(n+1)+A033879(n+1))` -/
def P392179596493899809.Spec : Prop :=
  ∀ n, P392179596493899809.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P9402763827800097921

`A007503(n+1)-(A294888(n+1)+A062249(n+1))`
-/

namespace A294889.P9402763827800097921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (A294888 (n + 1) + A062249 (n + 1))

end

end A294889.P9402763827800097921

namespace A294889

/-- `A007503(n+1)-(A294888(n+1)+A062249(n+1))` -/
def P9402763827800097921.Spec : Prop :=
  ∀ n, P9402763827800097921.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P9806649847766695980

`A294886(n+1)+A294887(n+1)-A294888(n+1)`
-/

namespace A294889.P9806649847766695980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294886 (n + 1) + (A294887 (n + 1) - A294888 (n + 1))

end

end A294889.P9806649847766695980

namespace A294889

/-- `A294886(n+1)+A294887(n+1)-A294888(n+1)` -/
def P9806649847766695980.Spec : Prop :=
  ∀ n, P9806649847766695980.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P7481592746229875681

`A325974(n+1)+A325977(n+1)-A294888(n+1)`
-/

namespace A294889.P7481592746229875681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325974 (n + 1) + (A325977 (n + 1) - A294888 (n + 1))

end

end A294889.P7481592746229875681

namespace A294889

/-- `A325974(n+1)+A325977(n+1)-A294888(n+1)` -/
def P7481592746229875681.Spec : Prop :=
  ∀ n, P7481592746229875681.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P17203361223148952393

`A326126(n+1)-(A326128(n+1)+A294888(n+1))`
-/

namespace A294889.P17203361223148952393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (A326128 (n + 1) + A294888 (n + 1))

end

end A294889.P17203361223148952393

namespace A294889

/-- `A326126(n+1)-(A326128(n+1)+A294888(n+1))` -/
def P17203361223148952393.Spec : Prop :=
  ∀ n, P17203361223148952393.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P1927809886175108277

`A146076(n+1)+A000593(n+1)-(n+1)-A294888(n+1)`
-/

namespace A294889.P1927809886175108277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (n + 1) + (A000593 (n + 1) - (n + 1 : ℤ)) - A294888 (n + 1)

end

end A294889.P1927809886175108277

namespace A294889

/-- `A146076(n+1)+A000593(n+1)-(n+1)-A294888(n+1)` -/
def P1927809886175108277.Spec : Prop :=
  ∀ n, P1927809886175108277.a n = A294889 (n + 1)

end A294889

/-! ## A294889.P15282642154431321736

`A187795(n+1)-(n+1)%A038528(A187795(n+1)+1)`
-/

namespace A294889.P15282642154431321736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187795 (n + 1) - Int.tmod (n + 1 : ℤ) (A038528 (A187795 (n + 1) + 1).toNat)

end

end A294889.P15282642154431321736

namespace A294889

/-- `A187795(n+1)-(n+1)%A038528(A187795(n+1)+1)` -/
def P15282642154431321736.Spec : Prop :=
  ∀ n, P15282642154431321736.a n = A294889 (n + 1)

end A294889

/-!
# A294890: Number of divisors of n that are primitively abundant (A091191).

The programs for A294890, the canonical program `A294890.P16317714658456508675` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294890 has offset 1).

The definition of A294890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294890.P1055268764117149013

`∑{d}[n+1, A294930(#)]`
-/

namespace A294890.P1055268764117149013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294930 d

end

end A294890.P1055268764117149013

namespace A294890

/-- `∑{d}[n+1, A294930(#)]` -/
def P1055268764117149013.Spec : Prop :=
  ∀ n, P1055268764117149013.a n = A294890 (n + 1)

end A294890

/-! ## A294890.P16317714658456508675

`∑{d}[n+1, A245552(A080224(#)²)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294890

/-- `∑{d}[n+1, A245552(A080224(#)²)]` -/
def P16317714658456508675.Spec : Prop :=
  ∀ n, P16317714658456508675.a n = A294890 (n + 1)

theorem P16317714658456508675.correct : P16317714658456508675.Spec := by
  intro n
  simp only [A294890, Nat.add_sub_cancel]

end A294890

/-! ## A294890.P654335769648718110

`floor(A327695(n+1)/A079866(n+1))`
-/

namespace A294890.P654335769648718110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327695 (n + 1) : ℚ) / (A079866 (n + 1) : ℚ)⌋

end

end A294890.P654335769648718110

namespace A294890

/-- `floor(A327695(n+1)/A079866(n+1))` -/
def P654335769648718110.Spec : Prop :=
  ∀ n, P654335769648718110.a n = A294890 (n + 1)

end A294890

/-! ## A294890.P15369530729644423623

`A033264(A303932(n+1)^A080224(n+1))`
-/

namespace A294890.P15369530729644423623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (SequenceMachineLib.roundAway ((A303932 (n + 1) : ℚ) ^ (A080224 (n + 1) : ℤ))).toNat

end

end A294890.P15369530729644423623

namespace A294890

/-- `A033264(A303932(n+1)^A080224(n+1))` -/
def P15369530729644423623.Spec : Prop :=
  ∀ n, P15369530729644423623.a n = A294890 (n + 1)

end A294890

/-! ## A294890.P3283081797897388103

`A320390(n+1)%A114212(A080224(n+1))`
-/

namespace A294890.P3283081797897388103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320390 (n + 1)) (A114212 (A080224 (n + 1)).toNat)

end

end A294890.P3283081797897388103

namespace A294890

/-- `A320390(n+1)%A114212(A080224(n+1))` -/
def P3283081797897388103.Spec : Prop :=
  ∀ n, P3283081797897388103.a n = A294890 (n + 1)

end A294890

/-! ## A294890.P8669199637705854955

`A325369(n+1)%A267046(A080224(n+1))`
-/

namespace A294890.P8669199637705854955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325369 (n + 1)) (A267046 (A080224 (n + 1)).toNat)

end

end A294890.P8669199637705854955

namespace A294890

/-- `A325369(n+1)%A267046(A080224(n+1))` -/
def P8669199637705854955.Spec : Prop :=
  ∀ n, P8669199637705854955.a n = A294890 (n + 1)

end A294890

/-! ## A294890.P9333101130952223962

`A133501(A091234(n+1))`
-/

namespace A294890.P9333101130952223962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (A091234 (n + 1)).toNat

end

end A294890.P9333101130952223962

namespace A294890

/-- `A133501(A091234(n+1))` -/
def P9333101130952223962.Spec : Prop :=
  ∀ n, P9333101130952223962.a n = A294890 (n + 1)

end A294890

/-!
# A294891: Number of proper divisors d of n such that Stern polynomial B(d,x) is irreducible.

The programs for A294891, there is no canonical definition to state claims against.
-/

/-! ## A294891.P17348120071132244379

`A294893(n+1)-A283991(n+1)`
-/

namespace A294891.P17348120071132244379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (n + 1) - A283991 (n + 1)

end

end A294891.P17348120071132244379

/-! ## A294891.P11697532462488386632

`A032741(n+1)-A294892(n+1)`
-/

namespace A294891.P11697532462488386632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294892 (n + 1)

end

end A294891.P11697532462488386632

/-! ## A294891.P13210284677058949179

`A000005(n+1)-(A294892(n+1)+1)`
-/

namespace A294891.P13210284677058949179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294892 (n + 1) + 1)

end

end A294891.P13210284677058949179

/-! ## A294891.P2180386065949666369

`∑{d}[n+1, A157658(#)*A294893((n+1)/#)]`
-/

namespace A294891.P2180386065949666369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294893 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294891.P2180386065949666369

/-! ## A294891.P12090310777606800781

`∑{d}[n+1, A057427(#-1)*A283991((n+1)/#)]`
-/

namespace A294891.P12090310777606800781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A283991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294891.P12090310777606800781

/-! ## A294891.P7013234693968651802

`A000005(n+1)-(A294894(n+1)+A283991(n+1))`
-/

namespace A294891.P7013234693968651802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294894 (n + 1) + A283991 (n + 1))

end

end A294891.P7013234693968651802

/-! ## A294891.P1064170663463165096

`A294881(n+1)+A294882(n+1)-A294892(n+1)`
-/

namespace A294891.P1064170663463165096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (n + 1) + (A294882 (n + 1) - A294892 (n + 1))

end

end A294891.P1064170663463165096

/-! ## A294891.P2502027127674605617

`A294901(n+1)+A294902(n+1)-A294892(n+1)`
-/

namespace A294891.P2502027127674605617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + (A294902 (n + 1) - A294892 (n + 1))

end

end A294891.P2502027127674605617

/-! ## A294891.P18331991576343125001

`A294901(n+1)-A057427(A091283(n+1))`
-/

namespace A294891.P18331991576343125001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) - A057427 (A091283 (n + 1)).toNat

end

end A294891.P18331991576343125001

/-! ## A294891.P13180750813816665237

`A294901(n+1)+A057428(n²)`
-/

namespace A294891.P13180750813816665237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + A057428 (n ^ 2)

end

end A294891.P13180750813816665237

/-! ## A294891.P4504466226973815409

`A294901(n+1)-A057427(n²)`
-/

namespace A294891.P4504466226973815409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) - A057427 (n ^ 2)

end

end A294891.P4504466226973815409

/-!
# A294892: Number of proper divisors d of n such that either d=1 or Stern polynomial B(d,x) is reducible.

The programs for A294892, there is no canonical definition to state claims against.
-/

/-! ## A294892.P7040991164919340706

`A294894(n+1)+A283991(n+1)-1`
-/

namespace A294892.P7040991164919340706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294894 (n + 1) + A283991 (n + 1) - 1

end

end A294892.P7040991164919340706

/-! ## A294892.P7255195834261167466

`A032741(n+1)-A294891(n+1)`
-/

namespace A294892.P7255195834261167466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A294891 (n + 1)

end

end A294892.P7255195834261167466

/-! ## A294892.P6586232388350935732

`A000005(n+1)-(A294891(n+1)+1)`
-/

namespace A294892.P6586232388350935732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294891 (n + 1) + 1)

end

end A294892.P6586232388350935732

/-! ## A294892.P15259865667634558234

`∑{d}[n+1, A157658(#)*A294894((n+1)/#)]`
-/

namespace A294892.P15259865667634558234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A294894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294892.P15259865667634558234

/-! ## A294892.P11767320147921977438

`A032741(n+1)+A283991(n+1)-A294893(n+1)`
-/

namespace A294892.P11767320147921977438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A283991 (n + 1) - A294893 (n + 1))

end

end A294892.P11767320147921977438

/-! ## A294892.P7537149117111201048

`A294881(n+1)+A294882(n+1)-A294891(n+1)`
-/

namespace A294892.P7537149117111201048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (n + 1) + (A294882 (n + 1) - A294891 (n + 1))

end

end A294892.P7537149117111201048

/-! ## A294892.P7100299315097965055

`A294901(n+1)+A294902(n+1)-A294891(n+1)`
-/

namespace A294892.P7100299315097965055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (n + 1) + (A294902 (n + 1) - A294891 (n + 1))

end

end A294892.P7100299315097965055

/-! ## A294892.P12082758099609235908

`A294902(n+1)+A057427(n²)`
-/

namespace A294892.P12082758099609235908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294902 (n + 1) + A057427 (n ^ 2)

end

end A294892.P12082758099609235908

/-!
# A294893: Number of divisors d of n such that Stern polynomial B(d,x) is irreducible.

The programs for A294893, there is no canonical definition to state claims against.
-/

/-! ## A294893.P16747690905276748987

`A294891(n+1)+A283991(n+1)`
-/

namespace A294893.P16747690905276748987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294891 (n + 1) + A283991 (n + 1)

end

end A294893.P16747690905276748987

/-! ## A294893.P18104027857311965352

`∑{d}[n+1, A283991(#)]`
-/

namespace A294893.P18104027857311965352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A283991 d

end

end A294893.P18104027857311965352

/-! ## A294893.P12377247307484358281

`Δ[A006218(n)]-A294894(n+1)`
-/

namespace A294893.P12377247307484358281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294894 (n + 1)

end

end A294893.P12377247307484358281

/-! ## A294893.P5803612542727445056

`A000005(n+1)-A294894(n+1)`
-/

namespace A294893.P5803612542727445056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294894 (n + 1)

end

end A294893.P5803612542727445056

/-! ## A294893.P628587457316228263

`A334954(n+1)-(A294894(n+1)+1)`
-/

namespace A294893.P628587457316228263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - (A294894 (n + 1) + 1)

end

end A294893.P628587457316228263

/-! ## A294893.P502136062219563021

`A032741(n+1)+A283991(n+1)-A294892(n+1)`
-/

namespace A294893.P502136062219563021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A283991 (n + 1) - A294892 (n + 1))

end

end A294893.P502136062219563021

/-! ## A294893.P10452652716071310865

`A195150(n+1)+A195155(n+1)-A294894(n+1)`
-/

namespace A294893.P10452652716071310865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A294894 (n + 1))

end

end A294893.P10452652716071310865

/-! ## A294893.P5599618130978129844

`A294883(n+1)+A294884(n+1)-A294894(n+1)`
-/

namespace A294893.P5599618130978129844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (n + 1) + (A294884 (n + 1) - A294894 (n + 1))

end

end A294893.P5599618130978129844

/-! ## A294893.P16324108077869111314

`A294903(n+1)+A294904(n+1)-A294894(n+1)`
-/

namespace A294893.P16324108077869111314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) + (A294904 (n + 1) - A294894 (n + 1))

end

end A294893.P16324108077869111314

/-! ## A294893.P2406647622204637816

`A324826(n+1)+A324827(n+1)-A294894(n+1)`
-/

namespace A294893.P2406647622204637816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A294894 (n + 1))

end

end A294893.P2406647622204637816

/-! ## A294893.P15223708826530149305

`A336041(n+1)+A349658(n+1)-A294894(n+1)`
-/

namespace A294893.P15223708826530149305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A294894 (n + 1))

end

end A294893.P15223708826530149305

/-! ## A294893.P15553140587810385919

`A353351(n+1)+A353352(n+1)-A294894(n+1)`
-/

namespace A294893.P15553140587810385919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A294894 (n + 1))

end

end A294893.P15553140587810385919

/-! ## A294893.P7678450241732522196

`A353361(n+1)+A353362(n+1)-A294894(n+1)`
-/

namespace A294893.P7678450241732522196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A294894 (n + 1))

end

end A294893.P7678450241732522196

/-! ## A294893.P9154751405661615707

`A353371(n+1)+A353372(n+1)-A294894(n+1)`
-/

namespace A294893.P9154751405661615707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A294894 (n + 1))

end

end A294893.P9154751405661615707

/-!
# A294894: Number of divisors d of n such that either d=1 or Stern polynomial B(d,x) is reducible.

The programs for A294894, there is no canonical definition to state claims against.
-/

/-! ## A294894.P11504388437891883954

`1+A294892(n+1)-A283991(n+1)`
-/

namespace A294894.P11504388437891883954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A294892 (n + 1) - A283991 (n + 1)

end

end A294894.P11504388437891883954

/-! ## A294894.P4200144342986353113

`∑{d}[n+1, and(1, A283991(#)+1)]`
-/

namespace A294894.P4200144342986353113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A283991 d + 1)

end

end A294894.P4200144342986353113

/-! ## A294894.P14720323567535937092

`Δ[A006218(n)]-A294893(n+1)`
-/

namespace A294894.P14720323567535937092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A294893 (n + 1)

end

end A294894.P14720323567535937092

/-! ## A294894.P5230743335029333361

`A000005(n+1)-A294893(n+1)`
-/

namespace A294894.P5230743335029333361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A294893 (n + 1)

end

end A294894.P5230743335029333361

/-! ## A294894.P11802115208188386702

`A032741(n+1)+1-A294893(n+1)`
-/

namespace A294894.P11802115208188386702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1 - A294893 (n + 1)

end

end A294894.P11802115208188386702

/-! ## A294894.P17938789850722751866

`A028310(∏{e}[n+1, #+1]-A294893(n+1))`
-/

namespace A294894.P17938789850722751866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A294893 (n + 1)).toNat

end

end A294894.P17938789850722751866

/-! ## A294894.P6862683348029590915

`A000027(∑{d}[n+1, gcd(n, #)]-A294893(n+1))`
-/

namespace A294894.P6862683348029590915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) - A294893 (n + 1)).toNat

end

end A294894.P6862683348029590915

/-! ## A294894.P15903055885063400354

`A006218(n+1)-A006218(n)-A294893(n+1)`
-/

namespace A294894.P15903055885063400354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A006218 n - A294893 (n + 1)

end

end A294894.P15903055885063400354

/-! ## A294894.P4013592892243210750

`A087990(n+1)+A087991(n+1)-A294893(n+1)`
-/

namespace A294894.P4013592892243210750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A294893 (n + 1))

end

end A294894.P4013592892243210750

/-! ## A294894.P15803509419802268009

`A000005(n+1)-(A294891(n+1)+A283991(n+1))`
-/

namespace A294894.P15803509419802268009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294891 (n + 1) + A283991 (n + 1))

end

end A294894.P15803509419802268009

/-! ## A294894.P6360956247243846595

`A195150(n+1)+A195155(n+1)-A294893(n+1)`
-/

namespace A294894.P6360956247243846595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A294893 (n + 1))

end

end A294894.P6360956247243846595

/-! ## A294894.P10587399968338832158

`A294883(n+1)+A294884(n+1)-A294893(n+1)`
-/

namespace A294894.P10587399968338832158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (n + 1) + (A294884 (n + 1) - A294893 (n + 1))

end

end A294894.P10587399968338832158

/-! ## A294894.P14559339099434310336

`A294903(n+1)+A294904(n+1)-A294893(n+1)`
-/

namespace A294894.P14559339099434310336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (n + 1) + (A294904 (n + 1) - A294893 (n + 1))

end

end A294894.P14559339099434310336

/-! ## A294894.P7288074088581092099

`A324826(n+1)+A324827(n+1)-A294893(n+1)`
-/

namespace A294894.P7288074088581092099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324826 (n + 1) + (A324827 (n + 1) - A294893 (n + 1))

end

end A294894.P7288074088581092099

/-! ## A294894.P17991008603330355433

`A336041(n+1)+A349658(n+1)-A294893(n+1)`
-/

namespace A294894.P17991008603330355433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336041 (n + 1) + (A349658 (n + 1) - A294893 (n + 1))

end

end A294894.P17991008603330355433

/-! ## A294894.P11735016159247149071

`A353351(n+1)+A353352(n+1)-A294893(n+1)`
-/

namespace A294894.P11735016159247149071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A294893 (n + 1))

end

end A294894.P11735016159247149071

/-! ## A294894.P8081933244146352276

`∑{d}[n+1, A057427(#)]-A294893(n+1)`
-/

namespace A294894.P8081933244146352276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A294893 (n + 1)

end

end A294894.P8081933244146352276

/-!
# A294895: a(n) = Product_{d|n, gcd(d,n/d)>1} prime(gcd(d,n/d)-1).

The programs for A294895, the canonical program `A294895.P16892911565145110880` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294895 has offset 1).

The definition of A294895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294895.P12945761425900142147

`A064989(A294876(n+1))`
-/

namespace A294895.P12945761425900142147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A294876 (n + 1)).toNat

end

end A294895.P12945761425900142147

namespace A294895

/-- `A064989(A294876(n+1))` -/
def P12945761425900142147.Spec : Prop :=
  ∀ n, P12945761425900142147.a n = A294895 (n + 1)

end A294895

/-! ## A294895.P16892911565145110880

`∏{d}[n+1, A008578(A000188(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A294895

/-- `∏{d}[n+1, A008578(A000188(#))]` -/
def P16892911565145110880.Spec : Prop :=
  ∀ n, P16892911565145110880.a n = A294895 (n + 1)

theorem P16892911565145110880.correct : P16892911565145110880.Spec := by
  intro n
  simp only [A294895, Nat.add_sub_cancel]

end A294895

/-!
# A294896: a(n) = gcd(A000203(n), A005187(n)).

The programs for A294896, the canonical program `A294896.P17606879483399345842` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294896 has offset 1).

The definition of A294896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294896.P2278106844641445468

`A000203(n+1)/A295655(n+1)`
-/

namespace A294896.P2278106844641445468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295655 (n + 1) : ℚ)

end

end A294896.P2278106844641445468

namespace A294896

/-- `A000203(n+1)/A295655(n+1)` -/
def P2278106844641445468.Spec : Prop :=
  ∀ n, P2278106844641445468.a n = (A294896 (n + 1) : ℚ)

end A294896

/-! ## A294896.P2936189913120222387

`A005187(n+1)/A295656(n+1)`
-/

namespace A294896.P2936189913120222387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) : ℚ) / (A295656 (n + 1) : ℚ)

end

end A294896.P2936189913120222387

namespace A294896

/-- `A005187(n+1)/A295656(n+1)` -/
def P2936189913120222387.Spec : Prop :=
  ∀ n, P2936189913120222387.a n = (A294896 (n + 1) : ℚ)

end A294896

/-! ## A294896.P17606879483399345842

`gcd(Δ[A160664(n)], A294898(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294896

/-- `gcd(Δ[A160664(n)], A294898(n+1))` -/
def P17606879483399345842.Spec : Prop :=
  ∀ n, (P17606879483399345842.a n : ℤ) = A294896 (n + 1)

theorem P17606879483399345842.correct : P17606879483399345842.Spec := by
  intro n
  simp only [A294896, Nat.add_sub_cancel]

end A294896

/-! ## A294896.P1724061180978365351

`gcd(A000203(n+1), A005187(n+1))`
-/

namespace A294896.P1724061180978365351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A005187 (n + 1))

end

end A294896.P1724061180978365351

namespace A294896

/-- `gcd(A000203(n+1), A005187(n+1))` -/
def P1724061180978365351.Spec : Prop :=
  ∀ n, (P1724061180978365351.a n : ℤ) = A294896 (n + 1)

end A294896

/-! ## A294896.P16091057239859313503

`(A294898(n+1)+A000203(n+1))/A295656(n+1)`
-/

namespace A294896.P16091057239859313503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294898 (n + 1) + A000203 (n + 1) : ℚ) / (A295656 (n + 1) : ℚ)

end

end A294896.P16091057239859313503

namespace A294896

/-- `(A294898(n+1)+A000203(n+1))/A295656(n+1)` -/
def P16091057239859313503.Spec : Prop :=
  ∀ n, P16091057239859313503.a n = (A294896 (n + 1) : ℚ)

end A294896

/-! ## A294896.P14074665849277521416

`(A005187(n+1)-A294898(n+1))/A295655(n+1)`
-/

namespace A294896.P14074665849277521416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (n + 1) - A294898 (n + 1) : ℚ) / (A295655 (n + 1) : ℚ)

end

end A294896.P14074665849277521416

namespace A294896

/-- `(A005187(n+1)-A294898(n+1))/A295655(n+1)` -/
def P14074665849277521416.Spec : Prop :=
  ∀ n, P14074665849277521416.a n = (A294896 (n + 1) : ℚ)

end A294896

/-!
# A294897: a(n) = Product_{d|n, gcd(d,n/d)>1} prime(A101296(gcd(d,n/d))-1).

The programs for A294897, there is no canonical definition to state claims against.
-/

/-! ## A294897.P3373530787277995380

`A353394(A294876(n+1))`
-/

namespace A294897.P3373530787277995380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353394 (A294876 (n + 1)).toNat

end

end A294897.P3373530787277995380

/-! ## A294897.P18138120757174871339

`A336158(4*A294876(n+1))`
-/

namespace A294897.P18138120757174871339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (4 * A294876 (n + 1)).toNat

end

end A294897.P18138120757174871339

/-! ## A294897.P10346881167541235005

`A056926(A046523(A294895(n+1)²))`
-/

namespace A294897.P10346881167541235005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A046523 (A294895 (n + 1) ^ 2).toNat).toNat

end

end A294897.P10346881167541235005

/-! ## A294897.P2879688508746502092

`A046523(A294895(n+1)%A141214(n))`
-/

namespace A294897.P2879688508746502092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A294895 (n + 1)) (A141214 n)).toNat

end

end A294897.P2879688508746502092

/-! ## A294897.P192222243600908954

`A336158(A294876(n+1))%A141214(n)`
-/

namespace A294897.P192222243600908954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336158 (A294876 (n + 1)).toNat) (A141214 n)

end

end A294897.P192222243600908954

/-!
# A294898: Deficiency minus binary weight: a(n) = A033879(n) - A000120(n) = A005187(n) - A000203(n).

The programs for A294898, the canonical program `A294898.P11311681912968614755` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294898 has offset 1).

The definition of A294898 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n+1)-A000203(n+1)` (program `A294898.P11311681912968614755`, by `A294898.P11311681912968614755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294898.P11311681912968614755

`A005187(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294898

/-- `A005187(n+1)-A000203(n+1)` -/
def P11311681912968614755.Spec : Prop :=
  ∀ n, P11311681912968614755.a n = A294898 (n + 1)

theorem P11311681912968614755.correct : P11311681912968614755.Spec := by
  intro n
  simp only [A294898, Nat.add_sub_cancel]

end A294898

/-! ## A294898.P5382584399910615149

`A011371(n+1)-A001065(n+1)`
-/

namespace A294898.P5382584399910615149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A001065 (n + 1)

end

end A294898.P5382584399910615149

namespace A294898

/-- `A011371(n+1)-A001065(n+1)` -/
def P5382584399910615149.Spec : Prop :=
  ∀ n, P5382584399910615149.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P6496574482852447618

`A033879(n+1)-A000120(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294898.P6496574482852447618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A000120 (n + 1)

end

end A294898.P6496574482852447618

namespace A294898

/-- `A033879(n+1)-A000120(n+1)` -/
def P6496574482852447618.Spec : Prop :=
  ∀ n, P6496574482852447618.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P9809056360588525485

`∑[log2(xor(n, n+1)+1)]-∑{d}[n+1, #]`
-/

namespace A294898.P9809056360588525485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

end

end A294898.P9809056360588525485

namespace A294898

/-- `∑[log2(xor(n, n+1)+1)]-∑{d}[n+1, #]` -/
def P9809056360588525485.Spec : Prop :=
  ∀ n, P9809056360588525485.a n = (A294898 (n + 1) : ℝ)

end A294898

/-! ## A294898.P7784962194099226876

`∑[val(n+1, 2)]-(∑{d}[n+1, #]-(n+1))`
-/

namespace A294898.P7784962194099226876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A294898.P7784962194099226876

namespace A294898

/-- `∑[val(n+1, 2)]-(∑{d}[n+1, #]-(n+1))` -/
def P7784962194099226876.Spec : Prop :=
  ∀ n, P7784962194099226876.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P2354852614494640247

`∑{d}[n+1, A297114(#)]`
-/

namespace A294898.P2354852614494640247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297114 d

end

end A294898.P2354852614494640247

namespace A294898

/-- `∑{d}[n+1, A297114(#)]` -/
def P2354852614494640247.Spec : Prop :=
  ∀ n, P2354852614494640247.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P7078999749168798509

`∑[A001222(xor(n, n+1)+1)]-∑{d}[n+1, #]`
-/

namespace A294898.P7078999749168798509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.xor n (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A294898.P7078999749168798509

namespace A294898

/-- `∑[A001222(xor(n, n+1)+1)]-∑{d}[n+1, #]` -/
def P7078999749168798509.Spec : Prop :=
  ∀ n, P7078999749168798509.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P4315304818529943682

`∑[A000005(or(n, n+1)-n)]-∑{d}[n+1, #]`
-/

namespace A294898.P4315304818529943682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor n (n + 1) - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A294898.P4315304818529943682

namespace A294898

/-- `∑[A000005(or(n, n+1)-n)]-∑{d}[n+1, #]` -/
def P4315304818529943682.Spec : Prop :=
  ∀ n, P4315304818529943682.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P4331146930905108289

`A235796(n+1)-A048881(n)`
-/

namespace A294898.P4331146930905108289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) - A048881 n

end

end A294898.P4331146930905108289

namespace A294898

/-- `A235796(n+1)-A048881(n)` -/
def P4331146930905108289.Spec : Prop :=
  ∀ n, P4331146930905108289.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P8190916872571464392

`A033879(n+1)-Δ[A000788(n)]`
-/

namespace A294898.P8190916872571464392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - (f1 (n + 1) - f1 n)

end

end A294898.P8190916872571464392

namespace A294898

/-- `A033879(n+1)-Δ[A000788(n)]` -/
def P8190916872571464392.Spec : Prop :=
  ∀ n, P8190916872571464392.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P15283232394622104599

`A317844(n+1)+A297114(n+1)`
-/

namespace A294898.P15283232394622104599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317844 (n + 1) + A297114 (n + 1)

end

end A294898.P15283232394622104599

namespace A294898

/-- `A317844(n+1)+A297114(n+1)` -/
def P15283232394622104599.Spec : Prop :=
  ∀ n, P15283232394622104599.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P3174252720717080295

`A033879(n+1)-(A048881(n)+1)`
-/

namespace A294898.P3174252720717080295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - (A048881 n + 1)

end

end A294898.P3174252720717080295

namespace A294898

/-- `A033879(n+1)-(A048881(n)+1)` -/
def P3174252720717080295.Spec : Prop :=
  ∀ n, P3174252720717080295.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P15572201339244662115

`A318448(n+1)-A318447(n+1)`
-/

namespace A294898.P15572201339244662115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) - A318447 (n + 1)

end

end A294898.P15572201339244662115

namespace A294898

/-- `A318448(n+1)-A318447(n+1)` -/
def P15572201339244662115.Spec : Prop :=
  ∀ n, P15572201339244662115.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P12701342522348641319

`A344769(n+1)-A344765(n+1)`
-/

namespace A294898.P12701342522348641319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344769 (n + 1) - A344765 (n + 1)

end

end A294898.P12701342522348641319

namespace A294898

/-- `A344769(n+1)-A344765(n+1)` -/
def P12701342522348641319.Spec : Prop :=
  ∀ n, P12701342522348641319.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P3368152582113571010

`∑[A001511(n+1)]-A000203(n+1)`
-/

namespace A294898.P3368152582113571010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A294898.P3368152582113571010

namespace A294898

/-- `∑[A001511(n+1)]-A000203(n+1)` -/
def P3368152582113571010.Spec : Prop :=
  ∀ n, P3368152582113571010.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P13302339131261200036

`A005187(n+1)-A245092(2*n+1)`
-/

namespace A294898.P13302339131261200036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A245092 (2 * n + 1)

end

end A294898.P13302339131261200036

namespace A294898

/-- `A005187(n+1)-A245092(2*n+1)` -/
def P13302339131261200036.Spec : Prop :=
  ∀ n, P13302339131261200036.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P3073759707332507433

`∑[A007814(n+1)+1]-A000203(n+1)`
-/

namespace A294898.P3073759707332507433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A294898.P3073759707332507433

namespace A294898

/-- `∑[A007814(n+1)+1]-A000203(n+1)` -/
def P3073759707332507433.Spec : Prop :=
  ∀ n, P3073759707332507433.a n = A294898 (n + 1)

end A294898

/-! ## A294898.P18356137352156191917

`∑{d}[n+1, A008683(#)*A318448((n+1)/#)]`
-/

namespace A294898.P18356137352156191917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A318448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A294898.P18356137352156191917

namespace A294898

/-- `∑{d}[n+1, A008683(#)*A318448((n+1)/#)]` -/
def P18356137352156191917.Spec : Prop :=
  ∀ n, P18356137352156191917.a n = A294898 (n + 1)

end A294898

/-!
# A294899: a(n) = A000203(n) XOR A005187(n), where XOR is bitwise-XOR, A003987.

The programs for A294899, the canonical program `A294899.P15180624970103655548` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294899 has offset 1).

The definition of A294899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294899.P15180624970103655548

`xor(∑[val(n+1, 2)+1], ∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A294899

/-- `xor(∑[val(n+1, 2)+1], ∑{d}[n+1, #])` -/
def P15180624970103655548.Spec : Prop :=
  ∀ n, (P15180624970103655548.a n : ℤ) = A294899 (n + 1)

theorem P15180624970103655548.correct : P15180624970103655548.Spec := by
  intro n
  simp only [A294899, Nat.add_sub_cancel]

end A294899

/-! ## A294899.P17777932184501489375

`xor(∑[val(n+1, 2)+1], A000203(n+1))`
-/

namespace A294899.P17777932184501489375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000203 (n + 1))

end

end A294899.P17777932184501489375

namespace A294899

/-- `xor(∑[val(n+1, 2)+1], A000203(n+1))` -/
def P17777932184501489375.Spec : Prop :=
  ∀ n, P17777932184501489375.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P7530745787549308841

`xor(A000203(n+1), A005187(n+1))`
-/

namespace A294899.P7530745787549308841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (A005187 (n + 1))

end

end A294899.P7530745787549308841

namespace A294899

/-- `xor(A000203(n+1), A005187(n+1))` -/
def P7530745787549308841.Spec : Prop :=
  ∀ n, P7530745787549308841.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P1373679488530206031

`xor(A000203(n+1), ∑[A001511(n+1)])`
-/

namespace A294899.P1373679488530206031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294899.P1373679488530206031

namespace A294899

/-- `xor(A000203(n+1), ∑[A001511(n+1)])` -/
def P1373679488530206031.Spec : Prop :=
  ∀ n, P1373679488530206031.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P2794063932131525309

`xor(A005187(n+1), A245092(2*n+1))`
-/

namespace A294899.P2794063932131525309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 (n + 1)) (A245092 (2 * n + 1))

end

end A294899.P2794063932131525309

namespace A294899

/-- `xor(A005187(n+1), A245092(2*n+1))` -/
def P2794063932131525309.Spec : Prop :=
  ∀ n, P2794063932131525309.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P5669742268074477129

`xor(A000203(n+1), ∑[A007814(n+1)+1])`
-/

namespace A294899.P5669742268074477129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294899.P5669742268074477129

namespace A294899

/-- `xor(A000203(n+1), ∑[A007814(n+1)+1])` -/
def P5669742268074477129.Spec : Prop :=
  ∀ n, P5669742268074477129.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P17342851408864118024

`xor(∑[A302035(2*(n+1))], ∑{d}[n+1, #])`
-/

namespace A294899.P17342851408864118024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302035 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A294899.P17342851408864118024

namespace A294899

/-- `xor(∑[A302035(2*(n+1))], ∑{d}[n+1, #])` -/
def P17342851408864118024.Spec : Prop :=
  ∀ n, P17342851408864118024.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P7298367943723328429

`xor(∑[A067029(2*(n+1))], ∑{d}[n+1, #])`
-/

namespace A294899.P7298367943723328429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A294899.P7298367943723328429

namespace A294899

/-- `xor(∑[A067029(2*(n+1))], ∑{d}[n+1, #])` -/
def P7298367943723328429.Spec : Prop :=
  ∀ n, P7298367943723328429.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P1103781148670010433

`xor(A000203(n+1), A011371(2*(n+1)))`
-/

namespace A294899.P1103781148670010433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000203 (n + 1)) (A011371 (2 * (n + 1)))

end

end A294899.P1103781148670010433

namespace A294899

/-- `xor(A000203(n+1), A011371(2*(n+1)))` -/
def P1103781148670010433.Spec : Prop :=
  ∀ n, P1103781148670010433.a n = A294899 (n + 1)

end A294899

/-! ## A294899.P11782077667025411985

`xor(A005187(n+1), A323243(A005940(n+2)))`
-/

namespace A294899.P11782077667025411985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 (n + 1)) (A323243 (A005940 (n + 2)).toNat)

end

end A294899.P11782077667025411985

namespace A294899

/-- `xor(A005187(n+1), A323243(A005940(n+2)))` -/
def P11782077667025411985.Spec : Prop :=
  ∀ n, P11782077667025411985.a n = A294899 (n + 1)

end A294899

