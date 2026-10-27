import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A213001: Base-13 analog of A208059.

The programs for A213001, there is no canonical definition to state claims against.
-/

/-! ## A213001.P14406439978209610906

`A352855(A340763(2*n%2+n*a(n-1)-1))` with `a(0)=0`
-/

namespace A213001.P14406439978209610906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A352855 (A340763 (((2 * (n % 2) : ℕ) : ℤ) + ((n : ℤ) * a (n - 1) - 1)).toNat).toNat

end

end A213001.P14406439978209610906

/-! ## A213001.P5570944520686700888

`A028242(Δ[A336158(A167104(n))])`
-/

namespace A213001.P5570944520686700888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A167104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (n + 1) - f1 n).toNat

end

end A213001.P5570944520686700888

/-! ## A213001.P15473120558462977307

`A006882(A006927(n))%A006861(n+1)`
-/

namespace A213001.P15473120558462977307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (A006927 n).toNat) (A006861 (n + 1))

end

end A213001.P15473120558462977307

/-! ## A213001.P18228462485350958517

`A006882(A014375(n))%A061419(n+1)`
-/

namespace A213001.P18228462485350958517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006882 (A014375 n).toNat) (A061419 (n + 1))

end

end A213001.P18228462485350958517

/-! ## A213001.P6079671271716886140

`A115009(ceil(A101907(n+1)/A199921(n+1)))`
-/

namespace A213001.P6079671271716886140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115009 ⌈(A101907 (n + 1) : ℚ) / (A199921 (n + 1) : ℚ)⌉.toNat

end

end A213001.P6079671271716886140

/-!
# A213002: Base-14 analog of A208059.

The programs for A213002, there is no canonical definition to state claims against.
-/

/-! ## A213002.P7780730361508979526

`A213003(a(n-2)+n)` with `a(0)=0, a(1)=1`
-/

namespace A213002.P7780730361508979526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A213003 (a (n - 2) + (n : ℤ)).toNat

end

end A213002.P7780730361508979526

/-! ## A213002.P8017467685184028979

`A213003(lt[ceil(sqrt(n))²-n, 6])`
-/

namespace A213002.P8017467685184028979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213003 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213002.P8017467685184028979

/-! ## A213002.P3329270835784702983

`A213003(n^(char[n²]/2)+n)`
-/

namespace A213002.P3329270835784702983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213003 (SequenceMachineLib.roundAway ((n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ) + (n : ℝ))).toNat

end

end A213002.P3329270835784702983

/-! ## A213002.P9815203559206088889

`A213004(lt[A007306(n), 8])`
-/

namespace A213002.P9815203559206088889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213004 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213002.P9815203559206088889

/-! ## A213002.P4179278247797385244

`A213004(lt[A320647(n+5), 1])`
-/

namespace A213002.P4179278247797385244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213004 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A213002.P4179278247797385244

/-!
# A213003: Base-15 analog of A208059.

The programs for A213003, there is no canonical definition to state claims against.
-/

/-! ## A213003.P10485368171054129971

`A147073(a(n-1)+abs(8-n))` with `a(0)=0`
-/

namespace A213003.P10485368171054129971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A147073 (a (n - 1) + |8 - (n : ℤ)|).toNat

end

end A213003.P10485368171054129971

/-! ## A213003.P18191326848813967116

`A327195(xor(2, A205295(n)))`
-/

namespace A213003.P18191326848813967116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 (Int.xor 2 (A205295 n)).toNat

end

end A213003.P18191326848813967116

/-! ## A213003.P14319241053749205763

`A213002(round(log2(A192366(n))))`
-/

namespace A213003.P14319241053749205763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213002 (SequenceMachineLib.roundAway (Real.logb 2 (A192366 n : ℝ))).toNat

end

end A213003.P14319241053749205763

/-! ## A213003.P6878279621484024467

`A213002(∑[A213027(n)]-1)`
-/

namespace A213003.P6878279621484024467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213002 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A213003.P6878279621484024467

/-! ## A213003.P5203499986431989152

`ceil(A081291(n)/A010932(n))`
-/

namespace A213003.P5203499986431989152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081291 n : ℚ) / (A010932 n : ℚ)⌉

end

end A213003.P5203499986431989152

/-!
# A213008: Triangle T(n,k) of number of distinct values of multinomial coefficients corresponding to sequence A026820 (n >= 1, 1 <= k <= n).

The programs for A213008, there is no canonical definition to state claims against.
-/

/-! ## A213008.P5430479608657954346

`A215520(n+1)-A059648(A157275(n))`
-/

namespace A213008.P5430479608657954346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (n + 1) - A059648 (A157275 n).toNat

end

end A213008.P5430479608657954346

/-! ## A213008.P1487702257233432285

`A215520(n+1)-A185284(A034521(n+1))`
-/

namespace A213008.P1487702257233432285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (n + 1) - A185284 (A034521 (n + 1)).toNat

end

end A213008.P1487702257233432285

/-! ## A213008.P15536644186390594222

`A215520(n+1)-A257000(A296166(n+1))`
-/

namespace A213008.P15536644186390594222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215520 (n + 1) - A257000 (A296166 (n + 1)).toNat

end

end A213008.P15536644186390594222

/-!
# A213009: G.f. A(x) satisfies: A(A(x)) = x+x^2 + x*A(A(A(A(x)))).

The programs for A213009, there is no canonical definition to state claims against.
-/

/-! ## A213009.P17446140449570859118

`A004525(ceil(sqrt(A241001(n))))`
-/

namespace A213009.P17446140449570859118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ⌈Real.sqrt (A241001 n : ℝ)⌉.toNat

end

end A213009.P17446140449570859118

/-! ## A213009.P17777433326419261857

`A002264(A002868(n))+∏[n-(n-1)%2]`
-/

namespace A213009.P17777433326419261857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002868 n).toNat + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A213009.P17777433326419261857

/-! ## A213009.P1887631203320425589

`A317022(n)-A168131(A000975(n))`
-/

namespace A213009.P1887631203320425589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317022 n - A168131 (A000975 n).toNat

end

end A213009.P1887631203320425589

/-!
# A213010: G.f. satisfies: A(x) = x+x^2 + x*A(A(x)).

The programs for A213010, there is no canonical definition to state claims against.
-/

/-! ## A213010.P4152173932865647921

`A046699(∑[A185056(n+1)])`
-/

namespace A213010.P4152173932865647921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213010.P4152173932865647921

/-! ## A213010.P13570985203123222784

`A111701(A000831(n))+A052701(n)`
-/

namespace A213010.P13570985203123222784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (A000831 n).toNat + A052701 n

end

end A213010.P13570985203123222784

/-! ## A213010.P8823877262556251855

`A001057(or(A000225(n), A030823(n+1)))`
-/

namespace A213010.P8823877262556251855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor (A000225 n) (A030823 (n + 1))).toNat

end

end A213010.P8823877262556251855

/-!
# A213011: Union of positive squares and sums of first k primes.

The programs for A213011, the canonical program `A213011.P2797359215973107043` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213011 has offset 1).

The definition of A213011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213011.P13050231444155462725

`∪[(n+1)², A007504(n+1)]`
-/

namespace A213011.P13050231444155462725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213011.P13050231444155462725

namespace A213011

/-- `∪[(n+1)², A007504(n+1)]` -/
def P13050231444155462725.Spec : Prop :=
  ∀ n, (P13050231444155462725.a n : ℤ) = A213011 (n + 1)

end A213011

/-! ## A213011.P2797359215973107043

`∪[(n+1)², ∑[A000040(n+1)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213011

/-- `∪[(n+1)², ∑[A000040(n+1)]]` -/
def P2797359215973107043.Spec : Prop :=
  ∀ n, (P2797359215973107043.a n : ℤ) = A213011 (n + 1)

theorem P2797359215973107043.correct : P2797359215973107043.Spec := by
  intro n
  simp only [A213011, Nat.add_sub_cancel]

end A213011

/-! ## A213011.P16503391751598187443

`∪[(n+1)², ∑[A008578(n+2)]]`
-/

namespace A213011.P16503391751598187443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213011.P16503391751598187443

namespace A213011

/-- `∪[(n+1)², ∑[A008578(n+2)]]` -/
def P16503391751598187443.Spec : Prop :=
  ∀ n, (P16503391751598187443.a n : ℤ) = A213011 (n + 1)

end A213011

/-! ## A213011.P2249056345192021317

`∪[(n+1)², ∑[record[A006530(n+2)]]]`
-/

namespace A213011.P2249056345192021317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213011.P2249056345192021317

namespace A213011

/-- `∪[(n+1)², ∑[record[A006530(n+2)]]]` -/
def P2249056345192021317.Spec : Prop :=
  ∀ n, (P2249056345192021317.a n : ℤ) = A213011 (n + 1)

end A213011

/-! ## A213011.P16927436204613565716

`∪[(n+1)², ∑[record[A020639(n+2)]]]`
-/

namespace A213011.P16927436204613565716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213011.P16927436204613565716

namespace A213011

/-- `∪[(n+1)², ∑[record[A020639(n+2)]]]` -/
def P16927436204613565716.Spec : Prop :=
  ∀ n, (P16927436204613565716.a n : ℤ) = A213011 (n + 1)

end A213011

/-!
# A213012: Trajectory of 26 under the Reverse and Add! operation carried out in base 2.

The programs for A213012, there is no canonical definition to state claims against.
-/

/-! ## A213012.P9921031499694341002

`A055944(a(n-1))` with `a(0)=26`
-/

namespace A213012.P9921031499694341002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  A055944 (a (n - 1)).toNat

end

end A213012.P9921031499694341002

/-! ## A213012.P140599568204082528

`A055944(a(A023443(n)))+A000007(n)` with `a(0)=26`
-/

namespace A213012.P140599568204082528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000007 n

end

end A213012.P140599568204082528

/-! ## A213012.P17319063458193356543

`A055944(a(A023443(n)))+A000038(n)` with `a(0)=26`
-/

namespace A213012.P17319063458193356543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000038 n

end

end A213012.P17319063458193356543

/-! ## A213012.P6394727473559304512

`A055944(a(A023443(n)))%A058042(n)` with `a(0)=26`
-/

namespace A213012.P6394727473559304512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26] fun n a =>
  Int.tmod (A055944 (a (A023443 n).toNat).toNat) (A058042 n)

end

end A213012.P6394727473559304512

/-!
# A213013: (2^3^4^5^...^n) mod n.

The programs for A213013, there is no canonical definition to state claims against.
-/

/-! ## A213013.P7387852042371569501

`A092188(n+2)%(n+2)`
-/

namespace A213013.P7387852042371569501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092188 (n + 2)) (n + 2 : ℤ)

end

end A213013.P7387852042371569501

/-! ## A213013.P5823832049707534696

`A043545(n+1)*A092188(n+2)`
-/

namespace A213013.P5823832049707534696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (n + 1) * A092188 (n + 2)

end

end A213013.P5823832049707534696

/-! ## A213013.P13016530748510846187

`A092188(n+2)-Δ[A076877(n+1)]`
-/

namespace A213013.P13016530748510846187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092188 (n + 2) - (f1 (n + 1) - f1 n)

end

end A213013.P13016530748510846187

/-! ## A213013.P11428535187662698012

`and(Δ[A080079(n+1)], A092188(n+2))`
-/

namespace A213013.P11428535187662698012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A092188 (n + 2))

end

end A213013.P11428535187662698012

/-! ## A213013.P2809095474463179996

`A052409(A106524(n))*A092188(n+2)`
-/

namespace A213013.P2809095474463179996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A106524 n).toNat * A092188 (n + 2)

end

end A213013.P2809095474463179996

/-! ## A213013.P8207137955905923262

`A002262(A092188(n+2)+A000217(n+1))`
-/

namespace A213013.P8207137955905923262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A092188 (n + 2) + A000217 (n + 1)).toNat

end

end A213013.P8207137955905923262

/-!
# A213015: Numbers n such that the sum of prime factors of n (counted with multiplicity) is 2 times a prime.

The programs for A213015, the canonical program `A213015.P7267296078738737997` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213015 has offset 1).

The definition of A213015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213015.P7267296078738737997

`filter[A085711(n+1), A356163(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A213015

/-- `filter[A085711(n+1), A356163(#)]` -/
def P7267296078738737997.Spec : Prop :=
  ∀ n, P7267296078738737997.a n = A213015 (n + 1)

theorem P7267296078738737997.correct : P7267296078738737997.Spec := by
  intro n
  simp only [A213015, Nat.add_sub_cancel]

end A213015

/-! ## A213015.P7692320613952904835

`∩[A036349(n+1), A085711(n+1)]`
-/

namespace A213015.P7692320613952904835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213015.P7692320613952904835

namespace A213015

/-- `∩[A036349(n+1), A085711(n+1)]` -/
def P7692320613952904835.Spec : Prop :=
  ∀ n, (P7692320613952904835.a n : ℤ) = A213015 (n + 1)

end A213015

/-! ## A213015.P7918970568171151726

`eq[A020639(2*(n+1)), A309892(A107463(n))]`
-/

namespace A213015.P7918970568171151726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213015.P7918970568171151726

namespace A213015

/-- `eq[A020639(2*(n+1)), A309892(A107463(n))]` -/
def P7918970568171151726.Spec : Prop :=
  ∀ n, (P7918970568171151726.a n : ℤ) = A213015 (n + 1)

end A213015

/-! ## A213015.P7831266127793238128

`eq[0, A100802(A107463(n))]`
-/

namespace A213015.P7831266127793238128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213015.P7831266127793238128

namespace A213015

/-- `eq[0, A100802(A107463(n))]` -/
def P7831266127793238128.Spec : Prop :=
  ∀ n, (P7831266127793238128.a n : ℤ) = A213015 (n + 1)

end A213015

/-! ## A213015.P4113795473384123220

`lt[A100802(A107463(n)), A060576(n)]`
-/

namespace A213015.P4113795473384123220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213015.P4113795473384123220

namespace A213015

/-- `lt[A100802(A107463(n)), A060576(n)]` -/
def P4113795473384123220.Spec : Prop :=
  ∀ n, (P4113795473384123220.a n : ℤ) = A213015 (n + 1)

end A213015

/-!
# A213016: Numbers n such that the sum of prime factors of n (counted with multiplicity) is 3 times a prime.

The programs for A213016, the canonical program `A213016.P6658965987017674248` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213016 has offset 1).

The definition of A213016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213016.P6658965987017674248

`filter[A085711(n+1), A373371(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A213016

/-- `filter[A085711(n+1), A373371(#)]` -/
def P6658965987017674248.Spec : Prop :=
  ∀ n, P6658965987017674248.a n = A213016 (n + 1)

theorem P6658965987017674248.correct : P6658965987017674248.Spec := by
  intro n
  simp only [A213016, Nat.add_sub_cancel]

end A213016

/-! ## A213016.P4290320335536510690

`∩[A085711(n+1), A289142(n+1)]`
-/

namespace A213016.P4290320335536510690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213016.P4290320335536510690

namespace A213016

/-- `∩[A085711(n+1), A289142(n+1)]` -/
def P4290320335536510690.Spec : Prop :=
  ∀ n, (P4290320335536510690.a n : ℤ) = A213016 (n + 1)

end A213016

/-! ## A213016.P14557128584927575040

`A289142(lt[A140407(n), A025281(n)])`
-/

namespace A213016.P14557128584927575040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213016.P14557128584927575040

namespace A213016

/-- `A289142(lt[A140407(n), A025281(n)])` -/
def P14557128584927575040.Spec : Prop :=
  ∀ n, P14557128584927575040.a n = A213016 (n + 1)

end A213016

/-! ## A213016.P2529517161928540341

`A289142(lt[A140407(n), A048702(n)])`
-/

namespace A213016.P2529517161928540341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213016.P2529517161928540341

namespace A213016

/-- `A289142(lt[A140407(n), A048702(n)])` -/
def P2529517161928540341.Spec : Prop :=
  ∀ n, P2529517161928540341.a n = A213016 (n + 1)

end A213016

/-! ## A213016.P9560380225456286669

`A289142(lt[A185314(n), A033865(n)])`
-/

namespace A213016.P9560380225456286669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289142 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A213016.P9560380225456286669

namespace A213016

/-- `A289142(lt[A185314(n), A033865(n)])` -/
def P9560380225456286669.Spec : Prop :=
  ∀ n, P9560380225456286669.a n = A213016 (n + 1)

end A213016

/-!
# A213019: Largest n-digit right-truncatable semiprime.

The programs for A213019, there is no canonical definition to state claims against.
-/

/-! ## A213019.P15011901179823770199

`A006530(10^(n-1))+10*a(n-1)+4` with `a(0)=9`
-/

namespace A213019.P15011901179823770199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A006530 (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + (10 * a (n - 1) + 4)

end

end A213019.P15011901179823770199

/-! ## A213019.P3938836445321678191

`or(15, 10*a(A001222(7^n)-1))` with `a(0)=9`
-/

namespace A213019.P3938836445321678191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 15 (10 * a (A001222 (7 ^ n) - 1).toNat)

end

end A213019.P3938836445321678191

/-!
# A213020: Smallest number k such that the sum of prime factors of k (counted with multiplicity) is n times a prime.

The programs for A213020, there is no canonical definition to state claims against.
-/

/-! ## A213020.P1934487745333245028

`A056240(2*A077168(n))`
-/

namespace A213020.P1934487745333245028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (2 * A077168 n).toNat

end

end A213020.P1934487745333245028

/-! ## A213020.P6154698577198573589

`A056240(A002326(2^n))`
-/

namespace A213020.P6154698577198573589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A002326 (2 ^ n)).toNat

end

end A213020.P6154698577198573589

/-! ## A213020.P17934855149727160977

`A354547(A243405(2*(n+1)))`
-/

namespace A213020.P17934855149727160977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354547 (A243405 (2 * (n + 1))).toNat

end

end A213020.P17934855149727160977

/-! ## A213020.P7850693445237179591

`A056240(A077168(n)+1+n)`
-/

namespace A213020.P7850693445237179591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A077168 n + 1 + (n : ℤ)).toNat

end

end A213020.P7850693445237179591

/-!
# A213022: Expansion of phi(x)^2 * psi(x) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A213022, there is no canonical definition to state claims against.
-/

/-! ## A213022.P12622421651977019455

`A045834(2*n)`
-/

namespace A213022.P12622421651977019455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045834 (2 * n)

end

end A213022.P12622421651977019455

/-! ## A213022.P7021392790144116041

`A045834(n+n)^gcd(n, n+1)`
-/

namespace A213022.P7021392790144116041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045834 (n + n) ^ Nat.gcd n (n + 1)

end

end A213022.P7021392790144116041

/-! ## A213022.P16608865625399504123

`A045834(A004277(n))%A004006(n+2)`
-/

namespace A213022.P16608865625399504123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045834 (A004277 n).toNat) (A004006 (n + 2))

end

end A213022.P16608865625399504123

/-! ## A213022.P8588884696509085993

`A246954(2*n)`
-/

namespace A213022.P8588884696509085993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246954 (2 * n)

end

end A213022.P8588884696509085993

/-! ## A213022.P13041941726558287208

`A005876(2*n)/2`
-/

namespace A213022.P13041941726558287208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005876 (2 * n) : ℚ) / 2

end

end A213022.P13041941726558287208

/-! ## A213022.P14281431910101065510

`A001281(A005876(2*n))`
-/

namespace A213022.P14281431910101065510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005876 (2 * n)).toNat

end

end A213022.P14281431910101065510

/-! ## A213022.P12950167209136390925

`A246811(4*n)`
-/

namespace A213022.P12950167209136390925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 (4 * n)

end

end A213022.P12950167209136390925

/-! ## A213022.P5848385128255341717

`A072068(4*n+1)/2`
-/

namespace A213022.P5848385128255341717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072068 (4 * n + 1) : ℚ) / 2

end

end A213022.P5848385128255341717

/-! ## A213022.P6253345838912897236

`A045836(A017077(n))`
-/

namespace A213022.P6253345838912897236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045836 (A017077 n).toNat

end

end A213022.P6253345838912897236

/-! ## A213022.P16230901547337643687

`A080917(A008590(n)+1)/2`
-/

namespace A213022.P16230901547337643687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (A008590 n + 1).toNat : ℚ) / 2

end

end A213022.P16230901547337643687

/-! ## A213022.P12559089569684849524

`A042948(A006374(8*n+1))`
-/

namespace A213022.P12559089569684849524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A006374 (8 * n + 1)).toNat

end

end A213022.P12559089569684849524

/-! ## A213022.P15131253877279898026

`A045834(n+n)%A088291(n+1)`
-/

namespace A213022.P15131253877279898026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045834 (n + n)) (A088291 (n + 1))

end

end A213022.P15131253877279898026

/-! ## A213022.P11844292951699614101

`A033717(A017089(2*n))/2`
-/

namespace A213022.P11844292951699614101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033717 (A017089 (2 * n)).toNat : ℚ) / 2

end

end A213022.P11844292951699614101

/-! ## A213022.P3062086345504187340

`A080917(A119413(2*n+1))/2`
-/

namespace A213022.P3062086345504187340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080917 (A119413 (2 * n + 1)).toNat : ℚ) / 2

end

end A213022.P3062086345504187340

/-! ## A213022.P4656177798761314376

`A080964(A305075(2*n+1))/2`
-/

namespace A213022.P4656177798761314376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080964 (A305075 (2 * n + 1)).toNat : ℚ) / 2

end

end A213022.P4656177798761314376

/-! ## A213022.P11273056759853625557

`A004025(A016813(2*n))/2`
-/

namespace A213022.P11273056759853625557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004025 (A016813 (2 * n)).toNat : ℚ) / 2

end

end A213022.P11273056759853625557

/-!
# A213023: Expansion of psi(x)^2 * psi(-x^3) / chi(-x^2) in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A213023, there is no canonical definition to state claims against.
-/

/-! ## A213023.P3938581148848001929

`A180312(3*n+1)`
-/

namespace A213023.P3938581148848001929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180312 (3 * n + 1)

end

end A213023.P3938581148848001929

/-! ## A213023.P16456250011899352733

`A213022(A016789(n))/8`
-/

namespace A213023.P16456250011899352733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213022 (A016789 n).toNat : ℚ) / 8

end

end A213023.P16456250011899352733

/-! ## A213023.P7704830235982613250

`A232635(Δ[A104249(n)])/4`
-/

namespace A213023.P7704830235982613250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232635 (f1 (n + 1) - f1 n).toNat : ℚ) / 4

end

end A213023.P7704830235982613250

/-! ## A213023.P2933253707365845718

`A213607(4*n+2)/2`
-/

namespace A213023.P2933253707365845718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213607 (4 * n + 2) : ℚ) / 2

end

end A213023.P2933253707365845718

/-! ## A213023.P3494843828535177155

`A004526(A213607(4*n+2))`
-/

namespace A213023.P3494843828535177155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A213607 (4 * n + 2)).toNat

end

end A213023.P3494843828535177155

/-! ## A213023.P7192277890822116716

`A300271(A213607(2*(2*n+1)))`
-/

namespace A213023.P7192277890822116716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A213607 (2 * (2 * n + 1))).toNat

end

end A213023.P7192277890822116716

/-!
# A213024: The number of solutions to x^2 + y^2 + 2*z^2 = n in positive integers x,y,z.

The programs for A213024, there is no canonical definition to state claims against.
-/

/-! ## A213024.P15304837974928733266

`A025428(n)*A083952(A153785(n))`
-/

namespace A213024.P15304837974928733266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n * A083952 (A153785 n).toNat

end

end A213024.P15304837974928733266

/-! ## A213024.P7442138969541967658

`A201219(n^A025428(n))`
-/

namespace A213024.P7442138969541967658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201219 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A025428 n : ℤ))).toNat

end

end A213024.P7442138969541967658

/-! ## A213024.P5435092043227067510

`A053735(A063730(n)*A098355(n))`
-/

namespace A213024.P5435092043227067510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A063730 n * A098355 n).toNat

end

end A213024.P5435092043227067510

/-! ## A213024.P5494448873643178447

`A001221(A344653(n+1)^A025428(n))`
-/

namespace A213024.P5494448873643178447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A344653 (n + 1) : ℚ) ^ (A025428 n : ℤ))).toNat

end

end A213024.P5494448873643178447

/-! ## A213024.P12525621065069498091

`A280618(A025428(n)*A086119(2*(n+1)))`
-/

namespace A213024.P12525621065069498091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A025428 n * A086119 (2 * (n + 1))).toNat

end

end A213024.P12525621065069498091

/-!
# A213025: Balanced semiprimes (of order one): semiprimes which are the average of the previous semiprime and the following semiprime.

The programs for A213025, there is no canonical definition to state claims against.
-/

/-! ## A213025.P8459021499260938180

`∩[A001358(n+1), A213063(n+1)]`
-/

namespace A213025.P8459021499260938180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P8459021499260938180

/-! ## A213025.P13435462387241068299

`filter[A213063(n+1), A064911(#)]`
-/

namespace A213025.P13435462387241068299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A213025.P13435462387241068299

/-! ## A213025.P13304679068960121376

`∩[A131368(n+1), A213063(n+1)]`
-/

namespace A213025.P13304679068960121376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P13304679068960121376

/-! ## A213025.P7293222766106951240

`∩[A176540(n+1), A213063(n+1)]`
-/

namespace A213025.P7293222766106951240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P7293222766106951240

/-! ## A213025.P15884187720350734075

`∩[A186621(n+1)+1, A213063(n+1)]`
-/

namespace A213025.P15884187720350734075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P15884187720350734075

/-! ## A213025.P4568695528492021776

`∩[A175708(n+1)+1+n, A213063(n+1)]`
-/

namespace A213025.P4568695528492021776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P4568695528492021776

/-! ## A213025.P14729385541321754338

`∩[A100493(n+1)-(n+1), A213063(n+1)]`
-/

namespace A213025.P14729385541321754338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100493 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213025.P14729385541321754338

/-!
# A213026: Number of certain marked rooted punctured quadrangulations with n weighted edges.

The programs for A213026, there is no canonical definition to state claims against.
-/

/-! ## A213026.P15569255074392139749

`(2^n-1)*abs(1-n)!*ceil(or(n, n+1)/2)`
-/

namespace A213026.P15569255074392139749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * ⌈(Nat.lor n (n + 1) : ℚ) / 2⌉

end

end A213026.P15569255074392139749

/-!
# A213027: Number A(n,k) of 3n-length k-ary words, either empty or beginning with the first letter of the alphabet, that can be built by repeatedly inserting triples of identical letters into the initially empty word; square array A(n,k), n>=0, k>=0, by antidiagonals.

The programs for A213027, there is no canonical definition to state claims against.
-/

/-! ## A213027.P10190324768327285741

`ceil(A213028(n)/A004736(n+2))`
-/

namespace A213027.P10190324768327285741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213028 n : ℚ) / (A004736 (n + 2) : ℚ)⌉

end

end A213027.P10190324768327285741

/-! ## A213027.P11434165609220997835

`A048766(A242095(n)²*A346061(n))`
-/

namespace A213027.P11434165609220997835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A242095 n ^ 2 * A346061 n).toNat

end

end A213027.P11434165609220997835

/-! ## A213027.P14757910591594757934

`A048766(lcm(A242095(n)², A346061(n)))`
-/

namespace A213027.P14757910591594757934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A242095 n ^ 2) (A346061 n))

end

end A213027.P14757910591594757934

/-! ## A213027.P15216497870821549625

`A048766(A242095(n)*A346061(n)*A242095(n))`
-/

namespace A213027.P15216497870821549625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A242095 n * A346061 n * A242095 n).toNat

end

end A213027.P15216497870821549625

/-! ## A213027.P2782275959915859301

`A163352(A289481(n)+A250484(n))`
-/

namespace A213027.P2782275959915859301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A289481 n + A250484 n).toNat

end

end A213027.P2782275959915859301

/-!
# A213028: Number A(n,k) of 3n-length k-ary words that can be built by repeatedly inserting triples of identical letters into the initially empty word; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A213028, there is no canonical definition to state claims against.
-/

/-! ## A213028.P15823912292168502420

`A114219(A061579(n))*A213027(n)`
-/

namespace A213028.P15823912292168502420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 (A061579 n).toNat * A213027 n

end

end A213028.P15823912292168502420

/-! ## A213028.P14630306067990965079

`A193592(A083920(n))*A213027(n)`
-/

namespace A213028.P14630306067990965079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A083920 n).toNat * A213027 n

end

end A213028.P14630306067990965079

/-! ## A213028.P2328017504260650456

`gcd(A287698(n), A322280(n))*A213027(n)`
-/

namespace A213028.P2328017504260650456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A287698 n) (A322280 n) : ℤ) * A213027 n

end

end A213028.P2328017504260650456

/-! ## A213028.P2802178420164690633

`A000196(A287698(n)*A322836(n))`
-/

namespace A213028.P2802178420164690633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A287698 n * A322836 n).toNat

end

end A213028.P2802178420164690633

/-! ## A213028.P9142968165864167502

`(A287698(n)+A287316(n))/A020639(A098895(n+1))`
-/

namespace A213028.P9142968165864167502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287698 n + A287316 n : ℚ) / (A020639 (A098895 (n + 1)).toNat : ℚ)

end

end A213028.P9142968165864167502

/-!
# A213029: a(n) = floor(n/2)^2 - floor(n/3)^2.

The programs for A213029, the canonical program `A213029.P9151668840277076867` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213029 has offset 0).

The definition of A213029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)²-floor(n/3)²` (program `A213029.P9151668840277076867`, by `A213029.P9151668840277076867.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213029.P9151668840277076867

`floor(n/2)²-floor(n/3)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213029

/-- `floor(n/2)²-floor(n/3)²` -/
def P9151668840277076867.Spec : Prop :=
  ∀ n, P9151668840277076867.a n = A213029 n

theorem P9151668840277076867.correct : P9151668840277076867.Spec := by
  intro n
  simp only [A213029]

end A213029

/-! ## A213029.P17094558345625916665

`(n-Δ[A001399(n)])*A008615(n)`
-/

namespace A213029.P17094558345625916665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (f1 (n + 1) - f1 n)) * A008615 n

end

end A213029.P17094558345625916665

namespace A213029

/-- `(n-Δ[A001399(n)])*A008615(n)` -/
def P17094558345625916665.Spec : Prop :=
  ∀ n, P17094558345625916665.a n = A213029 n

end A213029

/-! ## A213029.P1936430940423577570

`(A004526(n)+A002264(n))*A008615(n)`
-/

namespace A213029.P1936430940423577570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + A002264 n) * A008615 n

end

end A213029.P1936430940423577570

namespace A213029

/-- `(A004526(n)+A002264(n))*A008615(n)` -/
def P1936430940423577570.Spec : Prop :=
  ∀ n, P1936430940423577570.a n = A213029 n

theorem P1936430940423577570.correct : P1936430940423577570.Spec := by
  intro n
  simp only [A213029, Nat.add_sub_cancel, A213029.P1936430940423577570.a, A213029.P9151668840277076867.a, A002264, A002264.P5647656940077635922.a, A004526, A004526.P10084182425416171735.a, A008615, A008615.P10410393553474300613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213029

/-! ## A213029.P5541125471830955320

`(A187324(n)+A002265(n))*A008615(n)`
-/

namespace A213029.P5541125471830955320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187324 n + A002265 n) * A008615 n

end

end A213029.P5541125471830955320

namespace A213029

/-- `(A187324(n)+A002265(n))*A008615(n)` -/
def P5541125471830955320.Spec : Prop :=
  ∀ n, P5541125471830955320.a n = A213029 n

theorem P5541125471830955320.correct : P5541125471830955320.Spec := by
  intro n
  simp only [A213029, Nat.add_sub_cancel, A213029.P5541125471830955320.a, A213029.P9151668840277076867.a, A002265, A002265.P2157561802369677908.a, A008615, A008615.P10410393553474300613.a, A187324, A187324.P8867585195245753592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213029

/-! ## A213029.P13124851103706222809

`(A052928(n)-A008615(n))*A008615(n)`
-/

namespace A213029.P13124851103706222809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052928 n - A008615 n) * A008615 n

end

end A213029.P13124851103706222809

namespace A213029

/-- `(A052928(n)-A008615(n))*A008615(n)` -/
def P13124851103706222809.Spec : Prop :=
  ∀ n, P13124851103706222809.a n = A213029 n

theorem P13124851103706222809.correct : P13124851103706222809.Spec := by
  intro n
  simp only [A213029, Nat.add_sub_cancel, A213029.P13124851103706222809.a, A213029.P9151668840277076867.a, A008615, A008615.P10410393553474300613.a, A052928, A052928.P15665125645728880594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213029

/-! ## A213029.P9026725657116326584

`(A008615(A016873(n))-1)*A008615(n)`
-/

namespace A213029.P9026725657116326584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008615 (A016873 n).toNat - 1) * A008615 n

end

end A213029.P9026725657116326584

namespace A213029

/-- `(A008615(A016873(n))-1)*A008615(n)` -/
def P9026725657116326584.Spec : Prop :=
  ∀ n, P9026725657116326584.a n = A213029 n

end A213029

/-!
# A213030: a(n) = floor(2*n/3)^2 - floor(n/3)^2.

The programs for A213030, the canonical program `A213030.P15324665343392453369` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213030 has offset 0).

The definition of A213030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*n/3)²-floor(n/3)²` (program `A213030.P15324665343392453369`, by `A213030.P15324665343392453369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213030.P15324665343392453369

`floor(2*n/3)²-floor(n/3)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213030

/-- `floor(2*n/3)²-floor(n/3)²` -/
def P15324665343392453369.Spec : Prop :=
  ∀ n, P15324665343392453369.a n = A213030 n

theorem P15324665343392453369.correct : P15324665343392453369.Spec := by
  intro n
  simp only [A213030]

end A213030

/-! ## A213030.P3550750270528261080

`(n-n²%3)*round(n/3)`
-/

namespace A213030.P3550750270528261080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n ^ 2 % 3 : ℕ) : ℤ)) * SequenceMachineLib.roundAway ((n : ℚ) / 3)

end

end A213030.P3550750270528261080

namespace A213030

/-- `(n-n²%3)*round(n/3)` -/
def P3550750270528261080.Spec : Prop :=
  ∀ n, P3550750270528261080.a n = A213030 n

end A213030

/-! ## A213030.P1464033846244676825

`A000212(n-∑[n]%3)`
-/

namespace A213030.P1464033846244676825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n - (∑ j ∈ Finset.range (n + 1), f1 j) % 3)

end

end A213030.P1464033846244676825

namespace A213030

/-- `A000212(n-∑[n]%3)` -/
def P1464033846244676825.Spec : Prop :=
  ∀ n, P1464033846244676825.a n = A213030 n

end A213030

/-! ## A213030.P7090611982036810216

`A000212(n+1-C(2, n%3))`
-/

namespace A213030.P7090611982036810216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1 - Nat.choose 2 (n % 3))

end

end A213030.P7090611982036810216

namespace A213030

/-- `A000212(n+1-C(2, n%3))` -/
def P7090611982036810216.Spec : Prop :=
  ∀ n, P7090611982036810216.a n = A213030 n

end A213030

/-! ## A213030.P14217788768500376167

`A000212(n-floor((n+1)%3/2))`
-/

namespace A213030.P14217788768500376167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 ((n : ℤ) - ⌊(((n + 1) % 3 : ℕ) : ℚ) / 2⌋).toNat

end

end A213030.P14217788768500376167

namespace A213030

/-- `A000212(n-floor((n+1)%3/2))` -/
def P14217788768500376167.Spec : Prop :=
  ∀ n, P14217788768500376167.a n = A213030 n

end A213030

/-! ## A213030.P18320703173031777996

`A000212(n+1-dr(∑[n]²+1))`
-/

namespace A213030.P18320703173031777996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (n + 1 - SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ))

end

end A213030.P18320703173031777996

namespace A213030

/-- `A000212(n+1-dr(∑[n]²+1))` -/
def P18320703173031777996.Spec : Prop :=
  ∀ n, P18320703173031777996.a n = A213030 n

end A213030

/-! ## A213030.P13929865266687358101

`A000212(1-A131534(n)+n)`
-/

namespace A213030.P13929865266687358101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (1 - A131534 n + (n : ℤ)).toNat

end

end A213030.P13929865266687358101

namespace A213030

/-- `A000212(1-A131534(n)+n)` -/
def P13929865266687358101.Spec : Prop :=
  ∀ n, P13929865266687358101.a n = A213030 n

end A213030

/-! ## A213030.P6584077781539234692

`A000212(1-(A131534(n)-n))`
-/

namespace A213030.P6584077781539234692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (1 - (A131534 n - (n : ℤ))).toNat

end

end A213030.P6584077781539234692

namespace A213030

/-- `A000212(1-(A131534(n)-n))` -/
def P6584077781539234692.Spec : Prop :=
  ∀ n, P6584077781539234692.a n = A213030 n

end A213030

/-! ## A213030.P9780241928048382907

`A000212(Δ[A004396(n)]+n-1)`
-/

namespace A213030.P9780241928048382907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (f1 (n + 1) - f1 n + ((n : ℤ) - 1)).toNat

end

end A213030.P9780241928048382907

namespace A213030

/-- `A000212(Δ[A004396(n)]+n-1)` -/
def P9780241928048382907.Spec : Prop :=
  ∀ n, P9780241928048382907.a n = A213030 n

end A213030

/-! ## A213030.P8202816489447804679

`A000212(A047268(n+1)-(n+1))`
-/

namespace A213030.P8202816489447804679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A047268 (n + 1) - (n + 1 : ℤ)).toNat

end

end A213030.P8202816489447804679

namespace A213030

/-- `A000212(A047268(n+1)-(n+1))` -/
def P8202816489447804679.Spec : Prop :=
  ∀ n, P8202816489447804679.a n = A213030 n

end A213030

/-! ## A213030.P16348020937029423158

`A000212(A047268(n+1)%(n+1))`
-/

namespace A213030.P16348020937029423158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (Int.tmod (A047268 (n + 1)) (n + 1 : ℤ)).toNat

end

end A213030.P16348020937029423158

namespace A213030

/-- `A000212(A047268(n+1)%(n+1))` -/
def P16348020937029423158.Spec : Prop :=
  ∀ n, P16348020937029423158.a n = A213030 n

end A213030

/-! ## A213030.P10823879352588798704

`A000212(A004523(n)+A002264(n+1))`
-/

namespace A213030.P10823879352588798704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A004523 n + A002264 (n + 1)).toNat

end

end A213030.P10823879352588798704

namespace A213030

/-- `A000212(A004523(n)+A002264(n+1))` -/
def P10823879352588798704.Spec : Prop :=
  ∀ n, P10823879352588798704.a n = A213030 n

end A213030

/-! ## A213030.P1119023228659293642

`A000212(2*A004523(n)-A002264(n))`
-/

namespace A213030.P1119023228659293642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (2 * A004523 n - A002264 n).toNat

end

end A213030.P1119023228659293642

namespace A213030

/-- `A000212(2*A004523(n)-A002264(n))` -/
def P1119023228659293642.Spec : Prop :=
  ∀ n, P1119023228659293642.a n = A213030 n

end A213030

/-! ## A213030.P6651569526540266746

`(A004523(n)+A002264(n))*A002264(n+1)`
-/

namespace A213030.P6651569526540266746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 n + A002264 n) * A002264 (n + 1)

end

end A213030.P6651569526540266746

namespace A213030

/-- `(A004523(n)+A002264(n))*A002264(n+1)` -/
def P6651569526540266746.Spec : Prop :=
  ∀ n, P6651569526540266746.a n = A213030 n

end A213030

/-! ## A213030.P9586191885380800511

`(A130481(n)-A010872(n))*A002264(n+1)`
-/

namespace A213030.P9586191885380800511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130481 n - A010872 n) * A002264 (n + 1)

end

end A213030.P9586191885380800511

namespace A213030

/-- `(A130481(n)-A010872(n))*A002264(n+1)` -/
def P9586191885380800511.Spec : Prop :=
  ∀ n, P9586191885380800511.a n = A213030 n

end A213030

/-! ## A213030.P16903767464844628087

`A000212(A004523(n)-(A002264(n)-A004523(n)))`
-/

namespace A213030.P16903767464844628087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A004523 n - (A002264 n - A004523 n)).toNat

end

end A213030.P16903767464844628087

namespace A213030

/-- `A000212(A004523(n)-(A002264(n)-A004523(n)))` -/
def P16903767464844628087.Spec : Prop :=
  ∀ n, P16903767464844628087.a n = A213030 n

end A213030

/-! ## A213030.P9387527740899343710

`A000212(n-A022003(n+1))`
-/

namespace A213030.P9387527740899343710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 ((n : ℤ) - A022003 (n + 1)).toNat

end

end A213030.P9387527740899343710

namespace A213030

/-- `A000212(n-A022003(n+1))` -/
def P9387527740899343710.Spec : Prop :=
  ∀ n, P9387527740899343710.a n = A213030 n

end A213030

/-! ## A213030.P14305409670821367159

`A000212(n-Δ[A002264(n+1)])`
-/

namespace A213030.P14305409670821367159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A213030.P14305409670821367159

namespace A213030

/-- `A000212(n-Δ[A002264(n+1)])` -/
def P14305409670821367159.Spec : Prop :=
  ∀ n, P14305409670821367159.a n = A213030 n

end A213030

/-! ## A213030.P4569316015302330328

`A000212(n-A000035(A004523(n+1)))`
-/

namespace A213030.P4569316015302330328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 ((n : ℤ) - A000035 (A004523 (n + 1)).toNat).toNat

end

end A213030.P4569316015302330328

namespace A213030

/-- `A000212(n-A000035(A004523(n+1)))` -/
def P4569316015302330328.Spec : Prop :=
  ∀ n, P4569316015302330328.a n = A213030 n

end A213030

/-! ## A213030.P17546648126881082135

`A272212(A004773(n))`
-/

namespace A213030.P17546648126881082135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A004773 n).toNat

end

end A213030.P17546648126881082135

namespace A213030

/-- `A272212(A004773(n))` -/
def P17546648126881082135.Spec : Prop :=
  ∀ n, P17546648126881082135.a n = A213030 n

end A213030

/-!
# A213031: a(n) = floor(n/2)^3 - floor(n/3)^3.

The programs for A213031, the canonical program `A213031.P5425219187457168444` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213031 has offset 0).

The definition of A213031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)^3-floor(n/3)^3` (program `A213031.P5425219187457168444`, by `A213031.P5425219187457168444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213031.P5425219187457168444

`floor(n/2)^3-floor(n/3)^3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213031

/-- `floor(n/2)^3-floor(n/3)^3` -/
def P5425219187457168444.Spec : Prop :=
  ∀ n, P5425219187457168444.a n = A213031 n

theorem P5425219187457168444.correct : P5425219187457168444.Spec := by
  intro n
  simp only [A213031]

end A213031

/-!
# A213032: a(n) = floor(n/2)*floor(n/3)-floor(n/6)^2.

The programs for A213032, the canonical program `A213032.P14975552922097705342` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213032 has offset 0).

The definition of A213032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)*floor(n/3)-floor(n/6)²` (program `A213032.P14975552922097705342`, by `A213032.P14975552922097705342.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213032.P14975552922097705342

`floor(n/2)*floor(n/3)-floor(n/6)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213032

/-- `floor(n/2)*floor(n/3)-floor(n/6)²` -/
def P14975552922097705342.Spec : Prop :=
  ∀ n, P14975552922097705342.a n = A213032 n

theorem P14975552922097705342.correct : P14975552922097705342.Spec := by
  intro n
  simp only [A213032]

end A213032

/-! ## A213032.P18226825595204986637

`A002265(A211547(n)+A096386(n)²)`
-/

namespace A213032.P18226825595204986637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A211547 n + A096386 n ^ 2).toNat

end

end A213032.P18226825595204986637

namespace A213032

/-- `A002265(A211547(n)+A096386(n)²)` -/
def P18226825595204986637.Spec : Prop :=
  ∀ n, P18226825595204986637.a n = A213032 n

end A213032

/-!
# A213033: n*[n/2]*[n/3], where [] = floor.

The programs for A213033, the canonical program `A213033.P12313861033614054259` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213033 has offset 0).

The definition of A213033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213033.P12313861033614054259

`n*floor(n/2)*floor(n/3)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213033

/-- `n*floor(n/2)*floor(n/3)` -/
def P12313861033614054259.Spec : Prop :=
  ∀ n, P12313861033614054259.a n = A213033 n

theorem P12313861033614054259.correct : P12313861033614054259.Spec := by
  intro n
  simp only [A213033]

end A213033

/-! ## A213033.P16868328074554474919

`(A004526(n)*A242669(n))%∑[n+2]²`
-/

namespace A213033.P16868328074554474919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004526 n * A242669 n) (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A213033.P16868328074554474919

namespace A213033

/-- `(A004526(n)*A242669(n))%∑[n+2]²` -/
def P16868328074554474919.Spec : Prop :=
  ∀ n, P16868328074554474919.a n = A213033 n

end A213033

/-! ## A213033.P17507043968884243042

`A008619(n)*A242669(n)-A242669(n)`
-/

namespace A213033.P17507043968884243042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A242669 n - A242669 n

end

end A213033.P17507043968884243042

namespace A213033

/-- `A008619(n)*A242669(n)-A242669(n)` -/
def P17507043968884243042.Spec : Prop :=
  ∀ n, P17507043968884243042.a n = A213033 n

theorem P17507043968884243042.correct : P17507043968884243042.Spec := by
  intro n
  simp only [A213033, Nat.add_sub_cancel, A213033.P17507043968884243042.a, A213033.P12313861033614054259.a, A008619, A008619.P16053834178911111118.a, A242669, A242669.P17955834880435714991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213033

/-! ## A213033.P8516685320830384766

`abs(A002264(n)*A004526(n)*A001489(n))`
-/

namespace A213033.P8516685320830384766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002264 n * A004526 n * A001489 n|

end

end A213033.P8516685320830384766

namespace A213033

/-- `abs(A002264(n)*A004526(n)*A001489(n))` -/
def P8516685320830384766.Spec : Prop :=
  ∀ n, P8516685320830384766.a n = A213033 n

end A213033

/-! ## A213033.P9300882414079751038

`(n+1)*A010762(A028310(n))-A010762(A028310(n))`
-/

namespace A213033.P9300882414079751038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010762 (A028310 n).toNat - A010762 (A028310 n).toNat

end

end A213033.P9300882414079751038

namespace A213033

/-- `(n+1)*A010762(A028310(n))-A010762(A028310(n))` -/
def P9300882414079751038.Spec : Prop :=
  ∀ n, P9300882414079751038.a n = A213033 n

end A213033

/-! ## A213033.P7923916038445500139

`A000007(n+1)+A004526(n)*A242669(n)`
-/

namespace A213033.P7923916038445500139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A004526 n * A242669 n

end

end A213033.P7923916038445500139

namespace A213033

/-- `A000007(n+1)+A004526(n)*A242669(n)` -/
def P7923916038445500139.Spec : Prop :=
  ∀ n, P7923916038445500139.a n = A213033 n

theorem P7923916038445500139.correct : P7923916038445500139.Spec := by
  intro n
  simp only [A213033, Nat.add_sub_cancel, A213033.P7923916038445500139.a, A213033.P12313861033614054259.a, A000007, A000007.P6599383543502402472.a, A004526, A004526.P10084182425416171735.a, A242669, A242669.P17955834880435714991.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213033

/-! ## A213033.P15381828901401550502

`A004526(n)*A242669(n)/A001511(2*n+1)`
-/

namespace A213033.P15381828901401550502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 n * A242669 n : ℚ) / (A001511 (2 * n + 1) : ℚ)

end

end A213033.P15381828901401550502

namespace A213033

/-- `A004526(n)*A242669(n)/A001511(2*n+1)` -/
def P15381828901401550502.Spec : Prop :=
  ∀ n, P15381828901401550502.a n = (A213033 n : ℚ)

end A213033

/-! ## A213033.P737426886686555700

`A014682(2*n*A002264(n)*A004526(n))`
-/

namespace A213033.P737426886686555700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((2 * n : ℤ) * (A002264 n * A004526 n)).toNat

end

end A213033.P737426886686555700

namespace A213033

/-- `A014682(2*n*A002264(n)*A004526(n))` -/
def P737426886686555700.Spec : Prop :=
  ∀ n, P737426886686555700.a n = A213033 n

end A213033

/-!
# A213034: a(n) = floor(3*n/2)*floor(n/3).

The programs for A213034, the canonical program `A213034.P16529947557585186300` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213034 has offset 0).

The definition of A213034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213034.P16529947557585186300

`floor(3*n/2*floor(n/3))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213034

/-- `floor(3*n/2*floor(n/3))` -/
def P16529947557585186300.Spec : Prop :=
  ∀ n, P16529947557585186300.a n = A213034 n

theorem P16529947557585186300.correct : P16529947557585186300.Spec := by
  intro n
  simp only [A213034]

end A213034

/-! ## A213034.P3700162435465710416

`ceil((n*(n-A010872(n))-1)/2)`
-/

namespace A213034.P3700162435465710416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((n : ℤ) - A010872 n) - 1 : ℚ) / 2⌉

end

end A213034.P3700162435465710416

namespace A213034

/-- `ceil((n*(n-A010872(n))-1)/2)` -/
def P3700162435465710416.Spec : Prop :=
  ∀ n, P3700162435465710416.a n = A213034 n

end A213034

/-! ## A213034.P8390636992957824965

`A242669(n)+floor(A242669(n)/2)`
-/

namespace A213034.P8390636992957824965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 n + ⌊(A242669 n : ℚ) / 2⌋

end

end A213034.P8390636992957824965

namespace A213034

/-- `A242669(n)+floor(A242669(n)/2)` -/
def P8390636992957824965.Spec : Prop :=
  ∀ n, P8390636992957824965.a n = A213034 n

end A213034

/-! ## A213034.P7584744959924762853

`A032766(n*floor(n/3))`
-/

namespace A213034.P7584744959924762853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((n : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A213034.P7584744959924762853

namespace A213034

/-- `A032766(n*floor(n/3))` -/
def P7584744959924762853.Spec : Prop :=
  ∀ n, P7584744959924762853.a n = A213034 n

end A213034

/-! ## A213034.P17657386048317014909

`or(char[5], A032766(A242669(n)))`
-/

namespace A213034.P17657386048317014909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A032766 (A242669 n).toNat)

end

end A213034.P17657386048317014909

namespace A213034

/-- `or(char[5], A032766(A242669(n)))` -/
def P17657386048317014909.Spec : Prop :=
  ∀ n, P17657386048317014909.a n = A213034 n

end A213034

/-! ## A213034.P18206637408043403556

`A007494(A242669(n)+1)-2`
-/

namespace A213034.P18206637408043403556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A242669 n + 1).toNat - 2

end

end A213034.P18206637408043403556

namespace A213034

/-- `A007494(A242669(n)+1)-2` -/
def P18206637408043403556.Spec : Prop :=
  ∀ n, P18206637408043403556.a n = A213034 n

end A213034

/-! ## A213034.P16724808822326823327

`or(char[11], A032766(n*A002264(n)))`
-/

namespace A213034.P16724808822326823327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A032766 ((n : ℤ) * A002264 n).toNat)

end

end A213034.P16724808822326823327

namespace A213034

/-- `or(char[11], A032766(n*A002264(n)))` -/
def P16724808822326823327.Spec : Prop :=
  ∀ n, P16724808822326823327.a n = A213034 n

end A213034

/-! ## A213034.P7584587175489226431

`A032766(n*A002264(n))%A147568(n)`
-/

namespace A213034.P7584587175489226431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 ((n : ℤ) * A002264 n).toNat) (A147568 n)

end

end A213034.P7584587175489226431

namespace A213034

/-- `A032766(n*A002264(n))%A147568(n)` -/
def P7584587175489226431.Spec : Prop :=
  ∀ n, P7584587175489226431.a n = A213034 n

end A213034

/-! ## A213034.P3362366139407898269

`A004526(n*A002264(n))+n*A002264(n)`
-/

namespace A213034.P3362366139407898269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) * A002264 n).toNat + (n : ℤ) * A002264 n

end

end A213034.P3362366139407898269

namespace A213034

/-- `A004526(n*A002264(n))+n*A002264(n)` -/
def P3362366139407898269.Spec : Prop :=
  ∀ n, P3362366139407898269.a n = A213034 n

end A213034

/-! ## A213034.P1016180038571341255

`A000108(C(2, n+1))*A032766(n*A002264(n))`
-/

namespace A213034.P1016180038571341255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 1)) * A032766 ((n : ℤ) * A002264 n).toNat

end

end A213034.P1016180038571341255

namespace A213034

/-- `A000108(C(2, n+1))*A032766(n*A002264(n))` -/
def P1016180038571341255.Spec : Prop :=
  ∀ n, P1016180038571341255.a n = A213034 n

end A213034

/-! ## A213034.P16875839073578907597

`A242669(n)+A004526(A242669(n)+A000007(n))`
-/

namespace A213034.P16875839073578907597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 n + A004526 (A242669 n + A000007 n).toNat

end

end A213034.P16875839073578907597

namespace A213034

/-- `A242669(n)+A004526(A242669(n)+A000007(n))` -/
def P16875839073578907597.Spec : Prop :=
  ∀ n, P16875839073578907597.a n = A213034 n

end A213034

/-! ## A213034.P11049428069460701133

`A000120(A006519(n+1))*A032766(n*A002264(n))`
-/

namespace A213034.P11049428069460701133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006519 (n + 1)).toNat * A032766 ((n : ℤ) * A002264 n).toNat

end

end A213034.P11049428069460701133

namespace A213034

/-- `A000120(A006519(n+1))*A032766(n*A002264(n))` -/
def P11049428069460701133.Spec : Prop :=
  ∀ n, P11049428069460701133.a n = A213034 n

end A213034

/-! ## A213034.P14484842552583103658

`A175126(3*n*A002264(n))`
-/

namespace A213034.P14484842552583103658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (3 * ((n : ℤ) * A002264 n)).toNat

end

end A213034.P14484842552583103658

namespace A213034

/-- `A175126(3*n*A002264(n))` -/
def P14484842552583103658.Spec : Prop :=
  ∀ n, P14484842552583103658.a n = A213034 n

end A213034

/-! ## A213034.P2757796208237826238

`A175126(n*(n-A010872(n)))`
-/

namespace A213034.P2757796208237826238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 ((n : ℤ) * ((n : ℤ) - A010872 n)).toNat

end

end A213034.P2757796208237826238

namespace A213034

/-- `A175126(n*(n-A010872(n)))` -/
def P2757796208237826238.Spec : Prop :=
  ∀ n, P2757796208237826238.a n = A213034 n

end A213034

/-! ## A213034.P9756472505826310527

`A057353(2*n*floor(n/3))`
-/

namespace A213034.P9756472505826310527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((2 * n : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A213034.P9756472505826310527

namespace A213034

/-- `A057353(2*n*floor(n/3))` -/
def P9756472505826310527.Spec : Prop :=
  ∀ n, P9756472505826310527.a n = A213034 n

end A213034

/-! ## A213034.P11790072486545643628

`A187321(2*n*A002264(n))`
-/

namespace A213034.P11790072486545643628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 ((2 * n : ℤ) * A002264 n).toNat

end

end A213034.P11790072486545643628

namespace A213034

/-- `A187321(2*n*A002264(n))` -/
def P11790072486545643628.Spec : Prop :=
  ∀ n, P11790072486545643628.a n = A213034 n

end A213034

/-! ## A213034.P5384492276085086810

`A187321(2*n*A152467(2*n))`
-/

namespace A213034.P5384492276085086810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 ((2 * n : ℤ) * A152467 (2 * n)).toNat

end

end A213034.P5384492276085086810

namespace A213034

/-- `A187321(2*n*A152467(2*n))` -/
def P5384492276085086810.Spec : Prop :=
  ∀ n, P5384492276085086810.a n = A213034 n

end A213034

/-!
# A213035: a(n) = n^2 - floor(n/3)^2.

The programs for A213035, the canonical program `A213035.P8922308085434031424` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213035 has offset 0).

The definition of A213035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-floor(n/3)²` (program `A213035.P8922308085434031424`, by `A213035.P8922308085434031424.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213035.P8922308085434031424

`n²-floor(n/3)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213035

/-- `n²-floor(n/3)²` -/
def P8922308085434031424.Spec : Prop :=
  ∀ n, P8922308085434031424.a n = A213035 n

theorem P8922308085434031424.correct : P8922308085434031424.Spec := by
  intro n
  simp only [A213035]

end A213035

/-! ## A213035.P2260267401479851422

`∑[n²%3]*comp[or(3, n)]`
-/

namespace A213035.P2260267401479851422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A213035.P2260267401479851422

namespace A213035

/-- `∑[n²%3]*comp[or(3, n)]` -/
def P2260267401479851422.Spec : Prop :=
  ∀ n, (P2260267401479851422.a n : ℤ) = A213035 n

end A213035

/-! ## A213035.P9022414044958810081

`record[n*ceil(or(2, n-1)/2)]`
-/

namespace A213035.P9022414044958810081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213035.P9022414044958810081

namespace A213035

/-- `record[n*ceil(or(2, n-1)/2)]` -/
def P9022414044958810081.Spec : Prop :=
  ∀ n, P9022414044958810081.a n = A213035 n

end A213035

/-! ## A213035.P3937088332855433826

`∑[ceil((n-1)/gcd(3, n))+n]`
-/

namespace A213035.P3937088332855433826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 3 n : ℚ)⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213035.P3937088332855433826

namespace A213035

/-- `∑[ceil((n-1)/gcd(3, n))+n]` -/
def P3937088332855433826.Spec : Prop :=
  ∀ n, P3937088332855433826.a n = A213035 n

end A213035

/-! ## A213035.P1448853983869543431

`∑[A260316(n)+n]`
-/

namespace A213035.P1448853983869543431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260316 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213035.P1448853983869543431

namespace A213035

/-- `∑[A260316(n)+n]` -/
def P1448853983869543431.Spec : Prop :=
  ∀ n, P1448853983869543431.a n = A213035 n

end A213035

/-! ## A213035.P10158801698886743762

`∑[n²%3]*comp[A004767(n)]`
-/

namespace A213035.P10158801698886743762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

end

end A213035.P10158801698886743762

namespace A213035

/-- `∑[n²%3]*comp[A004767(n)]` -/
def P10158801698886743762.Spec : Prop :=
  ∀ n, (P10158801698886743762.a n : ℤ) = A213035 n

end A213035

/-! ## A213035.P14579414732722491491

`comp[record[xor(3, n)]]*(n-A002264(n))`
-/

namespace A213035.P14579414732722491491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * ((n : ℤ) - A002264 n)

end

end A213035.P14579414732722491491

namespace A213035

/-- `comp[record[xor(3, n)]]*(n-A002264(n))` -/
def P14579414732722491491.Spec : Prop :=
  ∀ n, P14579414732722491491.a n = A213035 n

end A213035

/-! ## A213035.P11000347423094601514

`A004773(n)*A322042(n+1)`
-/

namespace A213035.P11000347423094601514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n * A322042 (n + 1)

end

end A213035.P11000347423094601514

namespace A213035

/-- `A004773(n)*A322042(n+1)` -/
def P11000347423094601514.Spec : Prop :=
  ∀ n, P11000347423094601514.a n = A213035 n

end A213035

/-! ## A213035.P11799641954642185906

`(n-A002264(n))*A004773(n)`
-/

namespace A213035.P11799641954642185906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A002264 n) * A004773 n

end

end A213035.P11799641954642185906

namespace A213035

/-- `(n-A002264(n))*A004773(n)` -/
def P11799641954642185906.Spec : Prop :=
  ∀ n, P11799641954642185906.a n = A213035 n

end A213035

/-! ## A213035.P14960759640174844813

`(A002264(n)+n)*∑[A011655(n)]`
-/

namespace A213035.P14960759640174844813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213035.P14960759640174844813

namespace A213035

/-- `(A002264(n)+n)*∑[A011655(n)]` -/
def P14960759640174844813.Spec : Prop :=
  ∀ n, P14960759640174844813.a n = A213035 n

end A213035

/-! ## A213035.P1750448845994622508

`comp[A006257(2*n+3)]*A322042(n+1)`
-/

namespace A213035.P1750448845994622508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A322042 (n + 1)

end

end A213035.P1750448845994622508

namespace A213035

/-- `comp[A006257(2*n+3)]*A322042(n+1)` -/
def P1750448845994622508.Spec : Prop :=
  ∀ n, P1750448845994622508.a n = A213035 n

end A213035

/-! ## A213035.P2082665255568493780

`A004396(n)*A004773(A130481(n))`
-/

namespace A213035.P2082665255568493780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n * A004773 (A130481 n).toNat

end

end A213035.P2082665255568493780

namespace A213035

/-- `A004396(n)*A004773(A130481(n))` -/
def P2082665255568493780.Spec : Prop :=
  ∀ n, P2082665255568493780.a n = A213035 n

end A213035

/-! ## A213035.P4466519269344498420

`(A011655(n)+A004523(n))*A004773(n)`
-/

namespace A213035.P4466519269344498420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + A004523 n) * A004773 n

end

end A213035.P4466519269344498420

namespace A213035

/-- `(A011655(n)+A004523(n))*A004773(n)` -/
def P4466519269344498420.Spec : Prop :=
  ∀ n, P4466519269344498420.a n = A213035 n

end A213035

/-! ## A213035.P10597551971749340705

`(A004277(n)-A004773(n))*A004773(n)`
-/

namespace A213035.P10597551971749340705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - A004773 n) * A004773 n

end

end A213035.P10597551971749340705

namespace A213035

/-- `(A004277(n)-A004773(n))*A004773(n)` -/
def P10597551971749340705.Spec : Prop :=
  ∀ n, P10597551971749340705.a n = A213035 n

end A213035

/-! ## A213035.P6115168327499810751

`(A005843(n)-A004773(n))*A004773(n)`
-/

namespace A213035.P6115168327499810751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n - A004773 n) * A004773 n

end

end A213035.P6115168327499810751

namespace A213035

/-- `(A005843(n)-A004773(n))*A004773(n)` -/
def P6115168327499810751.Spec : Prop :=
  ∀ n, P6115168327499810751.a n = A213035 n

end A213035

/-! ## A213035.P4938521474261113032

`(A005843(n)-A265667(n))*A265667(n)`
-/

namespace A213035.P4938521474261113032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n - A265667 n) * A265667 n

end

end A213035.P4938521474261113032

namespace A213035

/-- `(A005843(n)-A265667(n))*A265667(n)` -/
def P4938521474261113032.Spec : Prop :=
  ∀ n, P4938521474261113032.a n = A213035 n

end A213035

/-! ## A213035.P13352877012457831942

`(A130481(n)+A002264(n+1))*A004396(n)`
-/

namespace A213035.P13352877012457831942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130481 n + A002264 (n + 1)) * A004396 n

end

end A213035.P13352877012457831942

namespace A213035

/-- `(A130481(n)+A002264(n+1))*A004396(n)` -/
def P13352877012457831942.Spec : Prop :=
  ∀ n, P13352877012457831942.a n = A213035 n

end A213035

/-! ## A213035.P8551780133574130087

`(A004772(n+1)-A004396(n))*A004773(n)`
-/

namespace A213035.P8551780133574130087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004772 (n + 1) - A004396 n) * A004773 n

end

end A213035.P8551780133574130087

namespace A213035

/-- `(A004772(n+1)-A004396(n))*A004773(n)` -/
def P8551780133574130087.Spec : Prop :=
  ∀ n, P8551780133574130087.a n = A213035 n

end A213035

/-! ## A213035.P2345606425981892707

`(A047395(n+1)-A004773(n))*A004396(n)`
-/

namespace A213035.P2345606425981892707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047395 (n + 1) - A004773 n) * A004396 n

end

end A213035.P2345606425981892707

namespace A213035

/-- `(A047395(n+1)-A004773(n))*A004396(n)` -/
def P2345606425981892707.Spec : Prop :=
  ∀ n, P2345606425981892707.a n = A213035 n

end A213035

/-! ## A213035.P16449309392808606672

`(A004773(n+1)-A004396(n+1))*A004773(n)`
-/

namespace A213035.P16449309392808606672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004773 (n + 1) - A004396 (n + 1)) * A004773 n

end

end A213035.P16449309392808606672

namespace A213035

/-- `(A004773(n+1)-A004396(n+1))*A004773(n)` -/
def P16449309392808606672.Spec : Prop :=
  ∀ n, P16449309392808606672.a n = A213035 n

end A213035

/-!
# A213036: a(n) = n^2 - floor(2n/3)^2.

The programs for A213036, the canonical program `A213036.P7077896219963385174` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213036 has offset 0).

The definition of A213036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-floor(2*n/3)²` (program `A213036.P7077896219963385174`, by `A213036.P7077896219963385174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213036.P7077896219963385174

`n²-floor(2*n/3)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213036

/-- `n²-floor(2*n/3)²` -/
def P7077896219963385174.Spec : Prop :=
  ∀ n, P7077896219963385174.a n = A213036 n

theorem P7077896219963385174.correct : P7077896219963385174.Spec := by
  intro n
  simp only [A213036]

end A213036

/-! ## A213036.P364628932145933794

`floor(5*n/3)*∑[∑[n]%3]`
-/

namespace A213036.P364628932145933794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213036.P364628932145933794

namespace A213036

/-- `floor(5*n/3)*∑[∑[n]%3]` -/
def P364628932145933794.Spec : Prop :=
  ∀ n, P364628932145933794.a n = A213036 n

end A213036

/-! ## A213036.P10262905231690724572

`abs(n²-A004523(n)²)`
-/

namespace A213036.P10262905231690724572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - A004523 n ^ 2|

end

end A213036.P10262905231690724572

namespace A213036

/-- `abs(n²-A004523(n)²)` -/
def P10262905231690724572.Spec : Prop :=
  ∀ n, P10262905231690724572.a n = A213036 n

end A213036

/-! ## A213036.P14643205546853469160

`(n-A004523(n))*A047220(n+1)`
-/

namespace A213036.P14643205546853469160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004523 n) * A047220 (n + 1)

end

end A213036.P14643205546853469160

namespace A213036

/-- `(n-A004523(n))*A047220(n+1)` -/
def P14643205546853469160.Spec : Prop :=
  ∀ n, P14643205546853469160.a n = A213036 n

end A213036

/-! ## A213036.P9523373499409060335

`(A004523(n)+n)*A065033(A004396(n))`
-/

namespace A213036.P9523373499409060335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004523 n + (n : ℤ)) * A065033 (A004396 n).toNat

end

end A213036.P9523373499409060335

namespace A213036

/-- `(A004523(n)+n)*A065033(A004396(n))` -/
def P9523373499409060335.Spec : Prop :=
  ∀ n, P9523373499409060335.a n = A213036 n

end A213036

/-! ## A213036.P11297935793907252805

`(A047220(n+2)-A004773(n+1))*A047220(n+1)`
-/

namespace A213036.P11297935793907252805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047220 (n + 2) - A004773 (n + 1)) * A047220 (n + 1)

end

end A213036.P11297935793907252805

namespace A213036

/-- `(A047220(n+2)-A004773(n+1))*A047220(n+1)` -/
def P11297935793907252805.Spec : Prop :=
  ∀ n, P11297935793907252805.a n = A213036 n

end A213036

/-! ## A213036.P8564521733478231474

`A118015(A047205(n+1))`
-/

namespace A213036.P8564521733478231474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A047205 (n + 1)).toNat

end

end A213036.P8564521733478231474

namespace A213036

/-- `A118015(A047205(n+1))` -/
def P8564521733478231474.Spec : Prop :=
  ∀ n, P8564521733478231474.a n = A213036 n

end A213036

/-! ## A213036.P4988410927983586746

`A008615(2*n)*A047220(n+1)`
-/

namespace A213036.P4988410927983586746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n) * A047220 (n + 1)

end

end A213036.P4988410927983586746

namespace A213036

/-- `A008615(2*n)*A047220(n+1)` -/
def P4988410927983586746.Spec : Prop :=
  ∀ n, P4988410927983586746.a n = A213036 n

end A213036

/-! ## A213036.P7151486931664387005

`(A002264(2*n)+n)*A008615(2*n)`
-/

namespace A213036.P7151486931664387005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (2 * n) + (n : ℤ)) * A008615 (2 * n)

end

end A213036.P7151486931664387005

namespace A213036

/-- `(A002264(2*n)+n)*A008615(2*n)` -/
def P7151486931664387005.Spec : Prop :=
  ∀ n, P7151486931664387005.a n = A213036 n

end A213036

/-! ## A213036.P9483524081334122120

`(A004773(2*n)-n)*A008615(2*n)`
-/

namespace A213036.P9483524081334122120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004773 (2 * n) - (n : ℤ)) * A008615 (2 * n)

end

end A213036.P9483524081334122120

namespace A213036

/-- `(A004773(2*n)-n)*A008615(2*n)` -/
def P9483524081334122120.Spec : Prop :=
  ∀ n, P9483524081334122120.a n = A213036 n

end A213036

/-! ## A213036.P2602372176835020549

`record[A213029(n)]`
-/

namespace A213036.P2602372176835020549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213036.P2602372176835020549

namespace A213036

/-- `record[A213029(n)]` -/
def P2602372176835020549.Spec : Prop :=
  ∀ n, P2602372176835020549.a n = A213036 n

end A213036

/-! ## A213036.P17113208382046306428

`A213029(2*n)`
-/

namespace A213036.P17113208382046306428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213029 (2 * n)

end

end A213036.P17113208382046306428

namespace A213036

/-- `A213029(2*n)` -/
def P17113208382046306428.Spec : Prop :=
  ∀ n, P17113208382046306428.a n = A213036 n

end A213036

/-! ## A213036.P18032591661927893508

`record[A008794(n)-A211547(n)]`
-/

namespace A213036.P18032591661927893508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A211547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213036.P18032591661927893508

namespace A213036

/-- `record[A008794(n)-A211547(n)]` -/
def P18032591661927893508.Spec : Prop :=
  ∀ n, P18032591661927893508.a n = A213036 n

end A213036

/-! ## A213036.P12471536649769095306

`(A002264(2*n)+n)*A103221(2*n+1)`
-/

namespace A213036.P12471536649769095306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 (2 * n) + (n : ℤ)) * A103221 (2 * n + 1)

end

end A213036.P12471536649769095306

namespace A213036

/-- `(A002264(2*n)+n)*A103221(2*n+1)` -/
def P12471536649769095306.Spec : Prop :=
  ∀ n, P12471536649769095306.a n = A213036 n

end A213036

/-! ## A213036.P16100902241097408890

`(A004773(2*n)-n)*A103221(2*n+1)`
-/

namespace A213036.P16100902241097408890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004773 (2 * n) - (n : ℤ)) * A103221 (2 * n + 1)

end

end A213036.P16100902241097408890

namespace A213036

/-- `(A004773(2*n)-n)*A103221(2*n+1)` -/
def P16100902241097408890.Spec : Prop :=
  ∀ n, P16100902241097408890.a n = A213036 n

end A213036

/-! ## A213036.P451301151095017760

`(A090168(2*n+1)-1)*A103221(2*n+1)`
-/

namespace A213036.P451301151095017760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090168 (2 * n + 1) - 1) * A103221 (2 * n + 1)

end

end A213036.P451301151095017760

namespace A213036

/-- `(A090168(2*n+1)-1)*A103221(2*n+1)` -/
def P451301151095017760.Spec : Prop :=
  ∀ n, P451301151095017760.a n = A213036 n

end A213036

/-! ## A213036.P13793783800683645944

`A008611(2*n+1)*A063197(2*n+1)/2`
-/

namespace A213036.P13793783800683645944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (2 * n + 1) * A063197 (2 * n + 1) : ℚ) / 2

end

end A213036.P13793783800683645944

namespace A213036

/-- `A008611(2*n+1)*A063197(2*n+1)/2` -/
def P13793783800683645944.Spec : Prop :=
  ∀ n, P13793783800683645944.a n = (A213036 n : ℚ)

end A213036

/-! ## A213036.P14027556624580204404

`record[Δ[A309688(n)]]`
-/

namespace A213036.P14027556624580204404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213036.P14027556624580204404

namespace A213036

/-- `record[Δ[A309688(n)]]` -/
def P14027556624580204404.Spec : Prop :=
  ∀ n, P14027556624580204404.a n = A213036 n

end A213036

/-!
# A213037: a(n) = n^2 - 2*floor(n/2)^2.

The programs for A213037, the canonical program `A213037.P14635627572028191453` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213037 has offset 0).

The definition of A213037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*floor(n/2)²` (program `A213037.P14635627572028191453`, by `A213037.P14635627572028191453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213037.P14635627572028191453

`n²-2*floor(n/2)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213037

/-- `n²-2*floor(n/2)²` -/
def P14635627572028191453.Spec : Prop :=
  ∀ n, P14635627572028191453.a n = A213037 n

theorem P14635627572028191453.correct : P14635627572028191453.Spec := by
  intro n
  simp only [A213037]

end A213037

/-! ## A213037.P14205245799283775661

`floor(n*xor(1, n+1)/2)`
-/

namespace A213037.P14205245799283775661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.xor 1 (n + 1) : ℚ) / 2)⌋

end

end A213037.P14205245799283775661

namespace A213037

/-- `floor(n*xor(1, n+1)/2)` -/
def P14205245799283775661.Spec : Prop :=
  ∀ n, P14205245799283775661.a n = A213037 n

end A213037

/-! ## A213037.P17166341943473014498

`floor(n*(n%2+n/2))`
-/

namespace A213037.P17166341943473014498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((n % 2 : ℕ) : ℚ) + (n : ℚ) / 2)⌋

end

end A213037.P17166341943473014498

namespace A213037

/-- `floor(n*(n%2+n/2))` -/
def P17166341943473014498.Spec : Prop :=
  ∀ n, P17166341943473014498.a n = A213037 n

end A213037

/-! ## A213037.P5326544485530624788

`floor(n*(and(1, n)+n/2))`
-/

namespace A213037.P5326544485530624788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.land 1 n : ℚ) + (n : ℚ) / 2)⌋

end

end A213037.P5326544485530624788

namespace A213037

/-- `floor(n*(and(1, n)+n/2))` -/
def P5326544485530624788.Spec : Prop :=
  ∀ n, P5326544485530624788.a n = A213037 n

end A213037

/-! ## A213037.P5807527780804873704

`floor(n²/2*ratio[or(1, n)])`
-/

namespace A213037.P5807527780804873704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌋

end

end A213037.P5807527780804873704

namespace A213037

/-- `floor(n²/2*ratio[or(1, n)])` -/
def P5807527780804873704.Spec : Prop :=
  ∀ n, P5807527780804873704.a n = A213037 n

end A213037

/-! ## A213037.P975683381795790194

`floor(n*(n/2+2-gcd(2, n)))`
-/

namespace A213037.P975683381795790194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) / 2 + (2 - (Nat.gcd 2 n : ℤ) : ℚ))⌋

end

end A213037.P975683381795790194

namespace A213037

/-- `floor(n*(n/2+2-gcd(2, n)))` -/
def P975683381795790194.Spec : Prop :=
  ∀ n, P975683381795790194.a n = A213037 n

end A213037

/-! ## A213037.P11961967498406709890

`∑[floor(a(n-2)+4/a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A213037.P11961967498406709890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) + 4 / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213037.P11961967498406709890

namespace A213037

/-- `∑[floor(a(n-2)+4/a(n-1))]` -/
def P11961967498406709890.Spec : Prop :=
  ∀ n, P11961967498406709890.a n = A213037 n

end A213037

/-! ## A213037.P11157266869872062155

`floor(n²-(a(n-1)+a(n-1)%2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213037.P11157266869872062155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - (a (n - 1) + Int.tmod (a (n - 1)) 2)

end

end A213037.P11157266869872062155

namespace A213037

/-- `floor(n²-(a(n-1)+a(n-1)%2))` -/
def P11157266869872062155.Spec : Prop :=
  ∀ n, P11157266869872062155.a n = A213037 n

end A213037

/-! ## A213037.P4783576671733176506

`∑[and(2*n+1, 2*n-a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A213037.P4783576671733176506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Int.land (2 * n + 1 : ℤ) ((2 * n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213037.P4783576671733176506

namespace A213037

/-- `∑[and(2*n+1, 2*n-a(n-1))]` -/
def P4783576671733176506.Spec : Prop :=
  ∀ n, P4783576671733176506.a n = A213037 n

end A213037

/-! ## A213037.P7450105793951293875

`floor(n²-a(n-1)-floor(a(n-1))%2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213037.P7450105793951293875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℤ) - a (n - 1) - Int.tmod (a (n - 1)) 2

end

end A213037.P7450105793951293875

namespace A213037

/-- `floor(n²-a(n-1)-floor(a(n-1))%2)` -/
def P7450105793951293875.Spec : Prop :=
  ∀ n, P7450105793951293875.a n = A213037 n

end A213037

/-! ## A213037.P11889791722601279452

`∑[A266722(n)-1]`
-/

namespace A213037.P11889791722601279452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213037.P11889791722601279452

namespace A213037

/-- `∑[A266722(n)-1]` -/
def P11889791722601279452.Spec : Prop :=
  ∀ n, P11889791722601279452.a n = A213037 n

end A213037

/-! ## A213037.P11175824999573067870

`∑[2*n-A266724(n)]`
-/

namespace A213037.P11175824999573067870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213037.P11175824999573067870

namespace A213037

/-- `∑[2*n-A266724(n)]` -/
def P11175824999573067870.Spec : Prop :=
  ∀ n, P11175824999573067870.a n = A213037 n

end A213037

/-! ## A213037.P5193687102701507748

`(A081347(n)-1+n)/2`
-/

namespace A213037.P5193687102701507748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081347 n - 1 + (n : ℤ) : ℚ) / 2

end

end A213037.P5193687102701507748

namespace A213037

/-- `(A081347(n)-1+n)/2` -/
def P5193687102701507748.Spec : Prop :=
  ∀ n, P5193687102701507748.a n = (A213037 n : ℚ)

end A213037

/-! ## A213037.P9949870497124557727

`floor(n/2*A065190(n+1))`
-/

namespace A213037.P9949870497124557727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 * (A065190 (n + 1) : ℚ)⌋

end

end A213037.P9949870497124557727

namespace A213037

/-- `floor(n/2*A065190(n+1))` -/
def P9949870497124557727.Spec : Prop :=
  ∀ n, P9949870497124557727.a n = A213037 n

end A213037

/-! ## A213037.P2878372391011838397

`A195605(n)%A014255(n)`
-/

namespace A213037.P2878372391011838397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195605 n) (A014255 n)

end

end A213037.P2878372391011838397

namespace A213037

/-- `A195605(n)%A014255(n)` -/
def P2878372391011838397.Spec : Prop :=
  ∀ n, P2878372391011838397.a n = A213037 n

end A213037

/-! ## A213037.P6132142215120461403

`A186424(n)%A081346(n)`
-/

namespace A213037.P6132142215120461403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186424 n) (A081346 n)

end

end A213037.P6132142215120461403

namespace A213037

/-- `A186424(n)%A081346(n)` -/
def P6132142215120461403.Spec : Prop :=
  ∀ n, P6132142215120461403.a n = A213037 n

end A213037

/-! ## A213037.P7841435188369707108

`A348232(n)%A033951(n)`
-/

namespace A213037.P7841435188369707108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348232 n) (A033951 n)

end

end A213037.P7841435188369707108

namespace A213037

/-- `A348232(n)%A033951(n)` -/
def P7841435188369707108.Spec : Prop :=
  ∀ n, P7841435188369707108.a n = A213037 n

end A213037

/-! ## A213037.P4122783437189300345

`gcd(A105636(n), A255499(n))`
-/

namespace A213037.P4122783437189300345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105636 n) (A255499 n)

end

end A213037.P4122783437189300345

namespace A213037

/-- `gcd(A105636(n), A255499(n))` -/
def P4122783437189300345.Spec : Prop :=
  ∀ n, (P4122783437189300345.a n : ℤ) = A213037 n

end A213037

/-! ## A213037.P8229550094548106276

`∪[A077221(n), A195605(n)]`
-/

namespace A213037.P8229550094548106276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A213037.P8229550094548106276

namespace A213037

/-- `∪[A077221(n), A195605(n)]` -/
def P8229550094548106276.Spec : Prop :=
  ∀ n, (P8229550094548106276.a n : ℤ) = A213037 n

end A213037

/-! ## A213037.P6403095708150070048

`A090381(n)%A220082(n+1)`
-/

namespace A213037.P6403095708150070048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090381 n) (A220082 (n + 1))

end

end A213037.P6403095708150070048

namespace A213037

/-- `A090381(n)%A220082(n+1)` -/
def P6403095708150070048.Spec : Prop :=
  ∀ n, P6403095708150070048.a n = A213037 n

end A213037

/-!
# A213038: a(n) = n^2 - 3*floor(n/2)^2.

The programs for A213038, the canonical program `A213038.P11676540972426832544` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213038 has offset 0).

The definition of A213038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-3*floor(n/2)²` (program `A213038.P11676540972426832544`, by `A213038.P11676540972426832544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213038.P11676540972426832544

`n²-3*floor(n/2)²`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213038

/-- `n²-3*floor(n/2)²` -/
def P11676540972426832544.Spec : Prop :=
  ∀ n, P11676540972426832544.a n = A213038 n

theorem P11676540972426832544.correct : P11676540972426832544.Spec := by
  intro n
  simp only [A213038]

end A213038

/-! ## A213038.P489702877989729636

`A014682(n)²%(2*n²+1)`
-/

namespace A213038.P489702877989729636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 n ^ 2) (2 * n ^ 2 + 1 : ℤ)

end

end A213038.P489702877989729636

namespace A213038

/-- `A014682(n)²%(2*n²+1)` -/
def P489702877989729636.Spec : Prop :=
  ∀ n, P489702877989729636.a n = A213038 n

end A213038

/-! ## A213038.P11714549435635982334

`∑[A009001(A004273(n))%A195312(n+1)]`
-/

namespace A213038.P11714549435635982334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009001 (A004273 n).toNat) (A195312 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213038.P11714549435635982334

namespace A213038

/-- `∑[A009001(A004273(n))%A195312(n+1)]` -/
def P11714549435635982334.Spec : Prop :=
  ∀ n, P11714549435635982334.a n = A213038 n

end A213038

/-!
# A213039: a(n) = n^3 - floor(n/3)^3.

The programs for A213039, the canonical program `A213039.P11287329969507273957` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213039 has offset 0).

The definition of A213039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-floor(n/3)^3` (program `A213039.P11287329969507273957`, by `A213039.P11287329969507273957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213039.P11287329969507273957

`n^3-floor(n/3)^3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213039

/-- `n^3-floor(n/3)^3` -/
def P11287329969507273957.Spec : Prop :=
  ∀ n, P11287329969507273957.a n = A213039 n

theorem P11287329969507273957.correct : P11287329969507273957.Spec := by
  intro n
  simp only [A213039]

end A213039

/-! ## A213039.P6381441709681386233

`abs(A000578(floor(n/3))-A000578(n))`
-/

namespace A213039.P6381441709681386233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 ⌊(n : ℚ) / 3⌋.toNat - A000578 n|

end

end A213039.P6381441709681386233

namespace A213039

/-- `abs(A000578(floor(n/3))-A000578(n))` -/
def P6381441709681386233.Spec : Prop :=
  ∀ n, P6381441709681386233.a n = A213039 n

end A213039

/-! ## A213039.P7980800400581760886

`(A033562(n)-A033562(A002264(n)))/2`
-/

namespace A213039.P7980800400581760886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033562 n - A033562 (A002264 n).toNat : ℚ) / 2

end

end A213039.P7980800400581760886

namespace A213039

/-- `(A033562(n)-A033562(A002264(n)))/2` -/
def P7980800400581760886.Spec : Prop :=
  ∀ n, P7980800400581760886.a n = (A213039 n : ℚ)

end A213039

/-! ## A213039.P17570039846823069816

`A257238(A171452(n)+n)`
-/

namespace A213039.P17570039846823069816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 (A171452 n + (n : ℤ)).toNat

end

end A213039.P17570039846823069816

namespace A213039

/-- `A257238(A171452(n)+n)` -/
def P17570039846823069816.Spec : Prop :=
  ∀ n, P17570039846823069816.a n = A213039 n

end A213039

/-! ## A213039.P8402079535604419920

`A257238(A002264(n)+∑[n])`
-/

namespace A213039.P8402079535604419920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 (A002264 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A213039.P8402079535604419920

namespace A213039

/-- `A257238(A002264(n)+∑[n])` -/
def P8402079535604419920.Spec : Prop :=
  ∀ n, P8402079535604419920.a n = A213039 n

end A213039

/-!
# A213040: Partial sums of A004738, leftmost column of the sequence of triangles defined in A206492.

The programs for A213040, the canonical program `A213040.P9843905526208867183` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213040 has offset 0).

The definition of A213040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213040.P2139658431810878561

`∑[∑[(-1)^ceil(2*sqrt(n))]]`
-/

namespace A213040.P2139658431810878561
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈2 * Real.sqrt (n : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213040.P2139658431810878561

namespace A213040

/-- `∑[∑[(-1)^ceil(2*sqrt(n))]]` -/
def P2139658431810878561.Spec : Prop :=
  ∀ n, P2139658431810878561.a n = (A213040 n : ℚ)

end A213040

/-! ## A213040.P9843905526208867183

`∑[A053615(n)]+n+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213040

/-- `∑[A053615(n)]+n+1` -/
def P9843905526208867183.Spec : Prop :=
  ∀ n, P9843905526208867183.a n = A213040 n

theorem P9843905526208867183.correct : P9843905526208867183.Spec := by
  intro n
  simp only [A213040]

end A213040

/-! ## A213040.P15247451955386913725

`or(∑[A004738(n+1)], char[1])`
-/

namespace A213040.P15247451955386913725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213040.P15247451955386913725

namespace A213040

/-- `or(∑[A004738(n+1)], char[1])` -/
def P15247451955386913725.Spec : Prop :=
  ∀ n, P15247451955386913725.a n = A213040 n

end A213040

/-! ## A213040.P17908262861475306445

`A000027(∑[A004738(n+1)])`
-/

namespace A213040.P17908262861475306445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213040.P17908262861475306445

namespace A213040

/-- `A000027(∑[A004738(n+1)])` -/
def P17908262861475306445.Spec : Prop :=
  ∀ n, P17908262861475306445.a n = A213040 n

end A213040

/-! ## A213040.P13713199607427317158

`∑[A004738(n+1)]%A155966(n)`
-/

namespace A213040.P13713199607427317158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A155966 n)

end

end A213040.P13713199607427317158

namespace A213040

/-- `∑[A004738(n+1)]%A155966(n)` -/
def P13713199607427317158.Spec : Prop :=
  ∀ n, P13713199607427317158.a n = A213040 n

end A213040

/-! ## A213040.P2262333286594751268

`lcm(∑[A004738(n+1)], A033999(n))`
-/

namespace A213040.P2262333286594751268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A213040.P2262333286594751268

namespace A213040

/-- `lcm(∑[A004738(n+1)], A033999(n))` -/
def P2262333286594751268.Spec : Prop :=
  ∀ n, (P2262333286594751268.a n : ℤ) = A213040 n

end A213040

/-! ## A213040.P9662840723215136432

`∑[A004738(n+1)]*A033999(2*n)`
-/

namespace A213040.P9662840723215136432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (2 * n)

end

end A213040.P9662840723215136432

namespace A213040

/-- `∑[A004738(n+1)]*A033999(2*n)` -/
def P9662840723215136432.Spec : Prop :=
  ∀ n, P9662840723215136432.a n = A213040 n

end A213040

/-! ## A213040.P11280872810482467459

`A010054(3*n+2)+∑[A004738(n+1)]`
-/

namespace A213040.P11280872810482467459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213040.P11280872810482467459

namespace A213040

/-- `A010054(3*n+2)+∑[A004738(n+1)]` -/
def P11280872810482467459.Spec : Prop :=
  ∀ n, P11280872810482467459.a n = A213040 n

end A213040

/-!
# A213041: Number of triples (w,x,y) with all terms in {0..n} and 2*|w-x| = max(w,x,y) - min(w,x,y).

The programs for A213041, the canonical program `A213041.P17127555310051560772` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213041 has offset 0).

The definition of A213041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213041.P17127555310051560772

`n*(n+1)+(1+(-1)^n)/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213041

/-- `n*(n+1)+(1+(-1)^n)/2` -/
def P17127555310051560772.Spec : Prop :=
  ∀ n, P17127555310051560772.a n = (A213041 n : ℚ)

end A213041

/-! ## A213041.P4104579568239045714

`∑[xor(1, n)+n]`
-/

namespace A213041.P4104579568239045714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P4104579568239045714

namespace A213041

/-- `∑[xor(1, n)+n]` -/
def P4104579568239045714.Spec : Prop :=
  ∀ n, (P4104579568239045714.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P11080810049881052023

`∑[and(Δ[n²], -3)]`
-/

namespace A213041.P11080810049881052023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P11080810049881052023

namespace A213041

/-- `∑[and(Δ[n²], -3)]` -/
def P11080810049881052023.Spec : Prop :=
  ∀ n, P11080810049881052023.a n = A213041 n

end A213041

/-! ## A213041.P9866124861457517941

`∑[or(1, comp[or(2, n)])]`
-/

namespace A213041.P9866124861457517941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P9866124861457517941

namespace A213041

/-- `∑[or(1, comp[or(2, n)])]` -/
def P9866124861457517941.Spec : Prop :=
  ∀ n, (P9866124861457517941.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P16915792270729031803

`∑[2*or(1, n)-1]`
-/

namespace A213041.P16915792270729031803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P16915792270729031803

namespace A213041

/-- `∑[2*or(1, n)-1]` -/
def P16915792270729031803.Spec : Prop :=
  ∀ n, P16915792270729031803.a n = A213041 n

end A213041

/-! ## A213041.P5980850615647735393

`∑[lcm(2, or(1, n))-1]`
-/

namespace A213041.P5980850615647735393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.lor 1 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P5980850615647735393

namespace A213041

/-- `∑[lcm(2, or(1, n))-1]` -/
def P5980850615647735393.Spec : Prop :=
  ∀ n, P5980850615647735393.a n = A213041 n

end A213041

/-! ## A213041.P6159038734259443264

`∑[xor(3, 2*or(1, n))]`
-/

namespace A213041.P6159038734259443264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P6159038734259443264

namespace A213041

/-- `∑[xor(3, 2*or(1, n))]` -/
def P6159038734259443264.Spec : Prop :=
  ∀ n, (P6159038734259443264.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P15039744966176072584

`∑[or(1, lt[n, or(2, n)])]`
-/

namespace A213041.P15039744966176072584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P15039744966176072584

namespace A213041

/-- `∑[or(1, lt[n, or(2, n)])]` -/
def P15039744966176072584.Spec : Prop :=
  ∀ n, (P15039744966176072584.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P14019012125034019903

`∑[a(n-2)+4]` with `a(0)=1, a(1)=1`
-/

namespace A213041.P14019012125034019903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P14019012125034019903

namespace A213041

/-- `∑[a(n-2)+4]` -/
def P14019012125034019903.Spec : Prop :=
  ∀ n, (P14019012125034019903.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P13284052045367375976

`∑[and(2*n, -3)+1]`
-/

namespace A213041.P13284052045367375976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P13284052045367375976

namespace A213041

/-- `∑[and(2*n, -3)+1]` -/
def P13284052045367375976.Spec : Prop :=
  ∀ n, P13284052045367375976.a n = A213041 n

end A213041

/-! ## A213041.P16489015898151568314

`or(∑[2*n], char[2*n])`
-/

namespace A213041.P16489015898151568314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A213041.P16489015898151568314

namespace A213041

/-- `or(∑[2*n], char[2*n])` -/
def P16489015898151568314.Spec : Prop :=
  ∀ n, (P16489015898151568314.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P8426206984226963050

`xor(∑[2*n], char[2*n])`
-/

namespace A213041.P8426206984226963050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (if ∃ j, f2 j = n then 1 else 0)

end

end A213041.P8426206984226963050

namespace A213041

/-- `xor(∑[2*n], char[2*n])` -/
def P8426206984226963050.Spec : Prop :=
  ∀ n, (P8426206984226963050.a n : ℤ) = A213041 n

end A213041

/-! ## A213041.P7316918051899457828

`∑[∑[4-a(n-1)]]` with `a(0)=1, a(1)=0`
-/

namespace A213041.P7316918051899457828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P7316918051899457828

namespace A213041

/-- `∑[∑[4-a(n-1)]]` -/
def P7316918051899457828.Spec : Prop :=
  ∀ n, P7316918051899457828.a n = A213041 n

end A213041

/-! ## A213041.P13102457395719970020

`-∑[or(2, -(2*n+1))]`
-/

namespace A213041.P13102457395719970020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213041.P13102457395719970020

namespace A213041

/-- `-∑[or(2, -(2*n+1))]` -/
def P13102457395719970020.Spec : Prop :=
  ∀ n, P13102457395719970020.a n = A213041 n

end A213041

/-! ## A213041.P12289212719550073965

`abs(or(1, n*(n+2))-n)`
-/

namespace A213041.P12289212719550073965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (n * (n + 2)) : ℤ) - (n : ℤ)|

end

end A213041.P12289212719550073965

namespace A213041

/-- `abs(or(1, n*(n+2))-n)` -/
def P12289212719550073965.Spec : Prop :=
  ∀ n, P12289212719550073965.a n = A213041 n

end A213041

/-! ## A213041.P14673502081492242187

`-∑[xor(n, -2)-(n-1)]`
-/

namespace A213041.P14673502081492242187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-2) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213041.P14673502081492242187

namespace A213041

/-- `-∑[xor(n, -2)-(n-1)]` -/
def P14673502081492242187.Spec : Prop :=
  ∀ n, P14673502081492242187.a n = A213041 n

end A213041

/-! ## A213041.P17839731475427176135

`∑[∑[∑[ogf((1+3x^2)/(1+x))]]]`
-/

namespace A213041.P17839731475427176135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213041.P17839731475427176135

namespace A213041

/-- `∑[∑[∑[ogf((1+3x^2)/(1+x))]]]` -/
def P17839731475427176135.Spec : Prop :=
  ∀ n, P17839731475427176135.a n = A213041 n

end A213041

/-! ## A213041.P15971488923974182761

`ogf((1+3x^2)/(1-2x+2x^3-x^4))`
-/

namespace A213041.P15971488923974182761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, -2, 0, 2, -1] n

end

end A213041.P15971488923974182761

namespace A213041

/-- `ogf((1+3x^2)/(1-2x+2x^3-x^4))` -/
def P15971488923974182761.Spec : Prop :=
  ∀ n, P15971488923974182761.a n = A213041 n

end A213041

/-! ## A213041.P8657559566743462370

`floor((n+1)²-(a(n-1)/n+1))` with `a(0)=1`
-/

namespace A213041.P8657559566743462370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) - ((a (n - 1) : ℚ) / (n : ℚ) + 1)⌋

end

end A213041.P8657559566743462370

namespace A213041

/-- `floor((n+1)²-(a(n-1)/n+1))` -/
def P8657559566743462370.Spec : Prop :=
  ∀ n, P8657559566743462370.a n = A213041 n

end A213041

/-!
# A213042: Convolution of (1,0,2,0,3,0,...) and (1,0,0,2,0,0,3,0,0,...); i.e., (A027656(n)) and (A175676(n+2)).

The programs for A213042, the canonical program `A213042.P6060846030219902544` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213042 has offset 0).

The definition of A213042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213042.P6060846030219902544

`A028289(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213042

/-- `A028289(n)-a(n-1)` -/
def P6060846030219902544.Spec : Prop :=
  ∀ n, P6060846030219902544.a n = A213042 n

theorem P6060846030219902544.correct : P6060846030219902544.Spec := by
  intro n
  simp only [A213042]

end A213042

/-! ## A213042.P11988828785649296281

`A008731(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A213042.P11988828785649296281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A008731 n + a (n - 3)

end

end A213042.P11988828785649296281

namespace A213042

/-- `A008731(n)+a(n-3)` -/
def P11988828785649296281.Spec : Prop :=
  ∀ n, P11988828785649296281.a n = A213042 n

end A213042

/-! ## A213042.P18184877316838676972

`A025796(n)+∑[A000217(A008615(n))]`
-/

namespace A213042.P18184877316838676972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213042.P18184877316838676972

namespace A213042

/-- `A025796(n)+∑[A000217(A008615(n))]` -/
def P18184877316838676972.Spec : Prop :=
  ∀ n, P18184877316838676972.a n = A213042 n

end A213042

/-! ## A213042.P5861193424726040915

`A266769(n)-A307872(n+2)`
-/

namespace A213042.P5861193424726040915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A307872 (n + 2)

end

end A213042.P5861193424726040915

namespace A213042

/-- `A266769(n)-A307872(n+2)` -/
def P5861193424726040915.Spec : Prop :=
  ∀ n, P5861193424726040915.a n = A213042 n

end A213042

/-! ## A213042.P8819825533660819669

`A144677(n+1)-(A165188(n+1)+A165188(n+2))`
-/

namespace A213042.P8819825533660819669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 (n + 1) - (A165188 (n + 1) + A165188 (n + 2))

end

end A213042.P8819825533660819669

namespace A213042

/-- `A144677(n+1)-(A165188(n+1)+A165188(n+2))` -/
def P8819825533660819669.Spec : Prop :=
  ∀ n, P8819825533660819669.a n = A213042 n

end A213042

/-! ## A213042.P8519239885870394640

`A307872(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A213042.P8519239885870394640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307872 (n + 3) - a (n - 1)

end

end A213042.P8519239885870394640

namespace A213042

/-- `A307872(n+3)-a(n-1)` -/
def P8519239885870394640.Spec : Prop :=
  ∀ n, P8519239885870394640.a n = A213042 n

end A213042

/-! ## A213042.P14670944446016529811

`A006918(n+3)-A006501(n+2)`
-/

namespace A213042.P14670944446016529811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 3) - A006501 (n + 2)

end

end A213042.P14670944446016529811

namespace A213042

/-- `A006918(n+3)-A006501(n+2)` -/
def P14670944446016529811.Spec : Prop :=
  ∀ n, P14670944446016529811.a n = A213042 n

end A213042

/-! ## A213042.P12521035403387353368

`A029136(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A213042.P12521035403387353368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029136 (2 * n) - a (n - 1)

end

end A213042.P12521035403387353368

namespace A213042

/-- `A029136(2*n)-a(n-1)` -/
def P12521035403387353368.Spec : Prop :=
  ∀ n, P12521035403387353368.a n = A213042 n

end A213042

/-! ## A213042.P13276098034096287746

`A029046(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A213042.P13276098034096287746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029046 (2 * n) - a (n - 1)

end

end A213042.P13276098034096287746

namespace A213042

/-- `A029046(2*n)-a(n-1)` -/
def P13276098034096287746.Spec : Prop :=
  ∀ n, P13276098034096287746.a n = A213042 n

end A213042

/-! ## A213042.P8091115681896787781

`A001400(n)-A029252(Δ[n²])`
-/

namespace A213042.P8091115681896787781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A029252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A213042.P8091115681896787781

namespace A213042

/-- `A001400(n)-A029252(Δ[n²])` -/
def P8091115681896787781.Spec : Prop :=
  ∀ n, P8091115681896787781.a n = A213042 n

end A213042

/-! ## A213042.P5468537484845394473

`A266769(n)-A029136(2*n+1)`
-/

namespace A213042.P5468537484845394473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A029136 (2 * n + 1)

end

end A213042.P5468537484845394473

namespace A213042

/-- `A266769(n)-A029136(2*n+1)` -/
def P5468537484845394473.Spec : Prop :=
  ∀ n, P5468537484845394473.a n = A213042 n

end A213042

/-! ## A213042.P3172663950898026583

`∑[A025834(2*n)]-A025834(2*n+1)`
-/

namespace A213042.P3172663950898026583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025834 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025834 (2 * n + 1)

end

end A213042.P3172663950898026583

namespace A213042

/-- `∑[A025834(2*n)]-A025834(2*n+1)` -/
def P3172663950898026583.Spec : Prop :=
  ∀ n, P3172663950898026583.a n = A213042 n

end A213042

/-! ## A213042.P5691844243299477060

`A090176(2*n)+∑[A090176(2*n+5)]`
-/

namespace A213042.P5691844243299477060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090176 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213042.P5691844243299477060

namespace A213042

/-- `A090176(2*n)+∑[A090176(2*n+5)]` -/
def P5691844243299477060.Spec : Prop :=
  ∀ n, P5691844243299477060.a n = A213042 n

end A213042

/-! ## A213042.P14437236793326622442

`A029265(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A213042.P14437236793326622442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029265 (4 * n) - a (n - 1)

end

end A213042.P14437236793326622442

namespace A213042

/-- `A029265(4*n)-a(n-1)` -/
def P14437236793326622442.Spec : Prop :=
  ∀ n, P14437236793326622442.a n = A213042 n

end A213042

/-! ## A213042.P7999977399955268286

`A266769(n)-A029265(A016825(n))`
-/

namespace A213042.P7999977399955268286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A029265 (A016825 n).toNat

end

end A213042.P7999977399955268286

namespace A213042

/-- `A266769(n)-A029265(A016825(n))` -/
def P7999977399955268286.Spec : Prop :=
  ∀ n, P7999977399955268286.a n = A213042 n

end A213042

/-!
# A213043: Convolution of (1,-1,2,-2,3,-3,...) and A000045 (Fibonacci numbers).

The programs for A213043, the canonical program `A213043.P12644028994462715410` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213043 has offset 0).

The definition of A213043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213043.P9661205437936749188

`A000045(n+1)+((-1)^n*(2*n+1)-1)/4`
-/

namespace A213043.P9661205437936749188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) + ((-1) ^ n * (2 * n + 1 : ℤ) - 1 : ℚ) / 4

end

end A213043.P9661205437936749188

namespace A213043

/-- `A000045(n+1)+((-1)^n*(2*n+1)-1)/4` -/
def P9661205437936749188.Spec : Prop :=
  ∀ n, P9661205437936749188.a n = (A213043 n : ℚ)

end A213043

/-! ## A213043.P12644028994462715410

`3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213043

/-- `3*a(n-2)+a(n-3)-2*a(n-4)-a(n-5)` -/
def P12644028994462715410.Spec : Prop :=
  ∀ n, P12644028994462715410.a n = A213043 n

theorem P12644028994462715410.correct : P12644028994462715410.Spec := by
  intro n
  simp only [A213043]

end A213043

/-! ## A213043.P2993977366280056905

`ogf(1/(1-3x^2-x^3+2x^4+x^5))`
-/

namespace A213043.P2993977366280056905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, -1, 2, 1] n

end

end A213043.P2993977366280056905

namespace A213043

/-- `ogf(1/(1-3x^2-x^3+2x^4+x^5))` -/
def P2993977366280056905.Spec : Prop :=
  ∀ n, P2993977366280056905.a n = A213043 n

end A213043

/-! ## A213043.P731230945333880808

`A008346(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A213043.P731230945333880808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008346 n + a (n - 2)

end

end A213043.P731230945333880808

namespace A213043

/-- `A008346(n)+a(n-2)` -/
def P731230945333880808.Spec : Prop :=
  ∀ n, P731230945333880808.a n = A213043 n

end A213043

/-! ## A213043.P721313859795214452

`A000071(n+1)+Δ[gcd(n, ∑[n])]`
-/

namespace A213043.P721313859795214452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A213043.P721313859795214452

namespace A213043

/-- `A000071(n+1)+Δ[gcd(n, ∑[n])]` -/
def P721313859795214452.Spec : Prop :=
  ∀ n, P721313859795214452.a n = A213043 n

end A213043

/-! ## A213043.P9505840154286945825

`∑[n*(-1)^n]+A000045(n+1)`
-/

namespace A213043.P9505840154286945825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 (n + 1)

end

end A213043.P9505840154286945825

namespace A213043

/-- `∑[n*(-1)^n]+A000045(n+1)` -/
def P9505840154286945825.Spec : Prop :=
  ∀ n, P9505840154286945825.a n = A213043 n

end A213043

/-! ## A213043.P13085147961207325948

`A081659(n)-A014682(n)`
-/

namespace A213043.P13085147961207325948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n - A014682 n

end

end A213043.P13085147961207325948

namespace A213043

/-- `A081659(n)-A014682(n)` -/
def P13085147961207325948.Spec : Prop :=
  ∀ n, P13085147961207325948.a n = A213043 n

end A213043

/-! ## A213043.P12690947051932479981

`∑[A212804(n)]-A001057(n)`
-/

namespace A213043.P12690947051932479981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001057 n

end

end A213043.P12690947051932479981

namespace A213043

/-- `∑[A212804(n)]-A001057(n)` -/
def P12690947051932479981.Spec : Prop :=
  ∀ n, P12690947051932479981.a n = A213043 n

end A213043

/-! ## A213043.P8199463758082960814

`A212804(n+2)-A001057(n)`
-/

namespace A213043.P8199463758082960814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - A001057 n

end

end A213043.P8199463758082960814

namespace A213043

/-- `A212804(n+2)-A001057(n)` -/
def P8199463758082960814.Spec : Prop :=
  ∀ n, P8199463758082960814.a n = A213043 n

end A213043

/-! ## A213043.P13330498113930783463

`∑[A212804(n)]-Δ[A158416(n)]`
-/

namespace A213043.P13330498113930783463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A213043.P13330498113930783463

namespace A213043

/-- `∑[A212804(n)]-Δ[A158416(n)]` -/
def P13330498113930783463.Spec : Prop :=
  ∀ n, P13330498113930783463.a n = A213043 n

end A213043

/-! ## A213043.P13472812910018230432

`A000071(n+1)+Δ[A026741(n)]`
-/

namespace A213043.P13472812910018230432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (f1 (n + 1) - f1 n)

end

end A213043.P13472812910018230432

namespace A213043

/-- `A000071(n+1)+Δ[A026741(n)]` -/
def P13472812910018230432.Spec : Prop :=
  ∀ n, P13472812910018230432.a n = A213043 n

end A213043

/-! ## A213043.P13546302702260606656

`A212804(n+2)-Δ[A158416(n)]`
-/

namespace A213043.P13546302702260606656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) - (f1 (n + 1) - f1 n)

end

end A213043.P13546302702260606656

namespace A213043

/-- `A212804(n+2)-Δ[A158416(n)]` -/
def P13546302702260606656.Spec : Prop :=
  ∀ n, P13546302702260606656.a n = A213043 n

end A213043

/-! ## A213043.P9706628352851266842

`∑[A212804(n)+n*A033999(n)]`
-/

namespace A213043.P9706628352851266842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (n : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213043.P9706628352851266842

namespace A213043

/-- `∑[A212804(n)+n*A033999(n)]` -/
def P9706628352851266842.Spec : Prop :=
  ∀ n, P9706628352851266842.a n = A213043 n

end A213043

/-! ## A213043.P12007342689581610832

`A000071(n+1)+1-A001057(n)`
-/

namespace A213043.P12007342689581610832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (1 - A001057 n)

end

end A213043.P12007342689581610832

namespace A213043

/-- `A000071(n+1)+1-A001057(n)` -/
def P12007342689581610832.Spec : Prop :=
  ∀ n, P12007342689581610832.a n = A213043 n

end A213043

/-! ## A213043.P11709392952342145247

`A008346(n+1)-A001057(n+2)`
-/

namespace A213043.P11709392952342145247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 1) - A001057 (n + 2)

end

end A213043.P11709392952342145247

namespace A213043

/-- `A008346(n+1)-A001057(n+2)` -/
def P11709392952342145247.Spec : Prop :=
  ∀ n, P11709392952342145247.a n = A213043 n

end A213043

/-! ## A213043.P15631272638540633871

`A000045(n+1)-A131739(2*n)+n`
-/

namespace A213043.P15631272638540633871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A131739 (2 * n) + (n : ℤ)

end

end A213043.P15631272638540633871

namespace A213043

/-- `A000045(n+1)-A131739(2*n)+n` -/
def P15631272638540633871.Spec : Prop :=
  ∀ n, P15631272638540633871.a n = A213043 n

end A213043

/-!
# A213044: Convolution of Fibonacci numbers and positive integers repeated three times (A000045 and A008620).

The programs for A213044, the canonical program `A213044.P16913885275272728411` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213044 has offset 0).

The definition of A213044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213044.P16913885275272728411

`A164397(n)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213044

/-- `A164397(n)-(a(n-2)+a(n-1))` -/
def P16913885275272728411.Spec : Prop :=
  ∀ n, P16913885275272728411.a n = A213044 n

theorem P16913885275272728411.correct : P16913885275272728411.Spec := by
  intro n
  simp only [A213044]

end A213044

/-! ## A213044.P6204672351687034173

`A332274(n)+A260552(A192210(n))`
-/

namespace A213044.P6204672351687034173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332274 n + A260552 (A192210 n).toNat

end

end A213044.P6204672351687034173

namespace A213044

/-- `A332274(n)+A260552(A192210(n))` -/
def P6204672351687034173.Spec : Prop :=
  ∀ n, P6204672351687034173.a n = A213044 n

end A213044

/-! ## A213044.P14035868133273332295

`A175081(A003293(n))`
-/

namespace A213044.P14035868133273332295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175081 (A003293 n).toNat

end

end A213044.P14035868133273332295

namespace A213044

/-- `A175081(A003293(n))` -/
def P14035868133273332295.Spec : Prop :=
  ∀ n, P14035868133273332295.a n = A213044 n

end A213044

/-! ## A213044.P18126407670142638300

`A175081(A182746(n))`
-/

namespace A213044.P18126407670142638300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175081 (A182746 n).toNat

end

end A213044.P18126407670142638300

namespace A213044

/-- `A175081(A182746(n))` -/
def P18126407670142638300.Spec : Prop :=
  ∀ n, P18126407670142638300.a n = A213044 n

end A213044

/-! ## A213044.P2630935335561224963

`A175081(A305106(n))`
-/

namespace A213044.P2630935335561224963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175081 (A305106 n).toNat

end

end A213044.P2630935335561224963

namespace A213044

/-- `A175081(A305106(n))` -/
def P2630935335561224963.Spec : Prop :=
  ∀ n, P2630935335561224963.a n = A213044 n

end A213044

/-!
# A213045: Number of (w,x,y) with all terms in {0,...,n} and 2*|w-x| > max(w,x,y) - min(w,x,y).

The programs for A213045, the canonical program `A213045.P16353088096091808009` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213045 has offset 0).

The definition of A213045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213045.P8557236422830541499

`(2*n*(4*n²+9*n+8)-3*(-1)^n+3)/12`
-/

namespace A213045.P8557236422830541499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n * (4 * n ^ 2 + 9 * n + 8) : ℤ) - 3 * (-1) ^ n + 3 : ℚ) / 12

end

end A213045.P8557236422830541499

namespace A213045

/-- `(2*n*(4*n²+9*n+8)-3*(-1)^n+3)/12` -/
def P8557236422830541499.Spec : Prop :=
  ∀ n, P8557236422830541499.a n = (A213045 n : ℚ)

theorem P8557236422830541499.correct : P8557236422830541499.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A213045, Nat.add_sub_cancel, A213045.P8557236422830541499.a, A213045.P16353088096091808009.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A213045, Nat.add_sub_cancel, A213045.P8557236422830541499.a, A213045.P16353088096091808009.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213045

/-! ## A213045.P16353088096091808009

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=14, a(3)=36, a(4)=72`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213045

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P16353088096091808009.Spec : Prop :=
  ∀ n, P16353088096091808009.a n = A213045 n

theorem P16353088096091808009.correct : P16353088096091808009.Spec := by
  intro n
  simp only [A213045]

end A213045

/-! ## A213045.P17127987006793450733

`2*A212685(n+1)`
-/

namespace A213045.P17127987006793450733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212685 (n + 1)

end

end A213045.P17127987006793450733

namespace A213045

/-- `2*A212685(n+1)` -/
def P17127987006793450733.Spec : Prop :=
  ∀ n, P17127987006793450733.a n = A213045 n

end A213045

/-! ## A213045.P64470943467783120

`(n+1)^3-A087035(n+1)`
-/

namespace A213045.P64470943467783120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A087035 (n + 1)

end

end A213045.P64470943467783120

namespace A213045

/-- `(n+1)^3-A087035(n+1)` -/
def P64470943467783120.Spec : Prop :=
  ∀ n, P64470943467783120.a n = A213045 n

end A213045

/-! ## A213045.P7177755760394066206

`∑[∑[record[n*and(2, n)]]]`
-/

namespace A213045.P7177755760394066206
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P7177755760394066206

namespace A213045

/-- `∑[∑[record[n*and(2, n)]]]` -/
def P7177755760394066206.Spec : Prop :=
  ∀ n, (P7177755760394066206.a n : ℤ) = A213045 n

end A213045

/-! ## A213045.P541619733943109859

`∑[and(∑[abs(1-4*n)], -2)]`
-/

namespace A213045.P541619733943109859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f2 j) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P541619733943109859

namespace A213045

/-- `∑[and(∑[abs(1-4*n)], -2)]` -/
def P541619733943109859.Spec : Prop :=
  ∀ n, P541619733943109859.a n = A213045 n

end A213045

/-! ## A213045.P7297458999471829592

`∑[∑[4*n]]-∑[and(n, -2)]`
-/

namespace A213045.P7297458999471829592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A213045.P7297458999471829592

namespace A213045

/-- `∑[∑[4*n]]-∑[and(n, -2)]` -/
def P7297458999471829592.Spec : Prop :=
  ∀ n, P7297458999471829592.a n = A213045 n

end A213045

/-! ## A213045.P11211560479128310757

`∑[∑[a(n-2)+8]]` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A213045.P11211560479128310757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f2 =>
  f2 (n - 2) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P11211560479128310757

namespace A213045

/-- `∑[∑[a(n-2)+8]]` -/
def P11211560479128310757.Spec : Prop :=
  ∀ n, (P11211560479128310757.a n : ℤ) = A213045 n

end A213045

/-! ## A213045.P17172444461295898762

`∑[C(Δ[n²], 2)]+ceil(n/2)`
-/

namespace A213045.P17172444461295898762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉

end

end A213045.P17172444461295898762

namespace A213045

/-- `∑[C(Δ[n²], 2)]+ceil(n/2)` -/
def P17172444461295898762.Spec : Prop :=
  ∀ n, P17172444461295898762.a n = A213045 n

end A213045

/-! ## A213045.P16585640319488374789

`∑[∑[∑[8-a(n-1)]]]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A213045.P16585640319488374789
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2] fun n f3 =>
  8 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P16585640319488374789

namespace A213045

/-- `∑[∑[∑[8-a(n-1)]]]` -/
def P16585640319488374789.Spec : Prop :=
  ∀ n, P16585640319488374789.a n = A213045 n

end A213045

/-! ## A213045.P1474075257547340209

`∑[and(1, n)+C(2*n+1, 2)]`
-/

namespace A213045.P1474075257547340209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + Nat.choose (2 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P1474075257547340209

namespace A213045

/-- `∑[and(1, n)+C(2*n+1, 2)]` -/
def P1474075257547340209.Spec : Prop :=
  ∀ n, (P1474075257547340209.a n : ℤ) = A213045 n

end A213045

/-! ## A213045.P9384638655559015884

`∑[n%2+n*(2*n+1)]`
-/

namespace A213045.P9384638655559015884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P9384638655559015884

namespace A213045

/-- `∑[n%2+n*(2*n+1)]` -/
def P9384638655559015884.Spec : Prop :=
  ∀ n, (P9384638655559015884.a n : ℤ) = A213045 n

end A213045

/-! ## A213045.P12338961130903440589

`∑[and(1, n)+n*(2*n+1)]`
-/

namespace A213045.P12338961130903440589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n * (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213045.P12338961130903440589

namespace A213045

/-- `∑[and(1, n)+n*(2*n+1)]` -/
def P12338961130903440589.Spec : Prop :=
  ∀ n, (P12338961130903440589.a n : ℤ) = A213045 n

end A213045

/-! ## A213045.P16325345925700854858

`floor(∑[C(2*n+1, 2)+1/2])`
-/

namespace A213045.P16325345925700854858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℚ) + (1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A213045.P16325345925700854858

namespace A213045

/-- `floor(∑[C(2*n+1, 2)+1/2])` -/
def P16325345925700854858.Spec : Prop :=
  ∀ n, P16325345925700854858.a n = A213045 n

end A213045

/-! ## A213045.P12681412080459453648

`∑[∑[4*n+1]-or(1, n)]-∑[n]`
-/

namespace A213045.P12681412080459453648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.lor 1 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A213045.P12681412080459453648

namespace A213045

/-- `∑[∑[4*n+1]-or(1, n)]-∑[n]` -/
def P12681412080459453648.Spec : Prop :=
  ∀ n, P12681412080459453648.a n = A213045 n

end A213045

/-! ## A213045.P1067458188980923260

`∑[lcm(n, 2*n+1)]+floor((n+1)/2)`
-/

namespace A213045.P1067458188980923260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(n + 1 : ℚ) / 2⌋

end

end A213045.P1067458188980923260

namespace A213045

/-- `∑[lcm(n, 2*n+1)]+floor((n+1)/2)` -/
def P1067458188980923260.Spec : Prop :=
  ∀ n, P1067458188980923260.a n = A213045 n

end A213045

/-! ## A213045.P5884271476951648752

`A111746(n)-∑[n]`
-/

namespace A213045.P5884271476951648752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111746 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213045.P5884271476951648752

namespace A213045

/-- `A111746(n)-∑[n]` -/
def P5884271476951648752.Spec : Prop :=
  ∀ n, P5884271476951648752.a n = A213045 n

end A213045

/-! ## A213045.P14279800944021459579

`∑[A139596(n)]-∑[2*n]`
-/

namespace A213045.P14279800944021459579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213045.P14279800944021459579

namespace A213045

/-- `∑[A139596(n)]-∑[2*n]` -/
def P14279800944021459579.Spec : Prop :=
  ∀ n, P14279800944021459579.a n = A213045 n

end A213045

/-! ## A213045.P15211307187955062044

`A174723(n+1)-∑[char[2*n]]`
-/

namespace A213045.P15211307187955062044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174723 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213045.P15211307187955062044

namespace A213045

/-- `A174723(n+1)-∑[char[2*n]]` -/
def P15211307187955062044.Spec : Prop :=
  ∀ n, P15211307187955062044.a n = A213045 n

end A213045

/-! ## A213045.P5465156089491246491

`∑[A046092(n)+1]-∑[or(1, n)]`
-/

namespace A213045.P5465156089491246491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A213045.P5465156089491246491

namespace A213045

/-- `∑[A046092(n)+1]-∑[or(1, n)]` -/
def P5465156089491246491.Spec : Prop :=
  ∀ n, P5465156089491246491.a n = A213045 n

end A213045

/-!
# A213046: Convolution of Lucas numbers and positive integers repeated (A000032 and A008619).

The programs for A213046, the canonical program `A213046.P5913011838530046072` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213046 has offset 0).

The definition of A213046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213046.P5913011838530046072

`2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=8, a(3)=13, a(4)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213046

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+a(n-5)` -/
def P5913011838530046072.Spec : Prop :=
  ∀ n, P5913011838530046072.a n = A213046 n

theorem P5913011838530046072.correct : P5913011838530046072.Spec := by
  intro n
  simp only [A213046]

end A213046

/-! ## A213046.P10068959791748425554

`∑[∑[ogf((-2+x)/(-1+2x^2+x^3))]]`
-/

namespace A213046.P10068959791748425554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, 0, -2, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P10068959791748425554

namespace A213046

/-- `∑[∑[ogf((-2+x)/(-1+2x^2+x^3))]]` -/
def P10068959791748425554.Spec : Prop :=
  ∀ n, P10068959791748425554.a n = A213046 n

end A213046

/-! ## A213046.P5329085095554358283

`ogf((-2+x)/(-1+2x+x^2-3x^3+x^5))`
-/

namespace A213046.P5329085095554358283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -2, -1, 3, 0, -1] n

end

end A213046.P5329085095554358283

namespace A213046

/-- `ogf((-2+x)/(-1+2x+x^2-3x^3+x^5))` -/
def P5329085095554358283.Spec : Prop :=
  ∀ n, P5329085095554358283.a n = A213046 n

end A213046

/-! ## A213046.P17958708962704535477

`∑[∑[a(n-1)+a(n-2)]-a(n-1)]` with `a(0)=2, a(1)=1`
-/

namespace A213046.P17958708962704535477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P17958708962704535477

namespace A213046

/-- `∑[∑[a(n-1)+a(n-2)]-a(n-1)]` -/
def P17958708962704535477.Spec : Prop :=
  ∀ n, P17958708962704535477.a n = A213046 n

end A213046

/-! ## A213046.P7656143425342582965

`∑[A074392(n)]`
-/

namespace A213046.P7656143425342582965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P7656143425342582965

namespace A213046

/-- `∑[A074392(n)]` -/
def P7656143425342582965.Spec : Prop :=
  ∀ n, P7656143425342582965.a n = A213046 n

end A213046

/-! ## A213046.P9688835483804441952

`∑[A000032(n)+a(n-2)]` with `a(0)=2, a(1)=1`
-/

namespace A213046.P9688835483804441952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  A000032 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P9688835483804441952

namespace A213046

/-- `∑[A000032(n)+a(n-2)]` -/
def P9688835483804441952.Spec : Prop :=
  ∀ n, P9688835483804441952.a n = A213046 n

end A213046

/-! ## A213046.P18123633275888021035

`A000032(n+2)+a(n-2)-1` with `a(0)=2, a(1)=3`
-/

namespace A213046.P18123633275888021035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000032 (n + 2) + (a (n - 2) - 1)

end

end A213046.P18123633275888021035

namespace A213046

/-- `A000032(n+2)+a(n-2)-1` -/
def P18123633275888021035.Spec : Prop :=
  ∀ n, P18123633275888021035.a n = A213046 n

end A213046

/-! ## A213046.P13848941679882303

`A215004(n)+A066629(n)`
-/

namespace A213046.P13848941679882303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 n + A066629 n

end

end A213046.P13848941679882303

namespace A213046

/-- `A215004(n)+A066629(n)` -/
def P13848941679882303.Spec : Prop :=
  ∀ n, P13848941679882303.a n = A213046 n

end A213046

/-! ## A213046.P11367553357012293127

`∑[A052952(n)+A008346(n)]`
-/

namespace A213046.P11367553357012293127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n + A008346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P11367553357012293127

namespace A213046

/-- `∑[A052952(n)+A008346(n)]` -/
def P11367553357012293127.Spec : Prop :=
  ∀ n, P11367553357012293127.a n = A213046 n

end A213046

/-! ## A213046.P13007406851081057111

`A129696(n+1)+A052952(n)`
-/

namespace A213046.P13007406851081057111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) + A052952 n

end

end A213046.P13007406851081057111

namespace A213046

/-- `A129696(n+1)+A052952(n)` -/
def P13007406851081057111.Spec : Prop :=
  ∀ n, P13007406851081057111.a n = A213046 n

end A213046

/-! ## A213046.P8070245972224720051

`A020956(n+2)-A000035(n)`
-/

namespace A213046.P8070245972224720051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 (n + 2) - A000035 n

end

end A213046.P8070245972224720051

namespace A213046

/-- `A020956(n+2)-A000035(n)` -/
def P8070245972224720051.Spec : Prop :=
  ∀ n, P8070245972224720051.a n = A213046 n

end A213046

/-! ## A213046.P8905438801347369623

`∑[A001610(n)]+A028242(n)+1`
-/

namespace A213046.P8905438801347369623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A028242 n + 1)

end

end A213046.P8905438801347369623

namespace A213046

/-- `∑[A001610(n)]+A028242(n)+1` -/
def P8905438801347369623.Spec : Prop :=
  ∀ n, P8905438801347369623.a n = A213046 n

end A213046

/-! ## A213046.P4690812750986510880

`∑[A033999(n)+A014217(n+1)]`
-/

namespace A213046.P4690812750986510880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A014217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P4690812750986510880

namespace A213046

/-- `∑[A033999(n)+A014217(n+1)]` -/
def P4690812750986510880.Spec : Prop :=
  ∀ n, P4690812750986510880.a n = A213046 n

end A213046

/-! ## A213046.P14182411104482712413

`∑[A168361(n+1)+A001610(n)]`
-/

namespace A213046.P14182411104482712413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213046.P14182411104482712413

namespace A213046

/-- `∑[A168361(n+1)+A001610(n)]` -/
def P14182411104482712413.Spec : Prop :=
  ∀ n, P14182411104482712413.a n = A213046 n

end A213046

/-! ## A213046.P14351068677591147343

`∑[A280193(n)+A001610(n)]+1`
-/

namespace A213046.P14351068677591147343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A213046.P14351068677591147343

namespace A213046

/-- `∑[A280193(n)+A001610(n)]+1` -/
def P14351068677591147343.Spec : Prop :=
  ∀ n, P14351068677591147343.a n = A213046 n

end A213046

/-! ## A213046.P9969498137851046651

`A020956(n+1)+A001350(n+1)`
-/

namespace A213046.P9969498137851046651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 (n + 1) + A001350 (n + 1)

end

end A213046.P9969498137851046651

namespace A213046

/-- `A020956(n+1)+A001350(n+1)` -/
def P9969498137851046651.Spec : Prop :=
  ∀ n, P9969498137851046651.a n = A213046 n

end A213046

/-! ## A213046.P14460770384742432562

`A129696(n+1)+A074331(n+1)`
-/

namespace A213046.P14460770384742432562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 1) + A074331 (n + 1)

end

end A213046.P14460770384742432562

namespace A213046

/-- `A129696(n+1)+A074331(n+1)` -/
def P14460770384742432562.Spec : Prop :=
  ∀ n, P14460770384742432562.a n = A213046 n

end A213046

/-! ## A213046.P6139338224115454278

`A014739(n+1)-A028242(n+1)`
-/

namespace A213046.P6139338224115454278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 (n + 1) - A028242 (n + 1)

end

end A213046.P6139338224115454278

namespace A213046

/-- `A014739(n+1)-A028242(n+1)` -/
def P6139338224115454278.Spec : Prop :=
  ∀ n, P6139338224115454278.a n = A213046 n

end A213046

/-! ## A213046.P8908490756136124302

`A129696(n+2)-A008346(n+1)`
-/

namespace A213046.P8908490756136124302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129696 (n + 2) - A008346 (n + 1)

end

end A213046.P8908490756136124302

namespace A213046

/-- `A129696(n+2)-A008346(n+1)` -/
def P8908490756136124302.Spec : Prop :=
  ∀ n, P8908490756136124302.a n = A213046 n

end A213046

/-! ## A213046.P10092366946796618952

`∑[A169986(n+1)]-A052928(n+1)`
-/

namespace A213046.P10092366946796618952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052928 (n + 1)

end

end A213046.P10092366946796618952

namespace A213046

/-- `∑[A169986(n+1)]-A052928(n+1)` -/
def P10092366946796618952.Spec : Prop :=
  ∀ n, P10092366946796618952.a n = A213046 n

end A213046

/-!
# A213047: Prime numbers corresponding to cases where A212990(n) is greater than the n-th prime.

The programs for A213047, there is no canonical definition to state claims against.
-/

/-! ## A213047.P17523059150272514956

`A119570(A217538(n+1)*A274426(n+1))`
-/

namespace A213047.P17523059150272514956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119570 (A217538 (n + 1) * A274426 (n + 1)).toNat

end

end A213047.P17523059150272514956

/-!
# A213048: Number of preferential arrangements of n labeled elements with repetitions allowed.

The programs for A213048, there is no canonical definition to state claims against.
-/

/-! ## A213048.P14991897921908829200

`A032615(A306027(n))+1`
-/

namespace A213048.P14991897921908829200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A306027 n).toNat + 1

end

end A213048.P14991897921908829200

/-! ## A213048.P7175907357727849726

`A333217(2*A191811(n))`
-/

namespace A213048.P7175907357727849726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333217 (2 * A191811 n).toNat

end

end A213048.P7175907357727849726

/-!
# A213049: Primes p such that the order of 2 mod p is a square.

The programs for A213049, there is no canonical definition to state claims against.
-/

/-! ## A213049.P2680884948787930314

`eq[A010052(A024222(n+1)), A032741(n)]`
-/

namespace A213049.P2680884948787930314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A024222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213049.P2680884948787930314

/-! ## A213049.P18043465041890332018

`p?[A007913(A243905(n+2))]`
-/

namespace A213049.P18043465041890332018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A243905 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A213049.P18043465041890332018

/-!
# A213050: Primes of the form 4*k+1 with primitive root +2.

The programs for A213050, there is no canonical definition to state claims against.
-/

/-! ## A213050.P3668206276206705588

`2*A163777(n+1)+1`
-/

namespace A213050.P3668206276206705588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163777 (n + 1) + 1

end

end A213050.P3668206276206705588

/-! ## A213050.P7125216466760345769

`∩[A001122(n+1), A007521(n+1)]`
-/

namespace A213050.P7125216466760345769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P7125216466760345769

/-! ## A213050.P3856168039050344005

`∩[A001122(n+1), A008846(n+1)]`
-/

namespace A213050.P3856168039050344005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P3856168039050344005

/-! ## A213050.P3844423651883677877

`∩[A001122(n+1), A045366(n+1)]`
-/

namespace A213050.P3844423651883677877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P3844423651883677877

/-! ## A213050.P9046449477481694187

`∩[A001122(n+1), A105874(n+1)]`
-/

namespace A213050.P9046449477481694187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P9046449477481694187

/-! ## A213050.P5546852995628730590

`∩[A001122(n+1), A004627(n+1)]`
-/

namespace A213050.P5546852995628730590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P5546852995628730590

/-! ## A213050.P8603160910085883191

`∩[A001122(n+1), A002144(n+1)]`
-/

namespace A213050.P8603160910085883191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P8603160910085883191

/-! ## A213050.P2615483440878870866

`∩[A001122(n+1), A002313(n+1)]`
-/

namespace A213050.P2615483440878870866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P2615483440878870866

/-! ## A213050.P11264710334686603391

`∩[A002144(n+1), A050229(n+1)]`
-/

namespace A213050.P11264710334686603391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P11264710334686603391

/-! ## A213050.P6410654493861540651

`∩[A002144(n+1), A167791(n+1)]`
-/

namespace A213050.P6410654493861540651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P6410654493861540651

/-! ## A213050.P7636300967712316980

`∩[A002144(n+1), A179383(n+1)]`
-/

namespace A213050.P7636300967712316980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P7636300967712316980

/-! ## A213050.P6753477800983469243

`∩[A001122(n+1), A003628(n+1)]`
-/

namespace A213050.P6753477800983469243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P6753477800983469243

/-! ## A213050.P15637363205016659966

`∩[A003628(n+1), A050229(n+1)]`
-/

namespace A213050.P15637363205016659966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P15637363205016659966

/-! ## A213050.P937878057763706350

`∩[A001122(n+1), A045355(n+1)]`
-/

namespace A213050.P937878057763706350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P937878057763706350

/-! ## A213050.P18218152629467129874

`∩[A045355(n+1), A139099(n+1)]`
-/

namespace A213050.P18218152629467129874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P18218152629467129874

/-! ## A213050.P6396811265036680630

`∩[A001122(n+1), A055025(n+1)]`
-/

namespace A213050.P6396811265036680630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P6396811265036680630

/-! ## A213050.P10647775921811696204

`∩[A001122(n+1), A120960(n+1)]`
-/

namespace A213050.P10647775921811696204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P10647775921811696204

/-! ## A213050.P1047815354547664250

`A163777(n+1)+A000265(A163777(n+1)+1)`
-/

namespace A213050.P1047815354547664250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163777 (n + 1) + A000265 (A163777 (n + 1) + 1).toNat

end

end A213050.P1047815354547664250

/-! ## A213050.P3153656300083307093

`∩[A002144(n+1), A007885(n+1)]`
-/

namespace A213050.P3153656300083307093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P3153656300083307093

/-! ## A213050.P4526570493395294999

`∩[A007521(n+1), A007885(n+1)]`
-/

namespace A213050.P4526570493395294999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213050.P4526570493395294999

/-!
# A213051: Primes of the form 4*k+3 with primitive root +2.

The programs for A213051, there is no canonical definition to state claims against.
-/

/-! ## A213051.P14285318832060581967

`2*A163779(n+1)+1`
-/

namespace A213051.P14285318832060581967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163779 (n + 1) + 1

end

end A213051.P14285318832060581967

/-! ## A213051.P17796907670012086828

`∩[A001122(n+1), A007520(n+1)]`
-/

namespace A213051.P17796907670012086828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P17796907670012086828

/-! ## A213051.P10965560382632671466

`∩[A001122(n+1), A045339(n+1)]`
-/

namespace A213051.P10965560382632671466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P10965560382632671466

/-! ## A213051.P101433430644275265

`∩[A001122(n+1), A095282(n+1)]`
-/

namespace A213051.P101433430644275265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P101433430644275265

/-! ## A213051.P10352512387484140187

`∩[A007520(n+1), A050229(n+1)]`
-/

namespace A213051.P10352512387484140187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P10352512387484140187

/-! ## A213051.P9915458573008171248

`∩[A050229(n+1), A163183(n+1)]`
-/

namespace A213051.P9915458573008171248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P9915458573008171248

/-! ## A213051.P8036690783202528460

`∩[A001122(n+1), A105876(n+1)]`
-/

namespace A213051.P8036690783202528460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P8036690783202528460

/-! ## A213051.P17603283642334190007

`∩[A001122(n+1), A051071(n+1)]`
-/

namespace A213051.P17603283642334190007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P17603283642334190007

/-! ## A213051.P983153436532731950

`∩[A001122(n+1), A033200(n+1)]`
-/

namespace A213051.P983153436532731950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P983153436532731950

/-! ## A213051.P2623796236718426185

`∩[A001122(n+1), A033203(n+1)]`
-/

namespace A213051.P2623796236718426185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P2623796236718426185

/-! ## A213051.P9320019072738567597

`∩[A033203(n+1), A105876(n+1)]`
-/

namespace A213051.P9320019072738567597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P9320019072738567597

/-! ## A213051.P1229339029676336725

`∩[A001122(n+1), A002145(n+1)]`
-/

namespace A213051.P1229339029676336725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P1229339029676336725

/-! ## A213051.P14384953694844196980

`∩[A001122(n+1), A045326(n+1)]`
-/

namespace A213051.P14384953694844196980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P14384953694844196980

/-! ## A213051.P11616561157862854982

`∩[A105876(n+1), A003629(n+1)]`
-/

namespace A213051.P11616561157862854982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P11616561157862854982

/-! ## A213051.P4925441696893647855

`∩[A042999(n+1), A105876(n+1)]`
-/

namespace A213051.P4925441696893647855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P4925441696893647855

/-! ## A213051.P4717496859965030419

`∩[A045326(n+1), A139099(n+1)]`
-/

namespace A213051.P4717496859965030419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P4717496859965030419

/-! ## A213051.P5630864517092911006

`∩[A045326(n+1), A167791(n+1)]`
-/

namespace A213051.P5630864517092911006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P5630864517092911006

/-! ## A213051.P7437142456823093327

`∩[A365082(n+1), A001122(n+1)]`
-/

namespace A213051.P7437142456823093327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P7437142456823093327

/-! ## A213051.P9027414431675778784

`∩[A007520(n+1), A007885(n+1)]`
-/

namespace A213051.P9027414431675778784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P9027414431675778784

/-! ## A213051.P789624265881583774

`∩[A007885(n+1), A033200(n+1)]`
-/

namespace A213051.P789624265881583774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A213051.P789624265881583774

/-!
# A213052: Increasing sequence of primes p such that all of 2,3,5,...,prime(n) are primitive roots mod p.

The programs for A213052, there is no canonical definition to state claims against.
-/

/-! ## A213052.P883075701306683990

`filter[A060085(n+1), A040051(#)]`
-/

namespace A213052.P883075701306683990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A213052.P883075701306683990

/-!
# A213056: Expansion of chi(x) * f(x^3)^3 in powers of x where chi(), f() are Ramanujan theta functions.

The programs for A213056, there is no canonical definition to state claims against.
-/

/-! ## A213056.P15042869120695275432

`A005875(3*n+1)/6`
-/

namespace A213056.P15042869120695275432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (3 * n + 1) : ℚ) / 6

end

end A213056.P15042869120695275432

/-! ## A213056.P597118127329876134

`ceil(A005875(A016777(n))/6)`
-/

namespace A213056.P597118127329876134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005875 (A016777 n).toNat : ℚ) / 6⌉

end

end A213056.P597118127329876134

/-! ## A213056.P17118403064922797422

`A008615(A005875(3*n+1))`
-/

namespace A213056.P17118403064922797422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A005875 (3 * n + 1)).toNat

end

end A213056.P17118403064922797422

/-! ## A213056.P900117300519486374

`A004015(6*n+2)/6`
-/

namespace A213056.P900117300519486374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004015 (6 * n + 2) : ℚ) / 6

end

end A213056.P900117300519486374

/-! ## A213056.P8114883778025658495

`A014455(6*n+2)/6`
-/

namespace A213056.P8114883778025658495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014455 (6 * n + 2) : ℚ) / 6

end

end A213056.P8114883778025658495

/-! ## A213056.P10929801265880657453

`A213384(12*n+4)/6`
-/

namespace A213056.P10929801265880657453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213384 (12 * n + 4) : ℚ) / 6

end

end A213056.P10929801265880657453

/-! ## A213056.P7312649009486480678

`A169783(A017569(n))/6`
-/

namespace A213056.P7312649009486480678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169783 (A017569 n).toNat : ℚ) / 6

end

end A213056.P7312649009486480678

/-!
# A213057: Triangle read by rows: left edge is all 1's, right edge is 1, 2, 3, 4, ...; construct an internal entry by concatenating the two entries above it.

The programs for A213057, there is no canonical definition to state claims against.
-/

/-! ## A213057.P2698856000296699641

`A256156(A279171(n+1))`
-/

namespace A213057.P2698856000296699641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256156 (A279171 (n + 1)).toNat

end

end A213057.P2698856000296699641

/-! ## A213057.P14659588617350085781

`A128979(A093911(n+2))`
-/

namespace A213057.P14659588617350085781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128979 (A093911 (n + 2)).toNat

end

end A213057.P14659588617350085781

/-! ## A213057.P11767070659642095389

`A128979(∑[A013588(n+1)])`
-/

namespace A213057.P11767070659642095389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213057.P11767070659642095389

/-! ## A213057.P18025150798477818859

`A039997(A116485(n))+A022174(n)`
-/

namespace A213057.P18025150798477818859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A116485 n).toNat + A022174 n

end

end A213057.P18025150798477818859

/-!
# A213058: E.g.f. A(x) satisfies: 1-x = Sum_{n>=0} Laplace(A(x)^n) * (-x)^n.

The programs for A213058, there is no canonical definition to state claims against.
-/

/-! ## A213058.P7950905397036090138

`ceil(A039628(n+1)/∑[∏{e}[n, #+1]])`
-/

namespace A213058.P7950905397036090138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039628 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A213058.P7950905397036090138

/-! ## A213058.P12677858271081360512

`A261104(A005189(n)+1)`
-/

namespace A213058.P12677858271081360512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A005189 n + 1).toNat

end

end A213058.P12677858271081360512

/-! ## A213058.P15373052460748639330

`A337327(A334270(n)+1)`
-/

namespace A213058.P15373052460748639330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337327 (A334270 n + 1).toNat

end

end A213058.P15373052460748639330

/-! ## A213058.P6448529650624901392

`A262689(xor(3, ∑[A288950(n)]))`
-/

namespace A213058.P6448529650624901392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A213058.P6448529650624901392

/-!
# A213060: Lucas(n) mod n, where Lucas = A000032.

The programs for A213060, the canonical program `A213060.P10072281524735210940` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213060 has offset 1).

The definition of A213060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)%(n+1)` (program `A213060.P10072281524735210940`, by `A213060.P10072281524735210940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213060.P10072281524735210940

`A000032(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213060

/-- `A000032(n+1)%(n+1)` -/
def P10072281524735210940.Spec : Prop :=
  ∀ n, P10072281524735210940.a n = A213060 (n + 1)

theorem P10072281524735210940.correct : P10072281524735210940.Spec := by
  intro n
  simp only [A213060, Nat.add_sub_cancel]

end A213060

/-! ## A213060.P13303250211928917302

`round(ϕ^(n+1))%(n+1)`
-/

namespace A213060.P13303250211928917302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 1))) (n + 1 : ℤ)

end

end A213060.P13303250211928917302

namespace A213060

/-- `round(ϕ^(n+1))%(n+1)` -/
def P13303250211928917302.Spec : Prop :=
  ∀ n, P13303250211928917302.a n = A213060 (n + 1)

end A213060

/-! ## A213060.P766128900809524286

`abs(A075193(n)%(n+1))`
-/

namespace A213060.P766128900809524286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A075193 n) (n + 1 : ℤ)|

end

end A213060.P766128900809524286

namespace A213060

/-- `abs(A075193(n)%(n+1))` -/
def P766128900809524286.Spec : Prop :=
  ∀ n, P766128900809524286.a n = A213060 (n + 1)

end A213060

/-! ## A213060.P7753115138534004289

`abs(A000204(n+1)%-(n+1))`
-/

namespace A213060.P7753115138534004289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000204 (n + 1)) (-(n + 1 : ℤ))|

end

end A213060.P7753115138534004289

namespace A213060

/-- `abs(A000204(n+1)%-(n+1))` -/
def P7753115138534004289.Spec : Prop :=
  ∀ n, P7753115138534004289.a n = A213060 (n + 1)

end A213060

/-! ## A213060.P763169508012079163

`abs(A000032(Δ[n²]-n)%(Δ[n²]-n))`
-/

namespace A213060.P763169508012079163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ))|

end

end A213060.P763169508012079163

namespace A213060

/-- `abs(A000032(Δ[n²]-n)%(Δ[n²]-n))` -/
def P763169508012079163.Spec : Prop :=
  ∀ n, P763169508012079163.a n = A213060 (n + 1)

end A213060

/-! ## A213060.P15535947844475068016

`-(-A000204(n+1)%A028242(2*n))`
-/

namespace A213060.P15535947844475068016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000204 (n + 1)) (A028242 (2 * n))

end

end A213060.P15535947844475068016

namespace A213060

/-- `-(-A000204(n+1)%A028242(2*n))` -/
def P15535947844475068016.Spec : Prop :=
  ∀ n, P15535947844475068016.a n = A213060 (n + 1)

end A213060

/-!
# A213061: Triangle of Stirling numbers of second kind (A048993) read mod 2.

The programs for A213061, the canonical program `A213061.P16782414876567708964` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213061 has offset 0).

The definition of A213061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213061.P8556062424264475531

`A103631(n)%2`
-/

namespace A213061.P8556062424264475531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103631 n) 2

end

end A213061.P8556062424264475531

namespace A213061

/-- `A103631(n)%2` -/
def P8556062424264475531.Spec : Prop :=
  ∀ n, P8556062424264475531.a n = A213061 n

end A213061

/-! ## A213061.P16782414876567708964

`A121314(n)%2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A213061

/-- `A121314(n)%2` -/
def P16782414876567708964.Spec : Prop :=
  ∀ n, P16782414876567708964.a n = A213061 n

theorem P16782414876567708964.correct : P16782414876567708964.Spec := by
  intro n
  simp only [A213061]

end A213061

/-! ## A213061.P3130611522331229328

`and(1, A133607(n))`
-/

namespace A213061.P3130611522331229328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A133607 n)

end

end A213061.P3130611522331229328

namespace A213061

/-- `and(1, A133607(n))` -/
def P3130611522331229328.Spec : Prop :=
  ∀ n, P3130611522331229328.a n = A213061 n

end A213061

/-! ## A213061.P842540269653930493

`A208345(n+1)%2`
-/

namespace A213061.P842540269653930493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208345 (n + 1)) 2

end

end A213061.P842540269653930493

namespace A213061

/-- `A208345(n+1)%2` -/
def P842540269653930493.Spec : Prop :=
  ∀ n, P842540269653930493.a n = A213061 n

end A213061

/-! ## A213061.P6905277448861249901

`and(1, A209413(A038722(n+1)))`
-/

namespace A213061.P6905277448861249901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A209413 (A038722 (n + 1)).toNat)

end

end A213061.P6905277448861249901

namespace A213061

/-- `and(1, A209413(A038722(n+1)))` -/
def P6905277448861249901.Spec : Prop :=
  ∀ n, P6905277448861249901.a n = A213061 n

end A213061

/-! ## A213061.P6167165836242167122

`A048993(n)%2`
-/

namespace A213061.P6167165836242167122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048993 n) 2

end

end A213061.P6167165836242167122

namespace A213061

/-- `A048993(n)%2` -/
def P6167165836242167122.Spec : Prop :=
  ∀ n, P6167165836242167122.a n = A213061 n

end A213061

/-! ## A213061.P16807233495800002029

`and(1, A048993(xor(1, xor(1, n))))`
-/

namespace A213061.P16807233495800002029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048993 (Nat.xor 1 (Nat.xor 1 n)))

end

end A213061.P16807233495800002029

namespace A213061

/-- `and(1, A048993(xor(1, xor(1, n))))` -/
def P16807233495800002029.Spec : Prop :=
  ∀ n, P16807233495800002029.a n = A213061 n

end A213061

/-! ## A213061.P15026118665866129028

`and(1, A048993(2*n-n))`
-/

namespace A213061.P15026118665866129028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A048993 (2 * n - n))

end

end A213061.P15026118665866129028

namespace A213061

/-- `and(1, A048993(2*n-n))` -/
def P15026118665866129028.Spec : Prop :=
  ∀ n, P15026118665866129028.a n = A213061 n

end A213061

/-! ## A213061.P16438633469459434908

`and(A048993(n), A060576(n))`
-/

namespace A213061.P16438633469459434908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048993 n) (A060576 n)

end

end A213061.P16438633469459434908

namespace A213061

/-- `and(A048993(n), A060576(n))` -/
def P16438633469459434908.Spec : Prop :=
  ∀ n, P16438633469459434908.a n = A213061 n

end A213061

/-! ## A213061.P336999891590574378

`A143494(n+2)%2`
-/

namespace A213061.P336999891590574378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143494 (n + 2)) 2

end

end A213061.P336999891590574378

namespace A213061

/-- `A143494(n+2)%2` -/
def P336999891590574378.Spec : Prop :=
  ∀ n, P336999891590574378.a n = A213061 n

end A213061

/-! ## A213061.P9335979388090139754

`A143395(n)%2`
-/

namespace A213061.P9335979388090139754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143395 n) 2

end

end A213061.P9335979388090139754

namespace A213061

/-- `A143395(n)%2` -/
def P9335979388090139754.Spec : Prop :=
  ∀ n, P9335979388090139754.a n = A213061 n

end A213061

/-! ## A213061.P9182661648607151542

`A225468(n)%2`
-/

namespace A213061.P9182661648607151542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225468 n) 2

end

end A213061.P9182661648607151542

namespace A213061

/-- `A225468(n)%2` -/
def P9182661648607151542.Spec : Prop :=
  ∀ n, P9182661648607151542.a n = A213061 n

end A213061

/-! ## A213061.P10459363326792046900

`A225466(n)%2`
-/

namespace A213061.P10459363326792046900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225466 n) 2

end

end A213061.P10459363326792046900

namespace A213061

/-- `A225466(n)%2` -/
def P10459363326792046900.Spec : Prop :=
  ∀ n, P10459363326792046900.a n = A213061 n

end A213061

/-! ## A213061.P10584999779486358153

`A383206(n)%2`
-/

namespace A213061.P10584999779486358153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383206 n) 2

end

end A213061.P10584999779486358153

namespace A213061

/-- `A383206(n)%2` -/
def P10584999779486358153.Spec : Prop :=
  ∀ n, P10584999779486358153.a n = A213061 n

end A213061

/-! ## A213061.P13976500479136726835

`A265608(n)%2`
-/

namespace A213061.P13976500479136726835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265608 n) 2

end

end A213061.P13976500479136726835

namespace A213061

/-- `A265608(n)%2` -/
def P13976500479136726835.Spec : Prop :=
  ∀ n, P13976500479136726835.a n = A213061 n

end A213061

/-! ## A213061.P5904834124570456397

`A211399(n)%2`
-/

namespace A213061.P5904834124570456397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211399 n) 2

end

end A213061.P5904834124570456397

namespace A213061

/-- `A211399(n)%2` -/
def P5904834124570456397.Spec : Prop :=
  ∀ n, P5904834124570456397.a n = A213061 n

end A213061

/-! ## A213061.P17491283605181779265

`A184962(n)%2`
-/

namespace A213061.P17491283605181779265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184962 n) 2

end

end A213061.P17491283605181779265

namespace A213061

/-- `A184962(n)%2` -/
def P17491283605181779265.Spec : Prop :=
  ∀ n, P17491283605181779265.a n = A213061 n

end A213061

/-! ## A213061.P18121772281243377078

`A256892(n)%2`
-/

namespace A213061.P18121772281243377078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256892 n) 2

end

end A213061.P18121772281243377078

namespace A213061

/-- `A256892(n)%2` -/
def P18121772281243377078.Spec : Prop :=
  ∀ n, P18121772281243377078.a n = A213061 n

end A213061

/-! ## A213061.P7335430843628888559

`A256893(n)%2`
-/

namespace A213061.P7335430843628888559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256893 n) 2

end

end A213061.P7335430843628888559

namespace A213061

/-- `A256893(n)%2` -/
def P7335430843628888559.Spec : Prop :=
  ∀ n, P7335430843628888559.a n = A213061 n

end A213061

/-! ## A213061.P11449859853775135303

`A132062(n)%2`
-/

namespace A213061.P11449859853775135303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132062 n) 2

end

end A213061.P11449859853775135303

namespace A213061

/-- `A132062(n)%2` -/
def P11449859853775135303.Spec : Prop :=
  ∀ n, P11449859853775135303.a n = A213061 n

end A213061

/-!
# A213064: Bitwise AND of 2n with the one's-complement of n.

The programs for A213064, the canonical program `A213064.P13019634568250474485` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213064 has offset 0).

The definition of A213064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213064.P2367462063845653848

`and(2*n, -n)`
-/

namespace A213064.P2367462063845653848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

end

end A213064.P2367462063845653848

namespace A213064

/-- `and(2*n, -n)` -/
def P2367462063845653848.Spec : Prop :=
  ∀ n, P2367462063845653848.a n = A213064 n

end A213064

/-! ## A213064.P13019634568250474485

`2*A292272(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A213064

/-- `2*A292272(n)` -/
def P13019634568250474485.Spec : Prop :=
  ∀ n, P13019634568250474485.a n = A213064 n

theorem P13019634568250474485.correct : P13019634568250474485.Spec := by
  intro n
  simp only [A213064]

end A213064

/-! ## A213064.P8006785536888549333

`or(n, 2*n)-n`
-/

namespace A213064.P8006785536888549333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (n : ℤ)

end

end A213064.P8006785536888549333

namespace A213064

/-- `or(n, 2*n)-n` -/
def P8006785536888549333.Spec : Prop :=
  ∀ n, P8006785536888549333.a n = A213064 n

end A213064

/-! ## A213064.P1782745220368918522

`xor(n, or(n, 2*n))`
-/

namespace A213064.P1782745220368918522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor n (2 * n))

end

end A213064.P1782745220368918522

namespace A213064

/-- `xor(n, or(n, 2*n))` -/
def P1782745220368918522.Spec : Prop :=
  ∀ n, (P1782745220368918522.a n : ℤ) = A213064 n

end A213064

/-! ## A213064.P18058766303441712610

`and(n, Δ[-n²])+n`
-/

namespace A213064.P18058766303441712610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A213064.P18058766303441712610

namespace A213064

/-- `and(n, Δ[-n²])+n` -/
def P18058766303441712610.Spec : Prop :=
  ∀ n, P18058766303441712610.a n = A213064 n

end A213064

/-! ## A213064.P4542824901736741752

`2*n-and(n, 2*n)`
-/

namespace A213064.P4542824901736741752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land n (2 * n) : ℤ)

end

end A213064.P4542824901736741752

namespace A213064

/-- `2*n-and(n, 2*n)` -/
def P4542824901736741752.Spec : Prop :=
  ∀ n, P4542824901736741752.a n = A213064 n

end A213064

/-! ## A213064.P6438615415953371386

`(xor(n, 2*n)+n)/2`
-/

namespace A213064.P6438615415953371386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) + n : ℚ) / 2

end

end A213064.P6438615415953371386

namespace A213064

/-- `(xor(n, 2*n)+n)/2` -/
def P6438615415953371386.Spec : Prop :=
  ∀ n, P6438615415953371386.a n = (A213064 n : ℚ)

end A213064

/-! ## A213064.P5106814236767667562

`xor(2*n, and(n, 2*n))`
-/

namespace A213064.P5106814236767667562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.land n (2 * n))

end

end A213064.P5106814236767667562

namespace A213064

/-- `xor(2*n, and(n, 2*n))` -/
def P5106814236767667562.Spec : Prop :=
  ∀ n, (P5106814236767667562.a n : ℤ) = A213064 n

end A213064

/-! ## A213064.P15574404688024400620

`abs(or(2*n, -n))+n`
-/

namespace A213064.P15574404688024400620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))| + (n : ℤ)

end

end A213064.P15574404688024400620

namespace A213064

/-- `abs(or(2*n, -n))+n` -/
def P15574404688024400620.Spec : Prop :=
  ∀ n, P15574404688024400620.a n = A213064 n

end A213064

/-! ## A213064.P10660322285045459521

`(n-xor(2*n, -n))/2`
-/

namespace A213064.P10660322285045459521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.xor (2 * n : ℤ) (-(n : ℤ)) : ℚ) / 2

end

end A213064.P10660322285045459521

namespace A213064

/-- `(n-xor(2*n, -n))/2` -/
def P10660322285045459521.Spec : Prop :=
  ∀ n, P10660322285045459521.a n = (A213064 n : ℚ)

end A213064

/-! ## A213064.P1947509215220599615

`-(or(n, -(2*n+1))+1)`
-/

namespace A213064.P1947509215220599615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.lor (n : ℤ) (-(2 * n + 1 : ℤ)) + 1)

end

end A213064.P1947509215220599615

namespace A213064

/-- `-(or(n, -(2*n+1))+1)` -/
def P1947509215220599615.Spec : Prop :=
  ∀ n, P1947509215220599615.a n = A213064 n

end A213064

/-! ## A213064.P14286395569572794393

`∑[2-Δ[and(n-2+n, n-1)]]`
-/

namespace A213064.P14286395569572794393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2 + (n : ℤ)) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213064.P14286395569572794393

namespace A213064

/-- `∑[2-Δ[and(n-2+n, n-1)]]` -/
def P14286395569572794393.Spec : Prop :=
  ∀ n, P14286395569572794393.a n = A213064 n

end A213064

/-! ## A213064.P10497636036452421214

`(or(n, 2*n)+n+1)%(2*n+1)`
-/

namespace A213064.P10497636036452421214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) + (n + 1)) % (2 * n + 1)

end

end A213064.P10497636036452421214

namespace A213064

/-- `(or(n, 2*n)+n+1)%(2*n+1)` -/
def P10497636036452421214.Spec : Prop :=
  ∀ n, (P10497636036452421214.a n : ℤ) = A213064 n

end A213064

/-! ## A213064.P9291034680179130345

`A229763(n)+n`
-/

namespace A213064.P9291034680179130345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + (n : ℤ)

end

end A213064.P9291034680179130345

namespace A213064

/-- `A229763(n)+n` -/
def P9291034680179130345.Spec : Prop :=
  ∀ n, P9291034680179130345.a n = A213064 n

end A213064

/-! ## A213064.P8664554467148529686

`A163617(n)-n`
-/

namespace A213064.P8664554467148529686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n - (n : ℤ)

end

end A213064.P8664554467148529686

namespace A213064

/-- `A163617(n)-n` -/
def P8664554467148529686.Spec : Prop :=
  ∀ n, P8664554467148529686.a n = A213064 n

end A213064

/-! ## A213064.P16045440215853642684

`(A048724(n)+n)/2`
-/

namespace A213064.P16045440215853642684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048724 n + (n : ℤ) : ℚ) / 2

end

end A213064.P16045440215853642684

namespace A213064

/-- `(A048724(n)+n)/2` -/
def P16045440215853642684.Spec : Prop :=
  ∀ n, P16045440215853642684.a n = (A213064 n : ℚ)

end A213064

/-! ## A213064.P5274991734402278430

`2*(n-A048735(n))`
-/

namespace A213064.P5274991734402278430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A048735 n)

end

end A213064.P5274991734402278430

namespace A213064

/-- `2*(n-A048735(n))` -/
def P5274991734402278430.Spec : Prop :=
  ∀ n, P5274991734402278430.a n = A213064 n

end A213064

/-! ## A213064.P17940206290157547340

`2*n-A213370(n)`
-/

namespace A213064.P17940206290157547340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A213370 n

end

end A213064.P17940206290157547340

namespace A213064

/-- `2*n-A213370(n)` -/
def P17940206290157547340.Spec : Prop :=
  ∀ n, P17940206290157547340.a n = A213064 n

end A213064

/-! ## A213064.P12530258197382712515

`2*and(n, A003188(n))`
-/

namespace A213064.P12530258197382712515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (A003188 n)

end

end A213064.P12530258197382712515

namespace A213064

/-- `2*and(n, A003188(n))` -/
def P12530258197382712515.Spec : Prop :=
  ∀ n, P12530258197382712515.a n = A213064 n

end A213064

/-! ## A213064.P4115368267420600765

`(A003188(2*n)+n)/2`
-/

namespace A213064.P4115368267420600765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003188 (2 * n) + (n : ℤ) : ℚ) / 2

end

end A213064.P4115368267420600765

namespace A213064

/-- `(A003188(2*n)+n)/2` -/
def P4115368267420600765.Spec : Prop :=
  ∀ n, P4115368267420600765.a n = (A213064 n : ℚ)

end A213064

/-!
# A213065: a(n) = n^n! - n!^n.

The programs for A213065, the canonical program `A213065.P2918199603836528517` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213065 has offset 0).

The definition of A213065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n!-n!^n` (program `A213065.P2918199603836528517`, by `A213065.P2918199603836528517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213065.P2918199603836528517

`n^n!-n!^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213065

/-- `n^n!-n!^n` -/
def P2918199603836528517.Spec : Prop :=
  ∀ n, P2918199603836528517.a n = A213065 n

theorem P2918199603836528517.correct : P2918199603836528517.Spec := by
  intro n
  simp only [A213065]

end A213065

/-!
# A213067: E.g.f.: arctan(cos(x)^2) - Pi/4.

The programs for A213067, there is no canonical definition to state claims against.
-/

/-! ## A213067.P12121639744731340222

`A364933(A000142(n)*A002720(n))`
-/

namespace A213067.P12121639744731340222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364933 (A000142 n * A002720 n).toNat

end

end A213067.P12121639744731340222

/-!
# A213071: 3*n*(9n + 2)*(18n - 1), where n runs through the odd numbers 1, 3, 5,...

The programs for A213071, the canonical program `A213071.P15792046747175233008` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213071 has offset 1).

The definition of A213071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213071.P15792046747175233008

`A131423(Δ[(3*n)²])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213071

/-- `A131423(Δ[(3*n)²])` -/
def P15792046747175233008.Spec : Prop :=
  ∀ n, P15792046747175233008.a n = A213071 (n + 1)

theorem P15792046747175233008.correct : P15792046747175233008.Spec := by
  intro n
  simp only [A213071, Nat.add_sub_cancel]

end A213071

/-! ## A213071.P16427104362238491917

`record[A158501(9*n+8)]`
-/

namespace A213071.P16427104362238491917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158501 (9 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213071.P16427104362238491917

namespace A213071

/-- `record[A158501(9*n+8)]` -/
def P16427104362238491917.Spec : Prop :=
  ∀ n, P16427104362238491917.a n = A213071 (n + 1)

end A213071

/-! ## A213071.P17698237245878627258

`A006331(3*A016945(n))-3*A016945(n)`
-/

namespace A213071.P17698237245878627258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (3 * A016945 n).toNat - 3 * A016945 n

end

end A213071.P17698237245878627258

namespace A213071

/-- `A006331(3*A016945(n))-3*A016945(n)` -/
def P17698237245878627258.Spec : Prop :=
  ∀ n, P17698237245878627258.a n = A213071 (n + 1)

end A213071

/-! ## A213071.P3702646722029023929

`A003451(Δ[A000217(6*n)])`
-/

namespace A213071.P3702646722029023929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003451 (f1 (n + 1) - f1 n).toNat

end

end A213071.P3702646722029023929

namespace A213071

/-- `A003451(Δ[A000217(6*n)])` -/
def P3702646722029023929.Spec : Prop :=
  ∀ n, P3702646722029023929.a n = A213071 (n + 1)

end A213071

/-! ## A213071.P5758480536330259126

`A212772(Δ[A000124(6*n)])`
-/

namespace A213071.P5758480536330259126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212772 (f1 (n + 1) - f1 n).toNat

end

end A213071.P5758480536330259126

namespace A213071

/-- `A212772(Δ[A000124(6*n)])` -/
def P5758480536330259126.Spec : Prop :=
  ∀ n, P5758480536330259126.a n = A213071 (n + 1)

end A213071

/-! ## A213071.P17354439878048259322

`A003451(A008600(2*n+1)+3)`
-/

namespace A213071.P17354439878048259322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003451 (A008600 (2 * n + 1) + 3).toNat

end

end A213071.P17354439878048259322

namespace A213071

/-- `A003451(A008600(2*n+1)+3)` -/
def P17354439878048259322.Spec : Prop :=
  ∀ n, P17354439878048259322.a n = A213071 (n + 1)

end A213071

/-!
# A213073: Numbers n such that (7^n - 4^n)/3 is prime.

The programs for A213073, there is no canonical definition to state claims against.
-/

/-! ## A213073.P2572658486160139576

`A089969(A171231(n))`
-/

namespace A213073.P2572658486160139576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089969 (A171231 n).toNat

end

end A213073.P2572658486160139576

/-!
# A213075: Second diagonal of A213074.

The programs for A213075, there is no canonical definition to state claims against.
-/

/-! ## A213075.P16869814045849119466

`A349801(n+4)-1`
-/

namespace A213075.P16869814045849119466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349801 (n + 4) - 1

end

end A213075.P16869814045849119466

/-! ## A213075.P11139105270739889758

`A241824(n+4)-2`
-/

namespace A213075.P11139105270739889758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241824 (n + 4) - 2

end

end A213075.P11139105270739889758

/-! ## A213075.P17590987772559520660

`record[abs(2-A241824(n))]`
-/

namespace A213075.P17590987772559520660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A241824 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213075.P17590987772559520660

/-! ## A213075.P9366322062201282466

`record[ratio[A213074(n+4)]]`
-/

namespace A213075.P9366322062201282466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213074 (n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213075.P9366322062201282466

/-! ## A213075.P15589956903788154999

`∑[abs(Δ[A349801(n+3)])]`
-/

namespace A213075.P15589956903788154999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349801 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213075.P15589956903788154999

/-!
# A213076: Right-hand diagonal of A213074.

The programs for A213076, there is no canonical definition to state claims against.
-/

/-! ## A213076.P2727883753051691196

`a(n-2)*∑[n+3]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A213076.P2727883753051691196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213076.P2727883753051691196

/-!
# A213077: a(n) = round(n^2 - sqrt(n)).

The programs for A213077, the canonical program `A213077.P10506574609427564507` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213077 has offset 0).

The definition of A213077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n²-sqrt(n))` (program `A213077.P10506574609427564507`, by `A213077.P10506574609427564507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213077.P10506574609427564507

`round(n²-sqrt(n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213077

/-- `round(n²-sqrt(n))` -/
def P10506574609427564507.Spec : Prop :=
  ∀ n, P10506574609427564507.a n = A213077 n

theorem P10506574609427564507.correct : P10506574609427564507.Spec := by
  intro n
  simp only [A213077]

end A213077

/-! ## A213077.P5554625345847796922

`lcm(n, n+1)-comp[(n+1)²]`
-/

namespace A213077.P5554625345847796922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A213077.P5554625345847796922

namespace A213077

/-- `lcm(n, n+1)-comp[(n+1)²]` -/
def P5554625345847796922.Spec : Prop :=
  ∀ n, P5554625345847796922.a n = A213077 n

end A213077

/-! ## A213077.P490531631598356783

`n²-∑[char[xor(1, ∑[2*n])]]`
-/

namespace A213077.P490531631598356783
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213077.P490531631598356783

namespace A213077

/-- `n²-∑[char[xor(1, ∑[2*n])]]` -/
def P490531631598356783.Spec : Prop :=
  ∀ n, P490531631598356783.a n = A213077 n

end A213077

/-! ## A213077.P7503221239148565732

`n²-∑[char[2*C(n, 2)+1]]`
-/

namespace A213077.P7503221239148565732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213077.P7503221239148565732

namespace A213077

/-- `n²-∑[char[2*C(n, 2)+1]]` -/
def P7503221239148565732.Spec : Prop :=
  ∀ n, P7503221239148565732.a n = A213077 n

end A213077

/-! ## A213077.P12560695305509578095

`n²-(comp[n^(2%(n+1))]-n)`
-/

namespace A213077.P12560695305509578095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 % (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A213077.P12560695305509578095

namespace A213077

/-- `n²-(comp[n^(2%(n+1))]-n)` -/
def P12560695305509578095.Spec : Prop :=
  ∀ n, P12560695305509578095.a n = A213077 n

end A213077

/-! ## A213077.P855811654967651656

`n²-(comp[∑[and(1, n+1)]²]-n)`
-/

namespace A213077.P855811654967651656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A213077.P855811654967651656

namespace A213077

/-- `n²-(comp[∑[and(1, n+1)]²]-n)` -/
def P855811654967651656.Spec : Prop :=
  ∀ n, P855811654967651656.a n = A213077 n

end A213077

/-! ## A213077.P3153129327005429737

`n²-∑[char[xor(2, n²)-(n+1)]]`
-/

namespace A213077.P3153129327005429737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n ^ 2) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213077.P3153129327005429737

namespace A213077

/-- `n²-∑[char[xor(2, n²)-(n+1)]]` -/
def P3153129327005429737.Spec : Prop :=
  ∀ n, P3153129327005429737.a n = A213077 n

end A213077

/-! ## A213077.P4929838582032450863

`n²-A000194(n)`
-/

namespace A213077.P4929838582032450863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A000194 n

end

end A213077.P4929838582032450863

namespace A213077

/-- `n²-A000194(n)` -/
def P4929838582032450863.Spec : Prop :=
  ∀ n, P4929838582032450863.a n = A213077 n

end A213077

/-! ## A213077.P3513653464534970033

`n²-sqrt(A053187(n))`
-/

namespace A213077.P3513653464534970033
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) - Real.sqrt (A053187 n : ℝ)

end

end A213077.P3513653464534970033

namespace A213077

/-- `n²-sqrt(A053187(n))` -/
def P3513653464534970033.Spec : Prop :=
  ∀ n, P3513653464534970033.a n = (A213077 n : ℝ)

end A213077

/-! ## A213077.P10115608480431853432

`A000290(n)-round(sqrt(n))`
-/

namespace A213077.P10115608480431853432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

end

end A213077.P10115608480431853432

namespace A213077

/-- `A000290(n)-round(sqrt(n))` -/
def P10115608480431853432.Spec : Prop :=
  ∀ n, P10115608480431853432.a n = A213077 n

end A213077

/-! ## A213077.P12795603468579189999

`n²-n+A056847(n)`
-/

namespace A213077.P12795603468579189999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + A056847 n

end

end A213077.P12795603468579189999

namespace A213077

/-- `n²-n+A056847(n)` -/
def P12795603468579189999.Spec : Prop :=
  ∀ n, P12795603468579189999.a n = A213077 n

end A213077

/-! ## A213077.P6533758037918673241

`ceil(n²-sqrt(A028392(n)))`
-/

namespace A213077.P6533758037918673241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - Real.sqrt (A028392 n : ℝ)⌉

end

end A213077.P6533758037918673241

namespace A213077

/-- `ceil(n²-sqrt(A028392(n)))` -/
def P6533758037918673241.Spec : Prop :=
  ∀ n, P6533758037918673241.a n = A213077 n

end A213077

/-! ## A213077.P13642076420019424987

`floor(sqrt(A071253(n))-sqrt(n))`
-/

namespace A213077.P13642076420019424987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A071253 n : ℝ) - Real.sqrt (n : ℝ)⌋

end

end A213077.P13642076420019424987

namespace A213077

/-- `floor(sqrt(A071253(n))-sqrt(n))` -/
def P13642076420019424987.Spec : Prop :=
  ∀ n, P13642076420019424987.a n = A213077 n

end A213077

/-! ## A213077.P15852645131764589230

`ceil(n²-sqrt(A232091(n)))`
-/

namespace A213077.P15852645131764589230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) - Real.sqrt (A232091 n : ℝ)⌉

end

end A213077.P15852645131764589230

namespace A213077

/-- `ceil(n²-sqrt(A232091(n)))` -/
def P15852645131764589230.Spec : Prop :=
  ∀ n, P15852645131764589230.a n = A213077 n

end A213077

/-! ## A213077.P3342217217223562952

`n²-∑[char[A002061(n)]]`
-/

namespace A213077.P3342217217223562952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213077.P3342217217223562952

namespace A213077

/-- `n²-∑[char[A002061(n)]]` -/
def P3342217217223562952.Spec : Prop :=
  ∀ n, P3342217217223562952.a n = A213077 n

end A213077

/-! ## A213077.P466344239518710620

`A002378(n)-comp[(n+1)²]`
-/

namespace A213077.P466344239518710620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A213077.P466344239518710620

namespace A213077

/-- `A002378(n)-comp[(n+1)²]` -/
def P466344239518710620.Spec : Prop :=
  ∀ n, P466344239518710620.a n = A213077 n

end A213077

/-! ## A213077.P8531826772027848526

`n²-∑[char[∑[A004277(n)]]]`
-/

namespace A213077.P8531826772027848526
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A213077.P8531826772027848526

namespace A213077

/-- `n²-∑[char[∑[A004277(n)]]]` -/
def P8531826772027848526.Spec : Prop :=
  ∀ n, P8531826772027848526.a n = A213077 n

end A213077

/-! ## A213077.P9014941959109869025

`n²+n-comp[A007318(n)²]`
-/

namespace A213077.P9014941959109869025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A213077.P9014941959109869025

namespace A213077

/-- `n²+n-comp[A007318(n)²]` -/
def P9014941959109869025.Spec : Prop :=
  ∀ n, P9014941959109869025.a n = A213077 n

end A213077

/-! ## A213077.P10948310264416725228

`∑[2*n]-comp[A000290(n+1)]`
-/

namespace A213077.P10948310264416725228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A213077.P10948310264416725228

namespace A213077

/-- `∑[2*n]-comp[A000290(n+1)]` -/
def P10948310264416725228.Spec : Prop :=
  ∀ n, P10948310264416725228.a n = A213077 n

end A213077

/-! ## A213077.P1798965077483226355

`n²+1-ceil(sqrt(comp[A005563(n)]))`
-/

namespace A213077.P1798965077483226355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℤ) - ⌈Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉

end

end A213077.P1798965077483226355

namespace A213077

/-- `n²+1-ceil(sqrt(comp[A005563(n)]))` -/
def P1798965077483226355.Spec : Prop :=
  ∀ n, P1798965077483226355.a n = A213077 n

end A213077

/-!
# A213081: Exclusive-or based Pascal triangle, read by rows: T(n,1)=T(n,n)=n and T(n,k) = T(n-1,k-1) XOR T(n-1,k), where XOR is the bitwise exclusive-or operator.

The programs for A213081, there is no canonical definition to state claims against.
-/

/-! ## A213081.P17138978701004479255

`A195083(A186753(n))%8`
-/

namespace A213081.P17138978701004479255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195083 (A186753 n).toNat) 8

end

end A213081.P17138978701004479255

/-! ## A213081.P9260259256588755835

`A332261(A227263(n+1))%8`
-/

namespace A213081.P9260259256588755835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332261 (A227263 (n + 1)).toNat) 8

end

end A213081.P9260259256588755835

/-! ## A213081.P14053602401552643721

`A059897(n+1)-A227944(A022180(n))`
-/

namespace A213081.P14053602401552643721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (n + 1) - A227944 (A022180 n).toNat

end

end A213081.P14053602401552643721

/-! ## A213081.P14342034993407195295

`or(A176202(A176200(n)), A233558(n+2))`
-/

namespace A213081.P14342034993407195295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176202 (A176200 n).toNat) (A233558 (n + 2))

end

end A213081.P14342034993407195295

/-! ## A213081.P4641945882634687839

`A059897(n+1)-A339846(A153655(n+1))`
-/

namespace A213081.P4641945882634687839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (n + 1) - A339846 (A153655 (n + 1)).toNat

end

end A213081.P4641945882634687839

/-!
# A213082: Values of n for which the number of roots of the function sin(x)/x - 1/n increases.

The programs for A213082, there is no canonical definition to state claims against.
-/

/-! ## A213082.P15519890898393008963

`lt[cos(n), floor(cos(1-n))]`
-/

namespace A213082.P15519890898393008963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (1 - (n : ℤ) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A213082.P15519890898393008963

/-! ## A213082.P7599037827727763190

`lt[cos(n+1), floor(cos(n))]+1`
-/

namespace A213082.P7599037827727763190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A213082.P7599037827727763190

/-! ## A213082.P12421696307631355334

`comp[floor(atan(n))+n-ceil(cos(n))]`
-/

namespace A213082.P12421696307631355334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ + ((n : ℤ) - ⌈Real.cos (n : ℝ)⌉)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213082.P12421696307631355334

/-! ## A213082.P15903502693425644901

`comp[n+2-ceil(cos(n+2))]+1`
-/

namespace A213082.P15903502693425644901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌈Real.cos (n + 2 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213082.P15903502693425644901

/-! ## A213082.P18404835312663999842

`comp[abs(n+1-floor(cos(n+2)))]+1`
-/

namespace A213082.P18404835312663999842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - ⌊Real.cos (n + 2 : ℝ)⌋|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A213082.P18404835312663999842

/-! ## A213082.P15422635835500147708

`∩[floor(n*acos(0)), A246389(n)]+1`
-/

namespace A213082.P15422635835500147708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arccos (0 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246389 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A213082.P15422635835500147708

/-! ## A213082.P9373902768586774464

`A276861(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A213082.P9373902768586774464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A276861 (n + 1) + a (n - 1)

end

end A213082.P9373902768586774464

/-! ## A213082.P1637325118162062112

`A038130(n+1)-A040020(n)`
-/

namespace A213082.P1637325118162062112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038130 (n + 1) - A040020 n

end

end A213082.P1637325118162062112

/-! ## A213082.P2104097877234715808

`A246440(abs(2-A327139(n+1)))`
-/

namespace A213082.P2104097877234715808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 |2 - A327139 (n + 1)|.toNat

end

end A213082.P2104097877234715808

/-! ## A213082.P4578047814039255135

`A246393(2*n)%A246300(n+1)`
-/

namespace A213082.P4578047814039255135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246393 (2 * n)) (A246300 (n + 1))

end

end A213082.P4578047814039255135

/-!
# A213083: Each square n^2 appears n^2 number of times.

The programs for A213083, the canonical program `A213083.P15258794415089713669` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213083 has offset 1).

The definition of A213083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213083.P15258794415089713669

`A074279(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213083

/-- `A074279(n+1)²` -/
def P15258794415089713669.Spec : Prop :=
  ∀ n, P15258794415089713669.a n = A213083 (n + 1)

theorem P15258794415089713669.correct : P15258794415089713669.Spec := by
  intro n
  simp only [A213083, Nat.add_sub_cancel]

end A213083

/-! ## A213083.P12543591315475344731

`∑[char[∑[n²]]]²`
-/

namespace A213083.P12543591315475344731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A213083.P12543591315475344731

namespace A213083

/-- `∑[char[∑[n²]]]²` -/
def P12543591315475344731.Spec : Prop :=
  ∀ n, (P12543591315475344731.a n : ℤ) = A213083 (n + 1)

end A213083

/-! ## A213083.P13200509699549724612

`∑[A253903(n)]^2`
-/

namespace A213083.P13200509699549724612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A213083.P13200509699549724612

namespace A213083

/-- `∑[A253903(n)]^2` -/
def P13200509699549724612.Spec : Prop :=
  ∀ n, P13200509699549724612.a n = A213083 (n + 1)

end A213083

/-! ## A213083.P14078025987224765844

`∑[char[A000330(n)]]^2`
-/

namespace A213083.P14078025987224765844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A213083.P14078025987224765844

namespace A213083

/-- `∑[char[A000330(n)]]^2` -/
def P14078025987224765844.Spec : Prop :=
  ∀ n, (P14078025987224765844.a n : ℤ) = A213083 (n + 1)

end A213083

/-! ## A213083.P17007840363748489851

`(A377721(n+1)-n)*A074279(n+1)`
-/

namespace A213083.P17007840363748489851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A377721 (n + 1) - (n : ℤ)) * A074279 (n + 1)

end

end A213083.P17007840363748489851

namespace A213083

/-- `(A377721(n+1)-n)*A074279(n+1)` -/
def P17007840363748489851.Spec : Prop :=
  ∀ n, P17007840363748489851.a n = A213083 (n + 1)

theorem P17007840363748489851.correct : P17007840363748489851.Spec := by
  intro n
  simp only [A213083, Nat.add_sub_cancel, A213083.P17007840363748489851.a, A213083.P15258794415089713669.a, A074279, A074279.P14114170349531926327.f3, A074279.P14114170349531926327.f2, A074279.P14114170349531926327.f1, A074279.P14114170349531926327.a, A377721, A377721.P13608278594952562135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213083

/-! ## A213083.P12402892502323292879

`(A074279(n+2)-A253903(n+1))*A074279(n+1)`
-/

namespace A213083.P12402892502323292879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074279 (n + 2) - A253903 (n + 1)) * A074279 (n + 1)

end

end A213083.P12402892502323292879

namespace A213083

/-- `(A074279(n+2)-A253903(n+1))*A074279(n+1)` -/
def P12402892502323292879.Spec : Prop :=
  ∀ n, P12402892502323292879.a n = A213083 (n + 1)

end A213083

/-! ## A213083.P3108512070148299730

`A064866(A253902(n+1)+n)`
-/

namespace A213083.P3108512070148299730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (A253902 (n + 1) + (n : ℤ)).toNat

end

end A213083.P3108512070148299730

namespace A213083

/-- `A064866(A253902(n+1)+n)` -/
def P3108512070148299730.Spec : Prop :=
  ∀ n, P3108512070148299730.a n = A213083 (n + 1)

end A213083

/-!
# A213084: Numbers consisting of ones and eights.

The programs for A213084, there is no canonical definition to state claims against.
-/

/-! ## A213084.P13925015218543736342

`A284923(n+1)-A256077(n+1)`
-/

namespace A213084.P13925015218543736342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A256077 (n + 1)

end

end A213084.P13925015218543736342

/-! ## A213084.P14711165535100242223

`A032917(n+1)+A276039(n+1)-A007931(n+1)`
-/

namespace A213084.P14711165535100242223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A276039 (n + 1) - A007931 (n + 1))

end

end A213084.P14711165535100242223

/-! ## A213084.P15028961133502279846

`A007931(n+1)+A284294(n+1)-A032917(n+1)`
-/

namespace A213084.P15028961133502279846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A284294 (n + 1) - A032917 (n + 1))

end

end A213084.P15028961133502279846

/-! ## A213084.P14954865153832311662

`A007931(n+1)+A284923(n+1)-A032810(n+1)`
-/

namespace A213084.P14954865153832311662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A284923 (n + 1) - A032810 (n + 1))

end

end A213084.P14954865153832311662

/-! ## A213084.P13670901103444266874

`A032917(n+1)+A284964(n+1)-A032834(n+1)`
-/

namespace A213084.P13670901103444266874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A284964 (n + 1) - A032834 (n + 1))

end

end A213084.P13670901103444266874

/-! ## A213084.P13800269204912749125

`A032822(n+1)+A284973(n+1)-A256290(n+1)`
-/

namespace A213084.P13800269204912749125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284973 (n + 1) - A256290 (n + 1))

end

end A213084.P13800269204912749125

/-! ## A213084.P8965288335727267737

`A276037(n+1)+A276039(n+1)-A032822(n+1)`
-/

namespace A213084.P8965288335727267737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + (A276039 (n + 1) - A032822 (n + 1))

end

end A213084.P8965288335727267737

/-! ## A213084.P56071928036377960

`A284293(n+1)+A284293(n+1)-A032822(n+1)`
-/

namespace A213084.P56071928036377960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284293 (n + 1) + (A284293 (n + 1) - A032822 (n + 1))

end

end A213084.P56071928036377960

/-! ## A213084.P7784169991947076304

`A284632(n+1)+A284632(n+1)-A032834(n+1)`
-/

namespace A213084.P7784169991947076304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + (A284632 (n + 1) - A032834 (n + 1))

end

end A213084.P7784169991947076304

/-! ## A213084.P3025991485991932992

`A032822(n+1)+A284922(n+1)-A284920(n+1)`
-/

namespace A213084.P3025991485991932992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284922 (n + 1) - A284920 (n + 1))

end

end A213084.P3025991485991932992

/-! ## A213084.P16708170111153173313

`A276039(n+1)+A285011(n+1)-A256340(n+1)`
-/

namespace A213084.P16708170111153173313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + (A285011 (n + 1) - A256340 (n + 1))

end

end A213084.P16708170111153173313

/-! ## A213084.P5433692098862715063

`A284382(n+1)+A284632(n+1)-A256292(n+1)`
-/

namespace A213084.P5433692098862715063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284382 (n + 1) + (A284632 (n + 1) - A256292 (n + 1))

end

end A213084.P5433692098862715063

/-! ## A213084.P14419916672266983322

`A284379(n+1)+A284964(n+1)-A256291(n+1)`
-/

namespace A213084.P14419916672266983322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284379 (n + 1) + (A284964 (n + 1) - A256291 (n + 1))

end

end A213084.P14419916672266983322

/-! ## A213084.P8452846167946157010

`A284634(n+1)+A284922(n+1)-A256291(n+1)`
-/

namespace A213084.P8452846167946157010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284634 (n + 1) + (A284922 (n + 1) - A256291 (n + 1))

end

end A213084.P8452846167946157010

/-! ## A213084.P4620722932563461149

`A284633(n+1)+A284973(n+1)-A256292(n+1)`
-/

namespace A213084.P4620722932563461149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + (A284973 (n + 1) - A256292 (n + 1))

end

end A213084.P4620722932563461149

/-! ## A213084.P18191437875274629488

`A276039(n+1)+A276039(n+1)-A284293(n+1)`
-/

namespace A213084.P18191437875274629488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276039 (n + 1) + (A276039 (n + 1) - A284293 (n + 1))

end

end A213084.P18191437875274629488

/-! ## A213084.P6574925905395722890

`A284632(n+1)+A284922(n+1)-A284633(n+1)`
-/

namespace A213084.P6574925905395722890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) + (A284922 (n + 1) - A284633 (n + 1))

end

end A213084.P6574925905395722890

/-! ## A213084.P8356769674628450842

`A284633(n+1)+A284922(n+1)-A284634(n+1)`
-/

namespace A213084.P8356769674628450842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1) + (A284922 (n + 1) - A284634 (n + 1))

end

end A213084.P8356769674628450842

/-! ## A213084.P7672909080936998027

`A046031(A032924(n+1))`
-/

namespace A213084.P7672909080936998027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (A032924 (n + 1)).toNat

end

end A213084.P7672909080936998027

/-! ## A213084.P14388889735663880554

`A046031(eq[0, A077267(n)])`
-/

namespace A213084.P14388889735663880554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213084.P14388889735663880554

/-!
# A213086: Square array read by antidiagonals: T(n,m) (n>=1, m>=0) is the number of partitions of mn that are the sum of m not necessarily distinct partitions of n.

The programs for A213086, there is no canonical definition to state claims against.
-/

/-! ## A213086.P7731387119724124876

`A163352(A130749(n)+A047050(n))`
-/

namespace A213086.P7731387119724124876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A130749 n + A047050 n).toNat

end

end A213086.P7731387119724124876

/-! ## A213086.P4513597634437001

`A163352(A130749(n)+A047060(n))`
-/

namespace A213086.P4513597634437001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A130749 n + A047060 n).toNat

end

end A213086.P4513597634437001

/-! ## A213086.P11134600711841521722

`A163352(A130749(n)+A050167(n))`
-/

namespace A213086.P11134600711841521722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A130749 n + A050167 n).toNat

end

end A213086.P11134600711841521722

/-! ## A213086.P10482678888598185311

`A050446(n)-A170957(A155586(n))`
-/

namespace A213086.P10482678888598185311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 n - A170957 (A155586 n).toNat

end

end A213086.P10482678888598185311

/-! ## A213086.P9708305973376544589

`A050446(n)-A185044(A166065(n))`
-/

namespace A213086.P9708305973376544589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 n - A185044 (A166065 n).toNat

end

end A213086.P9708305973376544589

/-!
# A213087: Concatenate the binary representations of the nonnegative integers and form successive terms by inserting a comma after each zero.

The programs for A213087, there is no canonical definition to state claims against.
-/

/-! ## A213087.P14228656869852334325

`A139337(A152391(6*n+9))-1`
-/

namespace A213087.P14228656869852334325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A152391 (6 * n + 9)).toNat - 1

end

end A213087.P14228656869852334325

/-! ## A213087.P16019232313198671152

`A105034(and(A105041(n+1), A105050(n+1)))`
-/

namespace A213087.P16019232313198671152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105034 (Int.land (A105041 (n + 1)) (A105050 (n + 1))).toNat

end

end A213087.P16019232313198671152

/-!
# A213088: The Manhattan distance to the origin while traversing the first quadrant in a taxicab geometry.

The programs for A213088, the canonical program `A213088.P18382071125931641229` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213088 has offset 1).

The definition of A213088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209302, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213088.P18382071125931641229

`A209302(n+1)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A213088

/-- `A209302(n+1)-1` -/
def P18382071125931641229.Spec : Prop :=
  ∀ n, P18382071125931641229.a n = A213088 (n + 1)

theorem P18382071125931641229.correct : P18382071125931641229.Spec := by
  intro n
  simp only [A213088, Nat.add_sub_cancel]

end A213088

/-! ## A213088.P2528681866958118837

`n-2*A080344(n)`
-/

namespace A213088.P2528681866958118837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A080344 n

end

end A213088.P2528681866958118837

namespace A213088

/-- `n-2*A080344(n)` -/
def P2528681866958118837.Spec : Prop :=
  ∀ n, P2528681866958118837.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P741890143618366320

`A319289(n)+A319290(n)`
-/

namespace A213088.P741890143618366320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 n + A319290 n

end

end A213088.P741890143618366320

namespace A213088

/-- `A319289(n)+A319290(n)` -/
def P741890143618366320.Spec : Prop :=
  ∀ n, P741890143618366320.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P9942318787861025056

`A000194(n+1)+A053188(n+1)-1`
-/

namespace A213088.P9942318787861025056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) + A053188 (n + 1) - 1

end

end A213088.P9942318787861025056

namespace A213088

/-- `A000194(n+1)+A053188(n+1)-1` -/
def P9942318787861025056.Spec : Prop :=
  ∀ n, P9942318787861025056.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P1819601847615069982

`∑[(-1)^floor(2*sqrt(n))]-1`
-/

namespace A213088.P1819601847615069982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊2 * Real.sqrt (n : ℝ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A213088.P1819601847615069982

namespace A213088

/-- `∑[(-1)^floor(2*sqrt(n))]-1` -/
def P1819601847615069982.Spec : Prop :=
  ∀ n, P1819601847615069982.a n = (A213088 (n + 1) : ℚ)

end A213088

/-! ## A213088.P14772311843980048602

`∑[-A062157(floor(2*sqrt(n)))]`
-/

namespace A213088.P14772311843980048602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062157 ⌊2 * Real.sqrt (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213088.P14772311843980048602

namespace A213088

/-- `∑[-A062157(floor(2*sqrt(n)))]` -/
def P14772311843980048602.Spec : Prop :=
  ∀ n, P14772311843980048602.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P11427579364306733300

`A003056(A214928(n+1)-1)`
-/

namespace A213088.P11427579364306733300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A214928 (n + 1) - 1).toNat

end

end A213088.P11427579364306733300

namespace A213088

/-- `A003056(A214928(n+1)-1)` -/
def P11427579364306733300.Spec : Prop :=
  ∀ n, P11427579364306733300.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P9159894302890221259

`A003056(A214929(n+1)-1)`
-/

namespace A213088.P9159894302890221259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A214929 (n + 1) - 1).toNat

end

end A213088.P9159894302890221259

namespace A213088

/-- `A003056(A214929(n+1)-1)` -/
def P9159894302890221259.Spec : Prop :=
  ∀ n, P9159894302890221259.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P7264768476391321596

`A003984(floor(sqrt(n))²+n)`
-/

namespace A213088.P7264768476391321596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (Nat.sqrt n ^ 2 + n)

end

end A213088.P7264768476391321596

namespace A213088

/-- `A003984(floor(sqrt(n))²+n)` -/
def P7264768476391321596.Spec : Prop :=
  ∀ n, P7264768476391321596.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P2259301471683101471

`A389352(A007606(n+1))`
-/

namespace A213088.P2259301471683101471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389352 (A007606 (n + 1)).toNat

end

end A213088.P2259301471683101471

namespace A213088

/-- `A389352(A007606(n+1))` -/
def P2259301471683101471.Spec : Prop :=
  ∀ n, P2259301471683101471.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P14534692610905248881

`A214526(A209302(n+1)²)`
-/

namespace A213088.P14534692610905248881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A209302 (n + 1) ^ 2).toNat

end

end A213088.P14534692610905248881

namespace A213088

/-- `A214526(A209302(n+1)²)` -/
def P14534692610905248881.Spec : Prop :=
  ∀ n, P14534692610905248881.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P2500684316796765973

`A083800(n+1)%A209302(n+1)`
-/

namespace A213088.P2500684316796765973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A209302 (n + 1))

end

end A213088.P2500684316796765973

namespace A213088

/-- `A083800(n+1)%A209302(n+1)` -/
def P2500684316796765973.Spec : Prop :=
  ∀ n, P2500684316796765973.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P9484277674579329372

`A070198(n)%A209302(n+1)`
-/

namespace A213088.P9484277674579329372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A209302 (n + 1))

end

end A213088.P9484277674579329372

namespace A213088

/-- `A070198(n)%A209302(n+1)` -/
def P9484277674579329372.Spec : Prop :=
  ∀ n, P9484277674579329372.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P6966325255999382584

`A079782(n+1)%A209302(n+1)`
-/

namespace A213088.P6966325255999382584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A209302 (n + 1))

end

end A213088.P6966325255999382584

namespace A213088

/-- `A079782(n+1)%A209302(n+1)` -/
def P6966325255999382584.Spec : Prop :=
  ∀ n, P6966325255999382584.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P9667802851885093881

`A083685(n+1)%A209302(n+1)`
-/

namespace A213088.P9667802851885093881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A209302 (n + 1))

end

end A213088.P9667802851885093881

namespace A213088

/-- `A083685(n+1)%A209302(n+1)` -/
def P9667802851885093881.Spec : Prop :=
  ∀ n, P9667802851885093881.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P16859958064809220487

`A121934(n+1)%A209302(n+1)`
-/

namespace A213088.P16859958064809220487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A209302 (n + 1))

end

end A213088.P16859958064809220487

namespace A213088

/-- `A121934(n+1)%A209302(n+1)` -/
def P16859958064809220487.Spec : Prop :=
  ∀ n, P16859958064809220487.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P11211952302968811766

`A030494(n+1)%A209302(n+1)`
-/

namespace A213088.P11211952302968811766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A209302 (n + 1))

end

end A213088.P11211952302968811766

namespace A213088

/-- `A030494(n+1)%A209302(n+1)` -/
def P11211952302968811766.Spec : Prop :=
  ∀ n, P11211952302968811766.a n = A213088 (n + 1)

end A213088

/-! ## A213088.P427818051900254004

`A072828(n+1)%A209302(n+1)`
-/

namespace A213088.P427818051900254004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A209302 (n + 1))

end

end A213088.P427818051900254004

namespace A213088

/-- `A072828(n+1)%A209302(n+1)` -/
def P427818051900254004.Spec : Prop :=
  ∀ n, P427818051900254004.a n = A213088 (n + 1)

end A213088

/-!
# A213090: Number of permutations of length n whose associated Schubert variety is defined by inclusions.

The programs for A213090, there is no canonical definition to state claims against.
-/

/-! ## A213090.P5113951203360760822

`A225819(A390479(n))`
-/

namespace A213090.P5113951203360760822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A390479 n).toNat

end

end A213090.P5113951203360760822

/-! ## A213090.P10780901621545192259

`A225819(A289589(n+1))`
-/

namespace A213090.P10780901621545192259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225819 (A289589 (n + 1)).toNat

end

end A213090.P10780901621545192259

/-! ## A213090.P15537167056843330572

`A193038(n)+A112765(A258173(n))`
-/

namespace A213090.P15537167056843330572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193038 n + A112765 (A258173 n).toNat

end

end A213090.P15537167056843330572

/-!
# A213091: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^2).

The programs for A213091, there is no canonical definition to state claims against.
-/

/-! ## A213091.P17880503432350691787

`A384864(∑[n+1]+n)`
-/

namespace A213091.P17880503432350691787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384864 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213091.P17880503432350691787

/-! ## A213091.P13941803532357804813

`A008617(∑[A335718(n)+A084935(n+1)])`
-/

namespace A213091.P13941803532357804813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335718 n + A084935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213091.P13941803532357804813

/-! ## A213091.P11292525980308581332

`A054404(A350065(n+1)+A089408(2*n))`
-/

namespace A213091.P11292525980308581332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A350065 (n + 1) + A089408 (2 * n)).toNat

end

end A213091.P11292525980308581332

/-! ## A213091.P6846116145010671643

`A054404(A350067(n+1)+A089408(2*n))`
-/

namespace A213091.P6846116145010671643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A350067 (n + 1) + A089408 (2 * n)).toNat

end

end A213091.P6846116145010671643

/-!
# A213092: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^3).

The programs for A213092, there is no canonical definition to state claims against.
-/

/-! ## A213092.P8383278828718561690

`A384865(∑[n+1]+n)`
-/

namespace A213092.P8383278828718561690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384865 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213092.P8383278828718561690

/-! ## A213092.P18296623937778271049

`A003963(A149196(n)+A149194(n))`
-/

namespace A213092.P18296623937778271049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A149196 n + A149194 n).toNat

end

end A213092.P18296623937778271049

/-! ## A213092.P13014990632606426348

`A038567(A030019(n))-A002635(n)`
-/

namespace A213092.P13014990632606426348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A030019 n).toNat - A002635 n

end

end A213092.P13014990632606426348

/-! ## A213092.P13078383285151744288

`A038567(A030019(n))-A046072(n+4)`
-/

namespace A213092.P13078383285151744288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A030019 n).toNat - A046072 (n + 4)

end

end A213092.P13078383285151744288

/-!
# A213093: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^4).

The programs for A213093, there is no canonical definition to state claims against.
-/

/-! ## A213093.P1914702396729374062

`A384866(∑[n+1]+n)`
-/

namespace A213093.P1914702396729374062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384866 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A213093.P1914702396729374062

/-! ## A213093.P17409597999489680373

`A319198(A279572(n)-A007083(n+2))`
-/

namespace A213093.P17409597999489680373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319198 (A279572 n - A007083 (n + 2)).toNat

end

end A213093.P17409597999489680373

/-! ## A213093.P16269653313885640875

`A103221(xor(n!*∑[1/n!], A307444(n)))`
-/

namespace A213093.P16269653313885640875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (A307444 n)).toNat

end

end A213093.P16269653313885640875

/-!
# A213094: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^4)^2.

The programs for A213094, there is no canonical definition to state claims against.
-/

/-! ## A213094.P17120030024582595024

`A008621(Δ[A320181(n)])`
-/

namespace A213094.P17120030024582595024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A213094.P17120030024582595024

/-! ## A213094.P17412512148494104570

`A008621(A346772(n)+A047749(n))`
-/

namespace A213094.P17412512148494104570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A346772 n + A047749 n).toNat

end

end A213094.P17412512148494104570

/-! ## A213094.P9956859807337716670

`A008621(A346772(n)+A191789(n))`
-/

namespace A213094.P9956859807337716670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A346772 n + A191789 n).toNat

end

end A213094.P9956859807337716670

/-!
# A213095: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^5)^2.

The programs for A213095, there is no canonical definition to state claims against.
-/

/-! ## A213095.P17334314065462229435

`A037290(ceil(2^(n-1)))`
-/

namespace A213095.P17334314065462229435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037290 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A213095.P17334314065462229435

/-! ## A213095.P10597291962976026129

`∑[A098236(∏[n+1])]+1`
-/

namespace A213095.P10597291962976026129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098236 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A213095.P10597291962976026129

/-!
# A213096: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^6)^3.

The programs for A213096, there is no canonical definition to state claims against.
-/

/-! ## A213096.P7047091525404794880

`A339890(lcm(2, A036691(n)))`
-/

namespace A213096.P7047091525404794880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (Int.lcm 2 (A036691 n))

end

end A213096.P7047091525404794880

/-! ## A213096.P5525327822504826732

`A339890(∏[A045577(n+2)])`
-/

namespace A213096.P5525327822504826732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213096.P5525327822504826732

/-!
# A213098: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^6)^2.

The programs for A213098, there is no canonical definition to state claims against.
-/

/-! ## A213098.P8862681072139131630

`A014085(A158576(n+4))-1`
-/

namespace A213098.P8862681072139131630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A158576 (n + 4)).toNat - 1

end

end A213098.P8862681072139131630

/-! ## A213098.P7379459965193721047

`A064775(∏[∑[A057226(n+1)]])`
-/

namespace A213098.P7379459965193721047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213098.P7379459965193721047

/-!
# A213099: G.f. satisfies: A(x) = 1 + x/A(-x*A(x)^7)^3.

The programs for A213099, there is no canonical definition to state claims against.
-/

/-! ## A213099.P11267636583433202963

`A320806(n)+A002264(A005649(n))`
-/

namespace A213099.P11267636583433202963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320806 n + A002264 (A005649 n).toNat

end

end A213099.P11267636583433202963

/-! ## A213099.P12452449411418055051

`A133310(A307402(n)+A036654(n))`
-/

namespace A213099.P12452449411418055051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A307402 n + A036654 n).toNat

end

end A213099.P12452449411418055051

