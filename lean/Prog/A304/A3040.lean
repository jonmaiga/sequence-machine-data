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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
# A304000: Numbers whose sum of divisors is the eighth power of one of their divisors.

The programs for A304000, there is no canonical definition to state claims against.
-/

/-! ## A304000.P12802997867037413884

`A048258(n+3)^A067029(A028342(n+1))`
-/

namespace A304000.P12802997867037413884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048258 (n + 3) : ℚ) ^ (A067029 (A028342 (n + 1)).toNat : ℤ)

end

end A304000.P12802997867037413884

/-! ## A304000.P12090438842444730723

`gcd(A048258(n+3), A275714(A027894(n+3)))`
-/

namespace A304000.P12090438842444730723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048258 (n + 3)) (A275714 (A027894 (n + 3)).toNat)

end

end A304000.P12090438842444730723

/-!
# A304001: Number of permutations of [n] whose up-down signature has a nonnegative total sum.

The programs for A304001, there is no canonical definition to state claims against.
-/

/-! ## A304001.P9026334662525289864

`A179457(A065033(n²))`
-/

namespace A304001.P9026334662525289864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (A065033 (n ^ 2)).toNat

end

end A304001.P9026334662525289864

/-! ## A304001.P10902448262847236990

`A179457(A080476(n+1)-n)`
-/

namespace A304001.P10902448262847236990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (A080476 (n + 1) - (n : ℤ)).toNat

end

end A304001.P10902448262847236990

/-! ## A304001.P15805729988466239910

`A179457(A065033(n)+C(n, 2))`
-/

namespace A304001.P15805729988466239910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (A065033 n + (Nat.choose n 2 : ℤ)).toNat

end

end A304001.P15805729988466239910

/-! ## A304001.P17792074398115536281

`A179457(A000982(floor(acot(n)+n)))`
-/

namespace A304001.P17792074398115536281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (A000982 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A304001.P17792074398115536281

/-! ## A304001.P11963175514652125199

`A179457(A000982(A000038(n)+n))`
-/

namespace A304001.P11963175514652125199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179457 (A000982 (A000038 n + (n : ℤ)).toNat).toNat

end

end A304001.P11963175514652125199

/-!
# A304002: Number of partitions of n into at most 1 copy of 2^3, 2 copies of 3^3, 3 copies of 4^3, ... .

The programs for A304002, there is no canonical definition to state claims against.
-/

/-! ## A304002.P11939568495564883369

`val(A342499(A000190(∑[n]+9)+2), 4)`
-/

namespace A304002.P11939568495564883369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A342499 (A000190 (∑ j ∈ Finset.range (n + 1), f1 j + 9) + 2).toNat).toNat 4

end

end A304002.P11939568495564883369

/-! ## A304002.P7492537467785842137

`and(A000005(A104029(n)), A279760(n))`
-/

namespace A304002.P7492537467785842137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A104029 n).toNat) (A279760 n)

end

end A304002.P7492537467785842137

/-! ## A304002.P1612650273216311014

`A000007(A147289(n+4)%A002024(n+1))`
-/

namespace A304002.P1612650273216311014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A147289 (n + 4)) (A002024 (n + 1))).toNat

end

end A304002.P1612650273216311014

/-! ## A304002.P2868686416078533824

`A000045(val(A344157(n+1), A246479(n+1)))`
-/

namespace A304002.P2868686416078533824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A344157 (n + 1)).toNat (A246479 (n + 1)).toNat)

end

end A304002.P2868686416078533824

/-! ## A304002.P15589889594719418411

`A144596(A225566(n+2))`
-/

namespace A304002.P15589889594719418411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 (A225566 (n + 2)).toNat

end

end A304002.P15589889594719418411

/-!
# A304003: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304003, there is no canonical definition to state claims against.
-/

/-! ## A304003.P18422347047476288946

`A304010(∑[4*n]+1)`
-/

namespace A304003.P18422347047476288946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304003.P18422347047476288946

/-! ## A304003.P5834580606036114849

`and(-1, A304010(A001844(n)))`
-/

namespace A304003.P5834580606036114849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304010 (A001844 n).toNat)

end

end A304003.P5834580606036114849

/-! ## A304003.P5057752445409097847

`record[A304010(A330613(n+1))]`
-/

namespace A304003.P5057752445409097847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304003.P5057752445409097847

/-! ## A304003.P2839621456776766421

`record[A003982(n)*A304010(n+1)]`
-/

namespace A304003.P2839621456776766421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304003.P2839621456776766421

/-! ## A304003.P12995947867125569056

`record[A214505(n)*A304010(n+1)]`
-/

namespace A304003.P12995947867125569056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A304010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304003.P12995947867125569056

/-!
# A304004: Number of n X 2 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304004, the canonical program `A304004.P10450761010945913802` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304004 has offset 1).

The definition of A304004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304004.P10450761010945913802

`a(n-1)+3*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=13, a(4)=26`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304004

/-- `a(n-1)+3*a(n-2)-4*a(n-4)` -/
def P10450761010945913802.Spec : Prop :=
  ∀ n, P10450761010945913802.a n = A304004 (n + 1)

theorem P10450761010945913802.correct : P10450761010945913802.Spec := by
  intro n
  simp only [A304004, Nat.add_sub_cancel]

end A304004

/-! ## A304004.P16679448666084031564

`record[ratio[A304141(n+1)]]`
-/

namespace A304004.P16679448666084031564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304004.P16679448666084031564

namespace A304004

/-- `record[ratio[A304141(n+1)]]` -/
def P16679448666084031564.Spec : Prop :=
  ∀ n, P16679448666084031564.a n = (A304004 (n + 1) : ℚ)

end A304004

/-! ## A304004.P17644627718113474402

`A304141(∑[n+1]+2)`
-/

namespace A304004.P17644627718113474402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304004.P17644627718113474402

namespace A304004

/-- `A304141(∑[n+1]+2)` -/
def P17644627718113474402.Spec : Prop :=
  ∀ n, P17644627718113474402.a n = A304004 (n + 1)

end A304004

/-! ## A304004.P10974918033976543283

`record[A304141(A252460(n+1))]`
-/

namespace A304004.P10974918033976543283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304004.P10974918033976543283

namespace A304004

/-- `record[A304141(A252460(n+1))]` -/
def P10974918033976543283.Spec : Prop :=
  ∀ n, P10974918033976543283.a n = A304004 (n + 1)

end A304004

/-! ## A304004.P9377135369131090308

`record[A010054(n)*A304141(n+2)]`
-/

namespace A304004.P9377135369131090308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304004.P9377135369131090308

namespace A304004

/-- `record[A010054(n)*A304141(n+2)]` -/
def P9377135369131090308.Spec : Prop :=
  ∀ n, P9377135369131090308.a n = A304004 (n + 1)

end A304004

/-!
# A304005: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304005, there is no canonical definition to state claims against.
-/

/-! ## A304005.P11974196592484113213

`A304010(∑[n+2]+4)`
-/

namespace A304005.P11974196592484113213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304005.P11974196592484113213

/-! ## A304005.P732553917049935054

`A305360(∑[n+2]+4)`
-/

namespace A304005.P732553917049935054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304005.P732553917049935054

/-! ## A304005.P5186201501362522263

`or(1, A304010(A167614(n+1)))`
-/

namespace A304005.P5186201501362522263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304010 (A167614 (n + 1)).toNat)

end

end A304005.P5186201501362522263

/-! ## A304005.P1303423821547052222

`or(1, A305360(A046691(n)+7))`
-/

namespace A304005.P1303423821547052222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305360 (A046691 n + 7).toNat)

end

end A304005.P1303423821547052222

/-! ## A304005.P17006999800503775398

`record[A304010(n+3)/A080852(n)]`
-/

namespace A304005.P17006999800503775398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304010 (n + 3) : ℚ) / (A080852 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304005.P17006999800503775398

/-!
# A304006: Number of n X 4 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304006, there is no canonical definition to state claims against.
-/

/-! ## A304006.P12826935319383944449

`A304010(∑[n+3]+7)`
-/

namespace A304006.P12826935319383944449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304006.P12826935319383944449

/-! ## A304006.P16842873349010523484

`A305360(∑[n+3]+7)`
-/

namespace A304006.P16842873349010523484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304006.P16842873349010523484

/-! ## A304006.P12224532973771301986

`or(char[1], A304010(A141214(n)+7))`
-/

namespace A304006.P12224532973771301986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304010 (A141214 n + 7).toNat)

end

end A304006.P12224532973771301986

/-! ## A304006.P17435523771486590876

`record[gcd(A300453(n), A304010(n+1))]`
-/

namespace A304006.P17435523771486590876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300453 n) (A304010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304006.P17435523771486590876

/-! ## A304006.P14843384223479466340

`record[gcd(A303913(n), A304010(n+2))]`
-/

namespace A304006.P14843384223479466340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304006.P14843384223479466340

/-!
# A304007: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304007, there is no canonical definition to state claims against.
-/

/-! ## A304007.P17247120015581601290

`A304010(∑[n+4]+11)`
-/

namespace A304007.P17247120015581601290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304007.P17247120015581601290

/-! ## A304007.P13026804344982225929

`A304010(A000217(n+4)+5)+char[19]`
-/

namespace A304007.P13026804344982225929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304007.P13026804344982225929

/-! ## A304007.P13116357892898540471

`or(A185015(n), A304010(A374005(n+1)))`
-/

namespace A304007.P13116357892898540471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185015 n) (A304010 (A374005 (n + 1)).toNat)

end

end A304007.P13116357892898540471

/-! ## A304007.P6682914141537432225

`A262079(n+1)*A304010(A374005(n+1))`
-/

namespace A304007.P6682914141537432225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262079 (n + 1) * A304010 (A374005 (n + 1)).toNat

end

end A304007.P6682914141537432225

/-! ## A304007.P16451557605222899904

`A304010(A374005(n+1))+A185015(3*n)`
-/

namespace A304007.P16451557605222899904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A374005 (n + 1)).toNat + A185015 (3 * n)

end

end A304007.P16451557605222899904

/-!
# A304008: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304008, there is no canonical definition to state claims against.
-/

/-! ## A304008.P3396393371210050280

`A304010(∑[n+5]+16)`
-/

namespace A304008.P3396393371210050280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304008.P3396393371210050280

/-! ## A304008.P5514240414589287347

`A304010(A000217(n+5)+6)+char[18]`
-/

namespace A304008.P5514240414589287347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304008.P5514240414589287347

/-! ## A304008.P4334292087544494419

`A304010(A374007(n+1))+A025439(n)`
-/

namespace A304008.P4334292087544494419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A374007 (n + 1)).toNat + A025439 n

end

end A304008.P4334292087544494419

/-! ## A304008.P2982650316370943787

`A304010(A374007(n+1))%A037150(n+3)`
-/

namespace A304008.P2982650316370943787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304010 (A374007 (n + 1)).toNat) (A037150 (n + 3))

end

end A304008.P2982650316370943787

/-! ## A304008.P15894432431031476177

`A007318(C(n, 2))*A304010(A000124(n+5)+5)`
-/

namespace A304008.P15894432431031476177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304010 (A000124 (n + 5) + 5).toNat

end

end A304008.P15894432431031476177

/-!
# A304009: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304009, there is no canonical definition to state claims against.
-/

/-! ## A304009.P4244488010120087386

`A304010(A374008(n+1))`
-/

namespace A304009.P4244488010120087386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A374008 (n + 1)).toNat

end

end A304009.P4244488010120087386

/-! ## A304009.P7394752322132391094

`A304010(A056119(n)+28)`
-/

namespace A304009.P7394752322132391094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A056119 n + 28).toNat

end

end A304009.P7394752322132391094

/-! ## A304009.P9073658137291491643

`A304010(A166136(n+5)+1)`
-/

namespace A304009.P9073658137291491643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A166136 (n + 5) + 1).toNat

end

end A304009.P9073658137291491643

/-! ## A304009.P2032375625886174373

`A304010(A167499(n+5)+2)`
-/

namespace A304009.P2032375625886174373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A167499 (n + 5) + 2).toNat

end

end A304009.P2032375625886174373

/-! ## A304009.P4624863998307342385

`A304010(A167614(n+5)+4)`
-/

namespace A304009.P4624863998307342385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304010 (A167614 (n + 5) + 4).toNat

end

end A304009.P4624863998307342385

/-!
# A304010: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304010, there is no canonical definition to state claims against.
-/

/-! ## A304010.P14909057925420682106

`A305360(n+1)-A342019(A304676(n+1))`
-/

namespace A304010.P14909057925420682106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) - A342019 (A304676 (n + 1)).toNat

end

end A304010.P14909057925420682106

/-! ## A304010.P5889823648286330676

`A305360(n+1)+A143781(A262079(n+1))`
-/

namespace A304010.P5889823648286330676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A143781 (A262079 (n + 1)).toNat

end

end A304010.P5889823648286330676

/-! ## A304010.P6555529573312800124

`A305360(n+1)^Δ[A137904(n)]`
-/

namespace A304010.P6555529573312800124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305360 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A304010.P6555529573312800124

/-! ## A304010.P12687978922673534401

`A305360(n+1)%∑[A097709(n)]`
-/

namespace A304010.P12687978922673534401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305360 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304010.P12687978922673534401

/-! ## A304010.P3698431769852889016

`A305360(n+1)+A007814(Δ[A137904(n)])`
-/

namespace A304010.P3698431769852889016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A007814 (f1 (n + 1) - f1 n).toNat

end

end A304010.P3698431769852889016

/-! ## A304010.P17965331946644062148

`A305360(n+1)+A000007(A003453(n+5))`
-/

namespace A304010.P17965331946644062148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A000007 (A003453 (n + 5)).toNat

end

end A304010.P17965331946644062148

/-! ## A304010.P6241500258808631166

`A305360(n+1)+A000007(A305340(n+1))`
-/

namespace A304010.P6241500258808631166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A000007 (A305340 (n + 1)).toNat

end

end A304010.P6241500258808631166

/-! ## A304010.P14185986430816420160

`A305360(n+1)+A000007(A335448(n+1))`
-/

namespace A304010.P14185986430816420160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1) + A000007 (A335448 (n + 1)).toNat

end

end A304010.P14185986430816420160

/-!
# A304011: Number of same-sized pairs of subsets of set of n numbers that might have the same sum.

The programs for A304011, the canonical program `A304011.P17788673777642198236` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304011 has offset 1).

The definition of A304011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304011.P17788673777642198236

`A097893(n)-A082397(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304011

/-- `A097893(n)-A082397(n+1)` -/
def P17788673777642198236.Spec : Prop :=
  ∀ n, P17788673777642198236.a n = A304011 (n + 1)

theorem P17788673777642198236.correct : P17788673777642198236.Spec := by
  intro n
  simp only [A304011, Nat.add_sub_cancel]

end A304011

/-! ## A304011.P15252797715603750317

`∑[A189912(n)-A001006(n+1)]`
-/

namespace A304011.P15252797715603750317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 n - A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304011.P15252797715603750317

namespace A304011

/-- `∑[A189912(n)-A001006(n+1)]` -/
def P15252797715603750317.Spec : Prop :=
  ∀ n, P15252797715603750317.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P17705336333393234049

`∑[A002426(n)-A005043(n+2)]`
-/

namespace A304011.P17705336333393234049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A005043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304011.P17705336333393234049

namespace A304011

/-- `∑[A002426(n)-A005043(n+2)]` -/
def P17705336333393234049.Spec : Prop :=
  ∀ n, P17705336333393234049.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P259107916218352033

`A097893(n)-∑[A005043(n+2)]`
-/

namespace A304011.P259107916218352033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304011.P259107916218352033

namespace A304011

/-- `A097893(n)-∑[A005043(n+2)]` -/
def P259107916218352033.Spec : Prop :=
  ∀ n, P259107916218352033.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P4241279568552986752

`A257520(n+1)-A001006(n+1)`
-/

namespace A304011.P4241279568552986752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - A001006 (n + 1)

end

end A304011.P4241279568552986752

namespace A304011

/-- `A257520(n+1)-A001006(n+1)` -/
def P4241279568552986752.Spec : Prop :=
  ∀ n, P4241279568552986752.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P7069096098105121808

`A257520(n+1)-Δ[A097332(n+1)]`
-/

namespace A304011.P7069096098105121808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1) - (f1 (n + 1) - f1 n)

end

end A304011.P7069096098105121808

namespace A304011

/-- `A257520(n+1)-Δ[A097332(n+1)]` -/
def P7069096098105121808.Spec : Prop :=
  ∀ n, P7069096098105121808.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P1554444351448351971

`A097861(n+1)+1-A001006(n+1)`
-/

namespace A304011.P1554444351448351971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1) + (1 - A001006 (n + 1))

end

end A304011.P1554444351448351971

namespace A304011

/-- `A097861(n+1)+1-A001006(n+1)` -/
def P1554444351448351971.Spec : Prop :=
  ∀ n, P1554444351448351971.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P11869965516114459185

`∑[A002426(n)-A002026(n)-A005043(n)]`
-/

namespace A304011.P11869965516114459185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A002026 n - A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304011.P11869965516114459185

namespace A304011

/-- `∑[A002426(n)-A002026(n)-A005043(n)]` -/
def P11869965516114459185.Spec : Prop :=
  ∀ n, P11869965516114459185.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P16058133507772064559

`A383527(n+1)-(A097893(n)+A001006(n+1))`
-/

namespace A304011.P16058133507772064559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 (n + 1) - (A097893 n + A001006 (n + 1))

end

end A304011.P16058133507772064559

namespace A304011

/-- `A383527(n+1)-(A097893(n)+A001006(n+1))` -/
def P16058133507772064559.Spec : Prop :=
  ∀ n, P16058133507772064559.a n = A304011 (n + 1)

end A304011

/-! ## A304011.P364940206299791632

`∑[A005717(n+1)-A002026(n)]-A005717(n+1)`
-/

namespace A304011.P364940206299791632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) - A002026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005717 (n + 1)

end

end A304011.P364940206299791632

namespace A304011

/-- `∑[A005717(n+1)-A002026(n)]-A005717(n+1)` -/
def P364940206299791632.Spec : Prop :=
  ∀ n, P364940206299791632.a n = A304011 (n + 1)

end A304011

/-!
# A304012: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304012, there is no canonical definition to state claims against.
-/

/-! ## A304012.P235549132092410116

`A304019(∑[4*n]+1)`
-/

namespace A304012.P235549132092410116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304012.P235549132092410116

/-! ## A304012.P6549158995875439387

`record[A304019(Δ[A235355(n)])]`
-/

namespace A304012.P6549158995875439387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304012.P6549158995875439387

/-! ## A304012.P2490619965375002713

`and(-1, A304019(A001844(n)))`
-/

namespace A304012.P2490619965375002713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304019 (A001844 n).toNat)

end

end A304012.P2490619965375002713

/-! ## A304012.P9848759162391440930

`record[A304019(A330613(n+1))]`
-/

namespace A304012.P9848759162391440930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304012.P9848759162391440930

/-! ## A304012.P8368635889616229812

`record[A003982(n)*A304019(n+1)]`
-/

namespace A304012.P8368635889616229812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304012.P8368635889616229812

/-!
# A304013: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304013, the canonical program `A304013.P9907422437382582789` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304013 has offset 1).

The definition of A304013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304013.P9907422437382582789

`A297909(n+1)+A155559(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304013

/-- `A297909(n+1)+A155559(n)` -/
def P9907422437382582789.Spec : Prop :=
  ∀ n, P9907422437382582789.a n = A304013 (n + 1)

theorem P9907422437382582789.correct : P9907422437382582789.Spec := by
  intro n
  simp only [A304013, Nat.add_sub_cancel]

end A304013

/-! ## A304013.P11164016379005213098

`A297909(n+1)+A131572(2*n)`
-/

namespace A304013.P11164016379005213098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297909 (n + 1) + A131572 (2 * n)

end

end A304013.P11164016379005213098

namespace A304013

/-- `A297909(n+1)+A131572(2*n)` -/
def P11164016379005213098.Spec : Prop :=
  ∀ n, P11164016379005213098.a n = A304013 (n + 1)

end A304013

/-! ## A304013.P730220440338659922

`A297909(n+1)+2*A131577(n)`
-/

namespace A304013.P730220440338659922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297909 (n + 1) + 2 * A131577 n

end

end A304013.P730220440338659922

namespace A304013

/-- `A297909(n+1)+2*A131577(n)` -/
def P730220440338659922.Spec : Prop :=
  ∀ n, P730220440338659922.a n = A304013 (n + 1)

end A304013

/-! ## A304013.P2418585941350824770

`A297909(n+1)+A000079(n)%A297909(n+1)`
-/

namespace A304013.P2418585941350824770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297909 (n + 1) + Int.tmod (A000079 n) (A297909 (n + 1))

end

end A304013.P2418585941350824770

namespace A304013

/-- `A297909(n+1)+A000079(n)%A297909(n+1)` -/
def P2418585941350824770.Spec : Prop :=
  ∀ n, P2418585941350824770.a n = A304013 (n + 1)

end A304013

/-! ## A304013.P6351346982273284103

`A297909(n+1)+Δ[A008277(A133263(n))]`
-/

namespace A304013.P6351346982273284103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297909 (n + 1) + (f1 (n + 1) - f1 n)

end

end A304013.P6351346982273284103

namespace A304013

/-- `A297909(n+1)+Δ[A008277(A133263(n))]` -/
def P6351346982273284103.Spec : Prop :=
  ∀ n, P6351346982273284103.a n = A304013 (n + 1)

end A304013

/-!
# A304014: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304014, there is no canonical definition to state claims against.
-/

/-! ## A304014.P11227868267880022406

`A304019(∑[n+2]+4)`
-/

namespace A304014.P11227868267880022406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304014.P11227868267880022406

/-! ## A304014.P13459082176806897694

`record[gcd(A303913(n), A304019(n+1))]`
-/

namespace A304014.P13459082176806897694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304019 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304014.P13459082176806897694

/-! ## A304014.P15863368047379595412

`record[gcd(A144064(n), A304019(n+4))]`
-/

namespace A304014.P15863368047379595412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144064 n) (A304019 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304014.P15863368047379595412

/-! ## A304014.P10986062575801149229

`A304019(A167499(n)+n)+char[22]`
-/

namespace A304014.P10986062575801149229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304014.P10986062575801149229

/-! ## A304014.P10231834045370355656

`A304019(A167614(n+1))^ceil(acot(n))`
-/

namespace A304014.P10231834045370355656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304019 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A304014.P10231834045370355656

/-!
# A304015: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304015, there is no canonical definition to state claims against.
-/

/-! ## A304015.P17503046206562386659

`A304019(∑[n+3]+7)`
-/

namespace A304015.P17503046206562386659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304015.P17503046206562386659

/-! ## A304015.P8562104342423986790

`A304019(A055999(n)+10)+char[21]`
-/

namespace A304015.P8562104342423986790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304015.P8562104342423986790

/-! ## A304015.P8409373889068915177

`A304019(A052905(n)+9)/C(2, n+2)!`
-/

namespace A304015.P8409373889068915177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304019 (A052905 n + 9).toNat : ℚ) / (Nat.factorial (Nat.choose 2 (n + 2)) : ℚ)

end

end A304015.P8409373889068915177

/-! ## A304015.P8414368827761763305

`A007318(C(2, n+2))*A304019(A055999(n)+10)`
-/

namespace A304015.P8414368827761763305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A304019 (A055999 n + 10).toNat

end

end A304015.P8414368827761763305

/-! ## A304015.P12135946861998692893

`A304019(A055999(n)+10)/A014963(56*(n+1))`
-/

namespace A304015.P12135946861998692893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304019 (A055999 n + 10).toNat : ℚ) / (A014963 (56 * (n + 1)) : ℚ)

end

end A304015.P12135946861998692893

/-!
# A304016: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304016, there is no canonical definition to state claims against.
-/

/-! ## A304016.P1846909815323042829

`A304019(∑[n+4]+11)`
-/

namespace A304016.P1846909815323042829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304016.P1846909815323042829

/-! ## A304016.P4049602997815316615

`A304019(A046691(n+3))%A155600(n+3)`
-/

namespace A304016.P4049602997815316615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304019 (A046691 (n + 3)).toNat) (A155600 (n + 3))

end

end A304016.P4049602997815316615

/-! ## A304016.P18138148001080246162

`A304019(A046691(n+3))+A049084(2*(n+2))`
-/

namespace A304016.P18138148001080246162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A046691 (n + 3)).toNat + A049084 (2 * (n + 2))

end

end A304016.P18138148001080246162

/-!
# A304017: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304017, there is no canonical definition to state claims against.
-/

/-! ## A304017.P912015088088111860

`A304019(∑[n+5]+16)`
-/

namespace A304017.P912015088088111860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304017.P912015088088111860

/-! ## A304017.P6188129726260686500

`A304019(A052905(n+3))+char[15]`
-/

namespace A304017.P6188129726260686500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A052905 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304017.P6188129726260686500

/-! ## A304017.P17305760229682099985

`A007318(C(2, n))*A304019(A052905(n+3))`
-/

namespace A304017.P17305760229682099985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304019 (A052905 (n + 3)).toNat

end

end A304017.P17305760229682099985

/-! ## A304017.P17529977654862163655

`A000041(C(2, n+2))*A304019(A052905(n+3))`
-/

namespace A304017.P17529977654862163655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A304019 (A052905 (n + 3)).toNat

end

end A304017.P17529977654862163655

/-! ## A304017.P15933926090019495224

`A000108(C(2, n+2))*A304019(A052905(n+3))`
-/

namespace A304017.P15933926090019495224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A304019 (A052905 (n + 3)).toNat

end

end A304017.P15933926090019495224

/-!
# A304018: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304018, there is no canonical definition to state claims against.
-/

/-! ## A304018.P9267522010586665115

`A304019(A374008(n+1))`
-/

namespace A304018.P9267522010586665115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A374008 (n + 1)).toNat

end

end A304018.P9267522010586665115

/-! ## A304018.P9909057672668858233

`A304019(eq[11, A066657(n)])`
-/

namespace A304018.P9909057672668858233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304018.P9909057672668858233

/-! ## A304018.P1412457426626225555

`A304019(A166136(n+5)+1)`
-/

namespace A304018.P1412457426626225555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A166136 (n + 5) + 1).toNat

end

end A304018.P1412457426626225555

/-! ## A304018.P6366366881409411949

`A304019(A000124(n+6)+6)`
-/

namespace A304018.P6366366881409411949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A000124 (n + 6) + 6).toNat

end

end A304018.P6366366881409411949

/-! ## A304018.P11217956566187390134

`A304019(A000096(n+5)+8)`
-/

namespace A304018.P11217956566187390134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A000096 (n + 5) + 8).toNat

end

end A304018.P11217956566187390134

/-!
# A304019: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304019, there is no canonical definition to state claims against.
-/

/-! ## A304019.P2388362640147600087

`A305367(n+1)-A173636(A174545(n))`
-/

namespace A304019.P2388362640147600087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) - A173636 (A174545 n).toNat

end

end A304019.P2388362640147600087

/-! ## A304019.P626760254683502847

`A305367(n+1)-A184159(A099594(n))²`
-/

namespace A304019.P626760254683502847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) - A184159 (A099594 n).toNat ^ 2

end

end A304019.P626760254683502847

/-! ## A304019.P16366426397206432493

`A305367(n+1)-A065040(A282230(n+1))`
-/

namespace A304019.P16366426397206432493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) - A065040 (A282230 (n + 1)).toNat

end

end A304019.P16366426397206432493

/-! ## A304019.P11830801198698232871

`A305367(n+1)-A280737(A301784(n+1))²`
-/

namespace A304019.P11830801198698232871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) - A280737 (A301784 (n + 1)).toNat ^ 2

end

end A304019.P11830801198698232871

/-! ## A304019.P12943231712149650297

`A305367(n+1)-A316717(A316576(n+1))²`
-/

namespace A304019.P12943231712149650297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305367 (n + 1) - A316717 (A316576 (n + 1)).toNat ^ 2

end

end A304019.P12943231712149650297

/-!
# A304021: Number of partitions of n into at most 1 copy of 1^3, 2 copies of 2^3, 3 copies of 3^3, ... .

The programs for A304021, there is no canonical definition to state claims against.
-/

/-! ## A304021.P6355208859394160581

`A181000(∑{p}[A000433(n+6)-A000433(n), #])`
-/

namespace A304021.P6355208859394160581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 (n + 6) - A000433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181000 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A304021.P6355208859394160581

/-! ## A304021.P10246203355984318178

`A123272(A000433(n+6)-A000433(n))`
-/

namespace A304021.P10246203355984318178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123272 (A000433 (n + 6) - A000433 n).toNat

end

end A304021.P10246203355984318178

/-! ## A304021.P13525144125010075434

`A010054((A000433(n+6)-A000433(n))²)`
-/

namespace A304021.P13525144125010075434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A000433 (n + 6) - A000433 n) ^ 2).toNat

end

end A304021.P13525144125010075434

/-! ## A304021.P12431943418162827646

`A304569((A000433(n+6)-A000433(n))²)`
-/

namespace A304021.P12431943418162827646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304569 ((A000433 (n + 6) - A000433 n) ^ 2).toNat

end

end A304021.P12431943418162827646

/-! ## A304021.P13972670162249437473

`A016346(A000433(n+6)-A000433(n)-6)`
-/

namespace A304021.P13972670162249437473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 (A000433 (n + 6) - A000433 n - 6).toNat

end

end A304021.P13972670162249437473

/-! ## A304021.P17671243534519215122

`A023800(A000433(n+6)-A000433(n))%2`
-/

namespace A304021.P17671243534519215122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023800 (A000433 (n + 6) - A000433 n).toNat) 2

end

end A304021.P17671243534519215122

/-! ## A304021.P9370194144192365004

`val(A000045(A000433(n+6)-A000433(n)), 4)`
-/

namespace A304021.P9370194144192365004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000045 (A000433 (n + 6) - A000433 n).toNat).toNat 4

end

end A304021.P9370194144192365004

/-!
# A304023: a(n) is the smallest integer with n digits in base 3/2 expressed in base 3/2.

The programs for A304023, there is no canonical definition to state claims against.
-/

/-! ## A304023.P17078825059357509335

`and(-2, A024629(A070885(n+1)))`
-/

namespace A304023.P17078825059357509335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A024629 (A070885 (n + 1)).toNat)

end

end A304023.P17078825059357509335

/-! ## A304023.P4844266689457440934

`A024629(A070885(n+1)-floor(acot(n)))`
-/

namespace A304023.P4844266689457440934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A070885 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A304023.P4844266689457440934

/-! ## A304023.P3310258330481472065

`A024629(A070885(n+1)%(8*10^n-7))`
-/

namespace A304023.P3310258330481472065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (Int.tmod (A070885 (n + 1)) ((8 * 10 ^ n : ℤ) - 7)).toNat

end

end A304023.P3310258330481472065

/-! ## A304023.P17546962683069442290

`A024629(A305498(n+1)-A304273(n+1))`
-/

namespace A304023.P17546962683069442290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A305498 (n + 1) - A304273 (n + 1)).toNat

end

end A304023.P17546962683069442290

/-! ## A304023.P11696629220276498237

`A024629(A070885(n+2)-A081848(n+1))`
-/

namespace A304023.P11696629220276498237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A070885 (n + 2) - A081848 (n + 1)).toNat

end

end A304023.P11696629220276498237

/-!
# A304024: a(n) is the largest integer with n digits in base 3/2.

The programs for A304024, there is no canonical definition to state claims against.
-/

/-! ## A304024.P13541438021247429169

`A024629(A304025(n+1))`
-/

namespace A304024.P13541438021247429169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A304025 (n + 1)).toNat

end

end A304024.P13541438021247429169

/-! ## A304024.P14887035843189296240

`A024629(A156622(n+1)+1)`
-/

namespace A304024.P14887035843189296240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A156622 (n + 1) + 1).toNat

end

end A304024.P14887035843189296240

/-! ## A304024.P2541620735046515051

`A024629(A070885(n+2)-1)`
-/

namespace A304024.P2541620735046515051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (A070885 (n + 2) - 1).toNat

end

end A304024.P2541620735046515051

/-! ## A304024.P377432087376803789

`A024629(∑[A081848(n+1)]-1)`
-/

namespace A304024.P377432087376803789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A304024.P377432087376803789

/-! ## A304024.P10161716339801179203

`A304272(n+1)+A304272(n+1)%2`
-/

namespace A304024.P10161716339801179203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304272 (n + 1) + Int.tmod (A304272 (n + 1)) 2

end

end A304024.P10161716339801179203

/-!
# A304025: a(n) is the largest integer that can be written with n digits in base 3/2.

The programs for A304025, the canonical program `A304025.P13543319459585861266` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304025 has offset 1).

The definition of A304025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304025.P13543319459585861266

`A070885(n+2)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304025

/-- `A070885(n+2)-1` -/
def P13543319459585861266.Spec : Prop :=
  ∀ n, P13543319459585861266.a n = A304025 (n + 1)

theorem P13543319459585861266.correct : P13543319459585861266.Spec := by
  intro n
  simp only [A304025, Nat.add_sub_cancel]

end A304025

/-! ## A304025.P7027446572217141711

`3*floor(a(n-1)/2)+2` with `a(0)=2`
-/

namespace A304025.P7027446572217141711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * ⌊(a (n - 1) : ℚ) / 2⌋ + 2

end

end A304025.P7027446572217141711

namespace A304025

/-- `3*floor(a(n-1)/2)+2` -/
def P7027446572217141711.Spec : Prop :=
  ∀ n, P7027446572217141711.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P12981828357408379088

`lcm(3, floor(a(n-1)/2))+2` with `a(0)=2`
-/

namespace A304025.P12981828357408379088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm 3 ⌊(a (n - 1) : ℚ) / 2⌋ + 2

end

end A304025.P12981828357408379088

namespace A304025

/-- `lcm(3, floor(a(n-1)/2))+2` -/
def P12981828357408379088.Spec : Prop :=
  ∀ n, (P12981828357408379088.a n : ℤ) = A304025 (n + 1)

end A304025

/-! ## A304025.P17829449978330594196

`3*ceil((a(n-1)+1)/2)-1` with `a(0)=2`
-/

namespace A304025.P17829449978330594196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * ⌈(a (n - 1) + 1 : ℚ) / 2⌉ - 1

end

end A304025.P17829449978330594196

namespace A304025

/-- `3*ceil((a(n-1)+1)/2)-1` -/
def P17829449978330594196.Spec : Prop :=
  ∀ n, P17829449978330594196.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P16812357600856497281

`2-3*floor((1-a(n-1))/2)` with `a(0)=2`
-/

namespace A304025.P16812357600856497281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - 3 * ⌊(1 - a (n - 1) : ℚ) / 2⌋

end

end A304025.P16812357600856497281

namespace A304025

/-- `2-3*floor((1-a(n-1))/2)` -/
def P16812357600856497281.Spec : Prop :=
  ∀ n, P16812357600856497281.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P12886125429022491403

`floor(gcd(2, a(n-1))+a(n-1)+a(n-1)/2)` with `a(0)=2`
-/

namespace A304025.P12886125429022491403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Int.gcd 2 (a (n - 1)) : ℚ) + ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / 2)⌋

end

end A304025.P12886125429022491403

namespace A304025

/-- `floor(gcd(2, a(n-1))+a(n-1)+a(n-1)/2)` -/
def P12886125429022491403.Spec : Prop :=
  ∀ n, P12886125429022491403.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P16462795331295718840

`3*A006999(n)+2`
-/

namespace A304025.P16462795331295718840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006999 n + 2

end

end A304025.P16462795331295718840

namespace A304025

/-- `3*A006999(n)+2` -/
def P16462795331295718840.Spec : Prop :=
  ∀ n, P16462795331295718840.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P7726785478075777255

`∑[A081848(n+1)]-1`
-/

namespace A304025.P7726785478075777255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A304025.P7726785478075777255

namespace A304025

/-- `∑[A081848(n+1)]-1` -/
def P7726785478075777255.Spec : Prop :=
  ∀ n, P7726785478075777255.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P15253096430936171271

`3*A061419(n+1)-1`
-/

namespace A304025.P15253096430936171271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061419 (n + 1) - 1

end

end A304025.P15253096430936171271

namespace A304025

/-- `3*A061419(n+1)-1` -/
def P15253096430936171271.Spec : Prop :=
  ∀ n, P15253096430936171271.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P14127868601770494063

`3*A061418(n+1)-4`
-/

namespace A304025.P14127868601770494063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A061418 (n + 1) - 4

end

end A304025.P14127868601770494063

namespace A304025

/-- `3*A061418(n+1)-4` -/
def P14127868601770494063.Spec : Prop :=
  ∀ n, P14127868601770494063.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P2733099711802523809

`A305498(n+1)+A006999(n)`
-/

namespace A304025.P2733099711802523809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 1) + A006999 n

end

end A304025.P2733099711802523809

namespace A304025

/-- `A305498(n+1)+A006999(n)` -/
def P2733099711802523809.Spec : Prop :=
  ∀ n, P2733099711802523809.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P1591851359902055426

`A356556(n+1)+A305497(n+1)`
-/

namespace A304025.P1591851359902055426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356556 (n + 1) + A305497 (n + 1)

end

end A304025.P1591851359902055426

namespace A304025

/-- `A356556(n+1)+A305497(n+1)` -/
def P1591851359902055426.Spec : Prop :=
  ∀ n, P1591851359902055426.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P4567898576341751581

`∑[A073941(n+1)*A157532(n+1)]`
-/

namespace A304025.P4567898576341751581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1) * A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304025.P4567898576341751581

namespace A304025

/-- `∑[A073941(n+1)*A157532(n+1)]` -/
def P4567898576341751581.Spec : Prop :=
  ∀ n, P4567898576341751581.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P10064754573542766945

`A061418(n+1)+A305498(n+1)-2`
-/

namespace A304025.P10064754573542766945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A305498 (n + 1) - 2)

end

end A304025.P10064754573542766945

namespace A304025

/-- `A061418(n+1)+A305498(n+1)-2` -/
def P10064754573542766945.Spec : Prop :=
  ∀ n, P10064754573542766945.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P2762515363460015602

`A061418(n+1)+A006999(n)+A006999(n)`
-/

namespace A304025.P2762515363460015602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) + (A006999 n + A006999 n)

end

end A304025.P2762515363460015602

namespace A304025

/-- `A061418(n+1)+A006999(n)+A006999(n)` -/
def P2762515363460015602.Spec : Prop :=
  ∀ n, P2762515363460015602.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P5676039096597045157

`A061419(n+1)+A061419(n+1)+A006999(n)`
-/

namespace A304025.P5676039096597045157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1) + (A061419 (n + 1) + A006999 n)

end

end A304025.P5676039096597045157

namespace A304025

/-- `A061419(n+1)+A061419(n+1)+A006999(n)` -/
def P5676039096597045157.Spec : Prop :=
  ∀ n, P5676039096597045157.a n = A304025 (n + 1)

end A304025

/-! ## A304025.P11773178171253183697

`(3*or(1, a(n-1))+1)/2` with `a(0)=2`
-/

namespace A304025.P11773178171253183697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (3 * Int.lor 1 (SequenceMachineLib.roundAway (a (n - 1))) + 1 : ℚ) / 2

end

end A304025.P11773178171253183697

namespace A304025

/-- `(3*or(1, a(n-1))+1)/2` -/
def P11773178171253183697.Spec : Prop :=
  ∀ n, P11773178171253183697.a n = (A304025 (n + 1) : ℚ)

end A304025

/-! ## A304025.P9653721522928346350

`A305498(n+2)-A304274(n+1)`
-/

namespace A304025.P9653721522928346350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 2) - A304274 (n + 1)

end

end A304025.P9653721522928346350

namespace A304025

/-- `A305498(n+2)-A304274(n+1)` -/
def P9653721522928346350.Spec : Prop :=
  ∀ n, P9653721522928346350.a n = A304025 (n + 1)

end A304025

/-!
# A304026: Starting from (0, n), the minimum number of applications of the map (x, y) -> (x + 1, 2*y) or (x, y) -> (2*x, y + 1) required to make both numbers in the pair equal.

The programs for A304026, there is no canonical definition to state claims against.
-/

/-! ## A304026.P11462251453585863050

`A304027(∑[n])`
-/

namespace A304026.P11462251453585863050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304026.P11462251453585863050

/-! ## A304026.P10020561357075048478

`A304027(A000217(n))%17`
-/

namespace A304026.P10020561357075048478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304027 (A000217 n).toNat) 17

end

end A304026.P10020561357075048478

/-! ## A304026.P5130253732449038443

`A304027(C(n+1, 2))%A011531(n+1)`
-/

namespace A304026.P5130253732449038443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304027 (Nat.choose (n + 1) 2)) (A011531 (n + 1))

end

end A304026.P5130253732449038443

/-! ## A304026.P1140754765080953144

`A304027((n²+n)/2)%A011531(n+1)`
-/

namespace A304026.P1140754765080953144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304027 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A011531 (n + 1))

end

end A304026.P1140754765080953144

/-! ## A304026.P3235870782446667292

`A064284(n)*A304027(A000217(n))`
-/

namespace A304026.P3235870782446667292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064284 n * A304027 (A000217 n).toNat

end

end A304026.P3235870782446667292

/-!
# A304028: Numbers k such that A033461(k) is divisible by k.

The programs for A304028, there is no canonical definition to state claims against.
-/

/-! ## A304028.P3794142871292183377

`eq[n, gcd(n, A033461(n))]`
-/

namespace A304028.P3794142871292183377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033461 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304028.P3794142871292183377

/-! ## A304028.P4363698321195297030

`lt[C(A282866(n), 2), n]`
-/

namespace A304028.P4363698321195297030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A282866 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304028.P4363698321195297030

/-! ## A304028.P17555537458264757309

`lt[A285244(n), atan(n+1)]`
-/

namespace A304028.P17555537458264757309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A304028.P17555537458264757309

/-! ## A304028.P2869819774503882120

`lt[A331844(n), acot(n-1)]`
-/

namespace A304028.P2869819774503882120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A304028.P2869819774503882120

/-! ## A304028.P5454825119138185216

`eq[A033461(n), A033683(n)]`
-/

namespace A304028.P5454825119138185216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304028.P5454825119138185216

/-!
# A304030: a(n) is the number of steps at which the Collatz ('3x+1') trajectory of n crosses its initial value, or -1 if the number of crossings is infinite.

The programs for A304030, there is no canonical definition to state claims against.
-/

/-! ## A304030.P7328915146958258284

`A111775(A305420(n+1)+A290234(n))`
-/

namespace A304030.P7328915146958258284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (A305420 (n + 1) + A290234 n).toNat

end

end A304030.P7328915146958258284

/-! ## A304030.P13753157692761144678

`A185544(2*A282216(n))%A008904(A117707(n+1))`
-/

namespace A304030.P13753157692761144678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185544 (2 * A282216 n).toNat) (A008904 (A117707 (n + 1)).toNat)

end

end A304030.P13753157692761144678

/-! ## A304030.P3871774062496775974

`(n+5)%A000005(A036908(n+1))`
-/

namespace A304030.P3871774062496775974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 5 : ℤ) (A000005 (A036908 (n + 1)).toNat)

end

end A304030.P3871774062496775974

/-!
# A304033: Partial sums of A303981.

The programs for A304033, there is no canonical definition to state claims against.
-/

/-! ## A304033.P15577163979572251230

`∑[A303981(n)]`
-/

namespace A304033.P15577163979572251230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304033.P15577163979572251230

/-! ## A304033.P2299864709626102221

`A303981(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304033.P2299864709626102221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303981 n + a (A023443 n).toNat

end

end A304033.P2299864709626102221

/-! ## A304033.P1039905558336408744

`A334526(∑[A230865(n)])`
-/

namespace A304033.P1039905558336408744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304033.P1039905558336408744

/-!
# A304034: Number of ways to write n as p + 2^k + (1+(n mod 2))*3^m with p prime, where k and m are positive integers with 2^k + (1+(n mod 2))*3^m squarefree.

The programs for A304034, there is no canonical definition to state claims against.
-/

/-! ## A304034.P15306915889013643851

`A298596(A004277(n+3))%A039924(A035584(3*n+1))`
-/

namespace A304034.P15306915889013643851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298596 (A004277 (n + 3)).toNat) (A039924 (A035584 (3 * n + 1)).toNat)

end

end A304034.P15306915889013643851

/-! ## A304034.P13957296257750687266

`A004469(A016910(n))%A023193(n+1)`
-/

namespace A304034.P13957296257750687266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004469 (A016910 n).toNat) (A023193 (n + 1))

end

end A304034.P13957296257750687266

/-! ## A304034.P6010567049397661751

`A037802(abs(∑[2-2*a(n-1)]-1))` with `a(0)=-4, a(1)=-5, a(2)=2`
-/

namespace A304034.P6010567049397661751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4, -5, 2] fun n f1 =>
  2 - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 |∑ j ∈ Finset.range (n + 1), f1 j - 1|.toNat

end

end A304034.P6010567049397661751

/-! ## A304034.P604545530475458470

`A000120(A069106(n+1)%A147418(n+1))`
-/

namespace A304034.P604545530475458470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A069106 (n + 1)) (A147418 (n + 1))).toNat

end

end A304034.P604545530475458470

/-! ## A304034.P18417071626451137090

`A178367(A161206(3*n+4))%A171618(n+1)`
-/

namespace A304034.P18417071626451137090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178367 (A161206 (3 * n + 4)).toNat) (A171618 (n + 1))

end

end A304034.P18417071626451137090

/-!
# A304035: a(n) is the number of lattice points inside a square bounded by the lines x=-n/sqrt(2), x=n/sqrt(2), y=-n/sqrt(2), y=n/sqrt(2).

The programs for A304035, there is no canonical definition to state claims against.
-/

/-! ## A304035.P4751420290079034898

`A051132(n+1)-A303642(n+1)`
-/

namespace A304035.P4751420290079034898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A303642 (n + 1)

end

end A304035.P4751420290079034898

/-! ## A304035.P6298850842058053997

`or(1, floor((n+1)*sqrt(2)))²`
-/

namespace A304035.P6298850842058053997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

end

end A304035.P6298850842058053997

/-! ## A304035.P13168368718359051071

`or(1, floor((n+1)*sqrt(2)))^2`
-/

namespace A304035.P13168368718359051071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

end

end A304035.P13168368718359051071

/-! ## A304035.P2520109157892639448

`(2*floor((n+1)/sqrt(2))+1)²`
-/

namespace A304035.P2520109157892639448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1) ^ 2

end

end A304035.P2520109157892639448

/-! ## A304035.P16046350240268020485

`A001650(∑[or(1, n)])^2`
-/

namespace A304035.P16046350240268020485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A304035.P16046350240268020485

/-! ## A304035.P16347514915276945383

`2*A235337(n+1)-1`
-/

namespace A304035.P16347514915276945383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235337 (n + 1) - 1

end

end A304035.P16347514915276945383

/-! ## A304035.P1385607145292911881

`(1-A099188(n+1))^2`
-/

namespace A304035.P1385607145292911881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A099188 (n + 1)) ^ 2

end

end A304035.P1385607145292911881

/-! ## A304035.P10743862072554625043

`(A188376(n+1)-n)^2`
-/

namespace A304035.P10743862072554625043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188376 (n + 1) - (n : ℤ)) ^ 2

end

end A304035.P10743862072554625043

/-! ## A304035.P5810148680962501559

`(2*A049472(n+1)+1)^2`
-/

namespace A304035.P5810148680962501559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A049472 (n + 1) + 1) ^ 2

end

end A304035.P5810148680962501559

/-! ## A304035.P6131647098109972508

`A081346(2*floor((n+1)/sqrt(2)))`
-/

namespace A304035.P6131647098109972508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 (2 * ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋).toNat

end

end A304035.P6131647098109972508

/-!
# A304036: Number of partitions of n into at most 2 copies of 1!, 3 copies of 2!, 4 copies of 3!, ... .

The programs for A304036, there is no canonical definition to state claims against.
-/

/-! ## A304036.P18301094041358582280

`A069010(A354785(n+1)+A088911(n))`
-/

namespace A304036.P18301094041358582280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A354785 (n + 1) + A088911 n).toNat

end

end A304036.P18301094041358582280

/-! ## A304036.P17638542322491425892

`A205510(4^A072681(n+2))`
-/

namespace A304036.P17638542322491425892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205510 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A072681 (n + 2) : ℤ))).toNat

end

end A304036.P17638542322491425892

/-! ## A304036.P15477884758013869449

`A046951(A001844(A072681(n+2))²)`
-/

namespace A304036.P15477884758013869449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A001844 (A072681 (n + 2)).toNat ^ 2).toNat

end

end A304036.P15477884758013869449

/-! ## A304036.P14463203731671602025

`A060502((2^A020639(n+2))^A072680(n+2))`
-/

namespace A304036.P14463203731671602025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (SequenceMachineLib.roundAway (((2 : ℚ) ^ (A020639 (n + 2) : ℤ)) ^ (A072680 (n + 2) : ℤ))).toNat

end

end A304036.P14463203731671602025

/-! ## A304036.P2847055121317500912

`A353932(3^A072681(n+2))`
-/

namespace A304036.P2847055121317500912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A072681 (n + 2) : ℤ))).toNat

end

end A304036.P2847055121317500912

/-!
# A304037: If n = Product (p_j^k_j) then a(n) = Sum (pi(p_j)^k_j), where pi() = A000720.

The programs for A304037, there is no canonical definition to state claims against.
-/

/-! ## A304037.P1382865569698383924

`A221396(A199898(A085731(n+1)))+A066328(n+1)`
-/

namespace A304037.P1382865569698383924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221396 (A199898 (A085731 (n + 1)).toNat).toNat + A066328 (n + 1)

end

end A304037.P1382865569698383924

/-! ## A304037.P11094684664109557851

`A056239(((n+1)/ceil(xor(n, n+1)/4))%A246023(n))`
-/

namespace A304037.P11094684664109557851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))) (A246023 n)).toNat

end

end A304037.P11094684664109557851

/-! ## A304037.P14708896908552044341

`A056239((n+1)/ceil(xor(n, n+1)/4))%A096930(n+3)`
-/

namespace A304037.P14708896908552044341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat) (A096930 (n + 3))

end

end A304037.P14708896908552044341

/-! ## A304037.P11474928550754657654

`A056239(A259445(n+1))%A192402(n)`
-/

namespace A304037.P11474928550754657654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A259445 (n + 1)).toNat) (A192402 n)

end

end A304037.P11474928550754657654

/-! ## A304037.P7416015420405981457

`A325166(A023201(n+1)*A102631(n+1))`
-/

namespace A304037.P7416015420405981457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325166 (A023201 (n + 1) * A102631 (n + 1)).toNat

end

end A304037.P7416015420405981457

/-!
# A304038: Irregular triangle T(n,k) read by rows: first row is 0, n-th row (n > 1) lists indices of distinct primes dividing n.

The programs for A304038, there is no canonical definition to state claims against.
-/

/-! ## A304038.P15069401805350793848

`A000720(A027748(n+1))`
-/

namespace A304038.P15069401805350793848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A027748 (n + 1)).toNat

end

end A304038.P15069401805350793848

/-! ## A304038.P3536143158933336927

`A055396(A141809(n+1))`
-/

namespace A304038.P3536143158933336927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A141809 (n + 1)).toNat

end

end A304038.P3536143158933336927

/-! ## A304038.P7922054421210237208

`A000720(A035306(Δ[n²]))`
-/

namespace A304038.P7922054421210237208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A035306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A304038.P7922054421210237208

/-! ## A304038.P6714236661732818447

`A055396(A027748(n+1)²)`
-/

namespace A304038.P6714236661732818447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P6714236661732818447

/-! ## A304038.P1498802247651912299

`A056811(A027748(n+1)²)`
-/

namespace A304038.P1498802247651912299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P1498802247651912299

/-! ## A304038.P5915627675015813354

`A061395(A027748(n+1)²)`
-/

namespace A304038.P5915627675015813354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P5915627675015813354

/-! ## A304038.P17045483078493277790

`A066328(A027748(n+1)²)`
-/

namespace A304038.P17045483078493277790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P17045483078493277790

/-! ## A304038.P12932275163990881182

`A241919(A027748(n+1)²)`
-/

namespace A304038.P12932275163990881182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P12932275163990881182

/-! ## A304038.P14067893616159562733

`A289508(A027748(n+1)²)`
-/

namespace A304038.P14067893616159562733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P14067893616159562733

/-! ## A304038.P16551511779753161459

`A346700(A027748(n+1)²)`
-/

namespace A304038.P16551511779753161459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A027748 (n + 1) ^ 2).toNat

end

end A304038.P16551511779753161459

/-! ## A304038.P13568594921210187116

`A241919(A141809(n+1)²)`
-/

namespace A304038.P13568594921210187116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (A141809 (n + 1) ^ 2).toNat

end

end A304038.P13568594921210187116

/-! ## A304038.P13883134262449000717

`A286469(A141809(n+1)²)`
-/

namespace A304038.P13883134262449000717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (A141809 (n + 1) ^ 2).toNat

end

end A304038.P13883134262449000717

/-! ## A304038.P14135699038810872104

`A286471(2*A027748(n+1))`
-/

namespace A304038.P14135699038810872104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * A027748 (n + 1)).toNat

end

end A304038.P14135699038810872104

/-! ## A304038.P13830131515851954716

`A049084(A027748(C(n+1, n)))`
-/

namespace A304038.P13830131515851954716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A027748 (Nat.choose (n + 1) n)).toNat

end

end A304038.P13830131515851954716

/-! ## A304038.P4161397283440630238

`A049084(A027748(abs(xor(n, -1))))`
-/

namespace A304038.P4161397283440630238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A027748 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A304038.P4161397283440630238

/-! ## A304038.P6391405499910978999

`∑{d}[A027748(n+1), A049084(#)]`
-/

namespace A304038.P6391405499910978999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A304038.P6391405499910978999

/-! ## A304038.P4186294501884445900

`∑{d}[A027748(n+1), A055396(#)]`
-/

namespace A304038.P4186294501884445900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A304038.P4186294501884445900

/-! ## A304038.P1972220484040622589

`∑{d}[A027748(n+1), A061395(#)]`
-/

namespace A304038.P1972220484040622589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A304038.P1972220484040622589

/-! ## A304038.P11593840829255523424

`∑{d}[A027748(n+1), A241917(#)]`
-/

namespace A304038.P11593840829255523424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A241917 d

end

end A304038.P11593840829255523424

/-! ## A304038.P8933440344682328562

`A055396(∏{d}[A027748(n+1), #])`
-/

namespace A304038.P8933440344682328562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A304038.P8933440344682328562

/-!
# A304039: Least number k such that A304036(k) = n.

The programs for A304039, there is no canonical definition to state claims against.
-/

/-! ## A304039.P15919375079418195220

`record[A336551(A068913(n)+1)]`
-/

namespace A304039.P15919375079418195220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A068913 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304039.P15919375079418195220

/-! ## A304039.P7633006726313104055

`A265548(A265534(n²)+n)`
-/

namespace A304039.P7633006726313104055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265548 (A265534 (n ^ 2) + (n : ℤ)).toNat

end

end A304039.P7633006726313104055

/-!
# A304040: Numbers k such that A026007(k) is divisible by k.

The programs for A304040, there is no canonical definition to state claims against.
-/

/-! ## A304040.P16970425812431240505

`eq[n, gcd(n, A026007(n))]`
-/

namespace A304040.P16970425812431240505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A026007 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304040.P16970425812431240505

/-! ## A304040.P5876761105946584525

`eq[A066657(n), A103517(A025920(n))]`
-/

namespace A304040.P5876761105946584525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A025920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304040.P5876761105946584525

/-!
# A304042: Triangle read by rows: T(n,k) is the denominator of R(n,k) defined implicitly by the identity Sum_{i=0..l-1} Sum_{j=0..m} R(m,j)*(l-i)^j*i^j = l^(2*m+1) holding for all l,m >= 0.

The programs for A304042, there is no canonical definition to state claims against.
-/

/-! ## A304042.P4537172144916962849

`gcd(A250120(A377131(n+1)), A286605(n+1))`
-/

namespace A304042.P4537172144916962849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A250120 (A377131 (n + 1)).toNat) (A286605 (n + 1))

end

end A304042.P4537172144916962849

/-! ## A304042.P9865814573389188162

`A165477(gcd(A080054(n+2), A319137(n+1)))`
-/

namespace A304042.P9865814573389188162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (Int.gcd (A080054 (n + 2)) (A319137 (n + 1)))

end

end A304042.P9865814573389188162

/-! ## A304042.P15419595027812434387

`gcd(5, A147236(A141256(n)))`
-/

namespace A304042.P15419595027812434387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A147236 (A141256 n).toNat)

end

end A304042.P15419595027812434387

/-! ## A304042.P18142140171869398261

`A250120(C(A256140(n+2), 64))`
-/

namespace A304042.P18142140171869398261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (Nat.choose (A256140 (n + 2)).toNat 64)

end

end A304042.P18142140171869398261

/-! ## A304042.P8938725161318288572

`A059592(A004009(n)%A360005(n+2))`
-/

namespace A304042.P8938725161318288572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (Int.tmod (A004009 n) (A360005 (n + 2))).toNat

end

end A304042.P8938725161318288572

/-! ## A304042.P789253046459073979

`A100953(gcd(A244609(n+3), A319094(n)))`
-/

namespace A304042.P789253046459073979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100953 (Int.gcd (A244609 (n + 3)) (A319094 n))

end

end A304042.P789253046459073979

/-! ## A304042.P3759153405003821775

`gcd(A283806(A352286(n)), A360678(n+4))`
-/

namespace A304042.P3759153405003821775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283806 (A352286 n).toNat) (A360678 (n + 4))

end

end A304042.P3759153405003821775

/-! ## A304042.P18053261164525986967

`gcd(A328070(n+1), A328569(A175961(n+1)))`
-/

namespace A304042.P18053261164525986967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328070 (n + 1)) (A328569 (A175961 (n + 1)).toNat)

end

end A304042.P18053261164525986967

/-! ## A304042.P3456958784955587456

`gcd(A106402(A360005(n+2)), A227523(n+1))`
-/

namespace A304042.P3456958784955587456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106402 (A360005 (n + 2)).toNat) (A227523 (n + 1))

end

end A304042.P3456958784955587456

/-! ## A304042.P3761320259925093359

`gcd(A064194(A086174(n+1)), A346697(n+4))`
-/

namespace A304042.P3761320259925093359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064194 (A086174 (n + 1)).toNat) (A346697 (n + 4))

end

end A304042.P3761320259925093359

/-!
# A304045: Numbers k such that A000712(k) is divisible by k.

The programs for A304045, there is no canonical definition to state claims against.
-/

/-! ## A304045.P10759096455477217641

`A336470(∑[A199248(n+1)]²)`
-/

namespace A304045.P10759096455477217641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336470 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A304045.P10759096455477217641

/-!
# A304048: Numbers k such that A022567(k) is divisible by k.

The programs for A304048, there is no canonical definition to state claims against.
-/

/-! ## A304048.P5640943461896105857

`eq[n, gcd(n, A022567(n))]`
-/

namespace A304048.P5640943461896105857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A022567 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304048.P5640943461896105857

/-! ## A304048.P4350359395078854569

`eq[A192096(n)/2, lcm(n, A192096(n)/2)]`
-/

namespace A304048.P4350359395078854569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192096 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((A192096 n : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A304048.P4350359395078854569

/-! ## A304048.P534409935628783801

`lt[A022567(n)%A233583(n+1), 1]`
-/

namespace A304048.P534409935628783801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022567 n) (A233583 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A304048.P534409935628783801

/-!
# A304049: Numbers k such that A027998(k) is divisible by k.

The programs for A304049, there is no canonical definition to state claims against.
-/

/-! ## A304049.P14296083321758189211

`xor(n, A007897(∑{digits}[n, #!*C(10, #)]))`
-/

namespace A304049.P14296083321758189211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A007897 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x * Nat.choose 10 x).sum)

end

end A304049.P14296083321758189211

/-!
# A304051: Number of n X n 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304051, there is no canonical definition to state claims against.
-/

/-! ## A304051.P2857795349464631176

`A304058(∑[4*n]+1)`
-/

namespace A304051.P2857795349464631176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304051.P2857795349464631176

/-! ## A304051.P5651971416272381600

`and(-1, A304058(A001844(n)))`
-/

namespace A304051.P5651971416272381600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304058 (A001844 n).toNat)

end

end A304051.P5651971416272381600

/-! ## A304051.P16858127856731976957

`record[A304058(A272267(n+1))]`
-/

namespace A304051.P16858127856731976957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304051.P16858127856731976957

/-! ## A304051.P17101187845880186898

`A304058(A001844(n))+A006927(n)`
-/

namespace A304051.P17101187845880186898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A001844 n).toNat + A006927 n

end

end A304051.P17101187845880186898

/-! ## A304051.P5927211961782062397

`A304058(A001844(n))+A025469(n)`
-/

namespace A304051.P5927211961782062397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A001844 n).toNat + A025469 n

end

end A304051.P5927211961782062397

/-!
# A304052: Number of nX2 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304052, the canonical program `A304052.P8303337090333737456` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304052 has offset 1).

The definition of A304052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304052.P8303337090333737456

`a(n-1)+3*a(n-2)+8*a(n-3)-4*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=10, a(4)=51, a(5)=165`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A304052

/-- `a(n-1)+3*a(n-2)+8*a(n-3)-4*a(n-4)-16*a(n-5)` -/
def P8303337090333737456.Spec : Prop :=
  ∀ n, P8303337090333737456.a n = A304052 (n + 1)

theorem P8303337090333737456.correct : P8303337090333737456.Spec := by
  intro n
  simp only [A304052, Nat.add_sub_cancel]

end A304052

/-! ## A304052.P8272412255878883142

`A304058(∑[n+1]+2)`
-/

namespace A304052.P8272412255878883142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304052.P8272412255878883142

namespace A304052

/-- `A304058(∑[n+1]+2)` -/
def P8272412255878883142.Spec : Prop :=
  ∀ n, P8272412255878883142.a n = A304052 (n + 1)

end A304052

/-! ## A304052.P2781086991268185519

`A305452(∑[n+1]+2)`
-/

namespace A304052.P2781086991268185519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A304052.P2781086991268185519

namespace A304052

/-- `A305452(∑[n+1]+2)` -/
def P2781086991268185519.Spec : Prop :=
  ∀ n, P2781086991268185519.a n = A304052 (n + 1)

end A304052

/-! ## A304052.P2603291568602757440

`A305452(A133263(n+1))+char[22]`
-/

namespace A304052.P2603291568602757440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304052.P2603291568602757440

namespace A304052

/-- `A305452(A133263(n+1))+char[22]` -/
def P2603291568602757440.Spec : Prop :=
  ∀ n, P2603291568602757440.a n = A304052 (n + 1)

end A304052

/-! ## A304052.P509256839422218415

`A304058(A133263(n+1))%A304015(n+1)`
-/

namespace A304052.P509256839422218415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304058 (A133263 (n + 1)).toNat) (A304015 (n + 1))

end

end A304052.P509256839422218415

namespace A304052

/-- `A304058(A133263(n+1))%A304015(n+1)` -/
def P509256839422218415.Spec : Prop :=
  ∀ n, P509256839422218415.a n = A304052 (n + 1)

end A304052

/-!
# A304053: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304053, there is no canonical definition to state claims against.
-/

/-! ## A304053.P12438615565675710616

`A304058(∑[n+2]+4)`
-/

namespace A304053.P12438615565675710616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304053.P12438615565675710616

/-! ## A304053.P2852308668826842716

`and(-1, A304058(A167614(n+1)))`
-/

namespace A304053.P2852308668826842716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304058 (A167614 (n + 1)).toNat)

end

end A304053.P2852308668826842716

/-! ## A304053.P3934501803770928229

`A304058(A167614(n+1))%A020449(n+1)`
-/

namespace A304053.P3934501803770928229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304058 (A167614 (n + 1)).toNat) (A020449 (n + 1))

end

end A304053.P3934501803770928229

/-! ## A304053.P4628962472934678262

`lcm(A001221(n+2), A304058(A167614(n+1)))`
-/

namespace A304053.P4628962472934678262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A304058 (A167614 (n + 1)).toNat)

end

end A304053.P4628962472934678262

/-! ## A304053.P7763138120407312277

`A007318(C(2, n))*A304058(A167614(n+1))`
-/

namespace A304053.P7763138120407312277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A304058 (A167614 (n + 1)).toNat

end

end A304053.P7763138120407312277

/-!
# A304054: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304054, there is no canonical definition to state claims against.
-/

/-! ## A304054.P16176846111703225675

`A304058(∑[n+3]+7)`
-/

namespace A304054.P16176846111703225675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304054.P16176846111703225675

/-! ## A304054.P7844693837779685492

`A304058(A055999(n)+10)+char[25]`
-/

namespace A304054.P7844693837779685492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304054.P7844693837779685492

/-! ## A304054.P17828953346074956178

`A007318(C(n, 2))*A304058(A055999(n)+10)`
-/

namespace A304054.P17828953346074956178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A304058 (A055999 n + 10).toNat

end

end A304054.P17828953346074956178

/-! ## A304054.P1995106976044403286

`A304058(A055999(n)+10)/A007318(C(2, n))`
-/

namespace A304054.P1995106976044403286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304058 (A055999 n + 10).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A304054.P1995106976044403286

/-! ## A304054.P68185433407083112

`A304058(A055999(n)+10)^A000045(C(n, 64))!`
-/

namespace A304054.P68185433407083112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A055999 n + 10).toNat ^ Nat.factorial (A000045 (Nat.choose n 64)).toNat

end

end A304054.P68185433407083112

/-!
# A304055: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304055, there is no canonical definition to state claims against.
-/

/-! ## A304055.P18241958345770498174

`A304058(∑[n+4]+11)`
-/

namespace A304055.P18241958345770498174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304055.P18241958345770498174

/-! ## A304055.P17404752624544059670

`A304058(A056000(n)+15)+char[20]`
-/

namespace A304055.P17404752624544059670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304055.P17404752624544059670

/-! ## A304055.P12081356112222573402

`or(char[1], A304058(A000096(n+3)+6))`
-/

namespace A304055.P12081356112222573402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304058 (A000096 (n + 3) + 6).toNat)

end

end A304055.P12081356112222573402

/-! ## A304055.P15535309383096854459

`A355432(n+1)+A304058(A374005(n+1))`
-/

namespace A304055.P15535309383096854459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1) + A304058 (A374005 (n + 1)).toNat

end

end A304055.P15535309383096854459

/-! ## A304055.P7809319089079689689

`A304058(A374005(n+1))%A231453(n+1)`
-/

namespace A304055.P7809319089079689689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304058 (A374005 (n + 1)).toNat) (A231453 (n + 1))

end

end A304055.P7809319089079689689

/-!
# A304056: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304056, there is no canonical definition to state claims against.
-/

/-! ## A304056.P2304663702713815494

`A304058(∑[n+5]+16)`
-/

namespace A304056.P2304663702713815494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304056.P2304663702713815494

/-! ## A304056.P1421720573386887659

`abs((-1)^n*A304058(A161680(n+6)+6))`
-/

namespace A304056.P1421720573386887659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A304058 (A161680 (n + 6) + 6).toNat|

end

end A304056.P1421720573386887659

/-! ## A304056.P18098165376896953853

`A304058(A166136(n+4))+A235145(n)`
-/

namespace A304056.P18098165376896953853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A166136 (n + 4)).toNat + A235145 n

end

end A304056.P18098165376896953853

/-! ## A304056.P7801917499099752267

`A304058(A052905(n+3))+A065718(n)`
-/

namespace A304056.P7801917499099752267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A052905 (n + 3)).toNat + A065718 n

end

end A304056.P7801917499099752267

/-! ## A304056.P9990130047718475112

`A304058(A161680(n+6)+6)+A238470(A267217(n+1))`
-/

namespace A304056.P9990130047718475112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A161680 (n + 6) + 6).toNat + A238470 (A267217 (n + 1)).toNat

end

end A304056.P9990130047718475112

/-!
# A304057: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304057, there is no canonical definition to state claims against.
-/

/-! ## A304057.P15161987540108013742

`A304058(A374008(n+1))`
-/

namespace A304057.P15161987540108013742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A374008 (n + 1)).toNat

end

end A304057.P15161987540108013742

/-! ## A304057.P1247964089295545497

`A304058(A056119(n)+28)`
-/

namespace A304057.P1247964089295545497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A056119 n + 28).toNat

end

end A304057.P1247964089295545497

/-! ## A304057.P16419763633305324462

`A304058(eq[11, A066657(n)])`
-/

namespace A304057.P16419763633305324462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304057.P16419763633305324462

/-! ## A304057.P7696143450435807588

`A304058(A166136(n+5)+1)`
-/

namespace A304057.P7696143450435807588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A166136 (n + 5) + 1).toNat

end

end A304057.P7696143450435807588

/-! ## A304057.P9005333042294761617

`A304058(A167499(n+5)+2)`
-/

namespace A304057.P9005333042294761617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304058 (A167499 (n + 5) + 2).toNat

end

end A304057.P9005333042294761617

/-!
# A304058: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304058, there is no canonical definition to state claims against.
-/

/-! ## A304058.P8478627737789711675

`A305452(n+1)-A186034(A022167(n))`
-/

namespace A304058.P8478627737789711675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) - A186034 (A022167 n).toNat

end

end A304058.P8478627737789711675

/-! ## A304058.P11548400979319152361

`A305452(n+1)-A184159(A099594(n))`
-/

namespace A304058.P11548400979319152361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) - A184159 (A099594 n).toNat

end

end A304058.P11548400979319152361

/-! ## A304058.P8440803254757033983

`A305452(n+1)-A173920(A173917(n))`
-/

namespace A304058.P8440803254757033983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) - A173920 (A173917 n).toNat

end

end A304058.P8440803254757033983

/-! ## A304058.P12154453951381702773

`A305452(n+1)+A016389(A027336(n))`
-/

namespace A304058.P12154453951381702773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A016389 (A027336 n).toNat

end

end A304058.P12154453951381702773

/-! ## A304058.P15971765814611928818

`A305452(n+1)+A016389(A176561(n))`
-/

namespace A304058.P15971765814611928818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (n + 1) + A016389 (A176561 n).toNat

end

end A304058.P15971765814611928818

/-!
# A304059: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304059, there is no canonical definition to state claims against.
-/

/-! ## A304059.P9178099383867791539

`A304065(∑[4*n]+1)`
-/

namespace A304059.P9178099383867791539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304059.P9178099383867791539

/-! ## A304059.P10015879805387833037

`A304065(A001844(n))+A098728(n)`
-/

namespace A304059.P10015879805387833037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A001844 n).toNat + A098728 n

end

end A304059.P10015879805387833037

/-! ## A304059.P7180042433999116000

`A136400(n)*A304065(A001844(n))`
-/

namespace A304059.P7180042433999116000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 n * A304065 (A001844 n).toNat

end

end A304059.P7180042433999116000

/-! ## A304059.P9464921928356154122

`A178489(n)*A304065(A001844(n))`
-/

namespace A304059.P9464921928356154122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A304065 (A001844 n).toNat

end

end A304059.P9464921928356154122

/-! ## A304059.P13165298771648843305

`Δ[A004185(n)]*A304065(A001844(n))`
-/

namespace A304059.P13165298771648843305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A304065 (A001844 n).toNat

end

end A304059.P13165298771648843305

/-!
# A304060: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304060, there is no canonical definition to state claims against.
-/

/-! ## A304060.P16496580283043719538

`A304065(∑[n+2]+4)`
-/

namespace A304060.P16496580283043719538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304060.P16496580283043719538

/-! ## A304060.P3633802255752852437

`A305457(∑[n+2]+4)`
-/

namespace A304060.P3633802255752852437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304060.P3633802255752852437

/-! ## A304060.P14622670162563419726

`A304065(A167614(n+1))+A025444(n)`
-/

namespace A304060.P14622670162563419726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A167614 (n + 1)).toNat + A025444 n

end

end A304060.P14622670162563419726

/-! ## A304060.P2625855310643885346

`A304065(A167614(n+1))+A185255(n)`
-/

namespace A304060.P2625855310643885346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A167614 (n + 1)).toNat + A185255 n

end

end A304060.P2625855310643885346

/-! ## A304060.P14415038197531489905

`A305457(A167614(n+1))+A185238(n)`
-/

namespace A304060.P14415038197531489905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A167614 (n + 1)).toNat + A185238 n

end

end A304060.P14415038197531489905

/-!
# A304061: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304061, there is no canonical definition to state claims against.
-/

/-! ## A304061.P2959258054460890379

`A304065(A374004(n+1))`
-/

namespace A304061.P2959258054460890379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A374004 (n + 1)).toNat

end

end A304061.P2959258054460890379

/-! ## A304061.P12496872807622521789

`A304065(A141214(n)+7)`
-/

namespace A304061.P12496872807622521789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A141214 n + 7).toNat

end

end A304061.P12496872807622521789

/-! ## A304061.P9566386384813620883

`A305457(A141214(n)+7)`
-/

namespace A304061.P9566386384813620883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A141214 n + 7).toNat

end

end A304061.P9566386384813620883

/-! ## A304061.P8016877294265522796

`A304065(A052905(n)+9)`
-/

namespace A304061.P8016877294265522796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A052905 n + 9).toNat

end

end A304061.P8016877294265522796

/-! ## A304061.P9717383630138966329

`A305457(A052905(n)+9)`
-/

namespace A304061.P9717383630138966329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (A052905 n + 9).toNat

end

end A304061.P9717383630138966329

/-!
# A304062: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304062, there is no canonical definition to state claims against.
-/

/-! ## A304062.P16486140480770405331

`A304065(A374005(n+1))`
-/

namespace A304062.P16486140480770405331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A374005 (n + 1)).toNat

end

end A304062.P16486140480770405331

/-! ## A304062.P16523908366871919192

`A304065(A167499(n+3))`
-/

namespace A304062.P16523908366871919192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A167499 (n + 3)).toNat

end

end A304062.P16523908366871919192

/-! ## A304062.P2747724371998164665

`A304065(A155212(n)+13)`
-/

namespace A304062.P2747724371998164665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A155212 n + 13).toNat

end

end A304062.P2747724371998164665

/-! ## A304062.P11318131654028414356

`A304065(A141214(n+1)+8)`
-/

namespace A304062.P11318131654028414356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A141214 (n + 1) + 8).toNat

end

end A304062.P11318131654028414356

/-! ## A304062.P11999025583061450840

`A304065(A046691(n+3))`
-/

namespace A304062.P11999025583061450840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A046691 (n + 3)).toNat

end

end A304062.P11999025583061450840

/-!
# A304063: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304063, there is no canonical definition to state claims against.
-/

/-! ## A304063.P14851304430466132712

`A304065(A374007(n+1))`
-/

namespace A304063.P14851304430466132712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A374007 (n + 1)).toNat

end

end A304063.P14851304430466132712

/-! ## A304063.P678680767618402713

`A304065(A000217(n+5)+6)`
-/

namespace A304063.P678680767618402713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A000217 (n + 5) + 6).toNat

end

end A304063.P678680767618402713

/-! ## A304063.P1969485663791235762

`A304065(eq[7, A131818(n+1)])`
-/

namespace A304063.P1969485663791235762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304063.P1969485663791235762

/-! ## A304063.P18120416941380321584

`A304065(A052905(n+3))`
-/

namespace A304063.P18120416941380321584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A052905 (n + 3)).toNat

end

end A304063.P18120416941380321584

/-! ## A304063.P2659908319071601170

`A304065(A056119(n)+16)`
-/

namespace A304063.P2659908319071601170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A056119 n + 16).toNat

end

end A304063.P2659908319071601170

/-!
# A304064: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304064, there is no canonical definition to state claims against.
-/

/-! ## A304064.P3652671106146118557

`A304065(A374008(n+1))`
-/

namespace A304064.P3652671106146118557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A374008 (n + 1)).toNat

end

end A304064.P3652671106146118557

/-! ## A304064.P11222656635255389050

`A304065(A000217(n+6)+7)`
-/

namespace A304064.P11222656635255389050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (A000217 (n + 6) + 7).toNat

end

end A304064.P11222656635255389050

/-! ## A304064.P4441008547251091730

`A304065(eq[8, A131818(n+1)])`
-/

namespace A304064.P4441008547251091730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304064.P4441008547251091730

/-! ## A304064.P3118077515631134413

`A304065(Δ[A023551(n+1)]+13)`
-/

namespace A304064.P3118077515631134413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (f1 (n + 1) - f1 n + 13).toNat

end

end A304064.P3118077515631134413

/-! ## A304064.P4554514095068206059

`A304065(eq[4, A219347(n)])`
-/

namespace A304064.P4554514095068206059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304064.P4554514095068206059

/-!
# A304065: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A304065, there is no canonical definition to state claims against.
-/

/-! ## A304065.P8289708604459143488

`A305457(∑[A010894(n)!])`
-/

namespace A304065.P8289708604459143488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304065.P8289708604459143488

/-! ## A304065.P13668042579253528281

`A305457(A010894(n)!+n)`
-/

namespace A304065.P13668042579253528281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A304065.P13668042579253528281

/-! ## A304065.P16994960713798827134

`A305457(∑[A036225(n)^n])`
-/

namespace A304065.P16994960713798827134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305457 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A304065.P16994960713798827134

/-! ## A304065.P12015246892620944744

`A014682(2*A305457(n+1))`
-/

namespace A304065.P12015246892620944744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A305457 (n + 1)).toNat

end

end A304065.P12015246892620944744

/-! ## A304065.P13350493334005777549

`A305457(n+1)%A332614(n)`
-/

namespace A304065.P13350493334005777549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305457 (n + 1)) (A332614 n)

end

end A304065.P13350493334005777549

/-!
# A304066: a(n) = Sum_{k=1..n} k*floor(n/prime(k)).

The programs for A304066, the canonical program `A304066.P18148162431885830221` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304066 has offset 1).

The definition of A304066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304066.P18148162431885830221

`∑[A066328(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A304066

/-- `∑[A066328(n+1)]` -/
def P18148162431885830221.Spec : Prop :=
  ∀ n, P18148162431885830221.a n = A304066 (n + 1)

theorem P18148162431885830221.correct : P18148162431885830221.Spec := by
  intro n
  simp only [A304066, Nat.add_sub_cancel]

end A304066

/-! ## A304066.P15325286189976966915

`∑[∑{d}[n+1, A049084(#)]]`
-/

namespace A304066.P15325286189976966915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A049084 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P15325286189976966915

namespace A304066

/-- `∑[∑{d}[n+1, A049084(#)]]` -/
def P15325286189976966915.Spec : Prop :=
  ∀ n, P15325286189976966915.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P7389902299754272989

`∑[∑{p}[n+1, A000720(#)]]`
-/

namespace A304066.P7389902299754272989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A000720 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P7389902299754272989

namespace A304066

/-- `∑[∑{p}[n+1, A000720(#)]]` -/
def P7389902299754272989.Spec : Prop :=
  ∀ n, P7389902299754272989.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P6523069459021260863

`∑[∑{p}[n+1, A003963(#)]]`
-/

namespace A304066.P6523069459021260863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A003963 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P6523069459021260863

namespace A304066

/-- `∑[∑{p}[n+1, A003963(#)]]` -/
def P6523069459021260863.Spec : Prop :=
  ∀ n, P6523069459021260863.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P14241843258986248673

`∑[∑{p}[n+1, A026233(#)]]`
-/

namespace A304066.P14241843258986248673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A026233 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P14241843258986248673

namespace A304066

/-- `∑[∑{p}[n+1, A026233(#)]]` -/
def P14241843258986248673.Spec : Prop :=
  ∀ n, P14241843258986248673.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P11208998588251572996

`∑[∑{p}[n+1, A026238(#)]]`
-/

namespace A304066.P11208998588251572996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A026238 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P11208998588251572996

namespace A304066

/-- `∑[∑{p}[n+1, A026238(#)]]` -/
def P11208998588251572996.Spec : Prop :=
  ∀ n, P11208998588251572996.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P6152329985865167913

`∑[∑{p}[n+1, A055396(#)]]`
-/

namespace A304066.P6152329985865167913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A055396 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P6152329985865167913

namespace A304066

/-- `∑[∑{p}[n+1, A055396(#)]]` -/
def P6152329985865167913.Spec : Prop :=
  ∀ n, P6152329985865167913.a n = A304066 (n + 1)

end A304066

/-! ## A304066.P10856921539561103048

`∑[A333842((n+1)²)]`
-/

namespace A304066.P10856921539561103048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304066.P10856921539561103048

namespace A304066

/-- `∑[A333842((n+1)²)]` -/
def P10856921539561103048.Spec : Prop :=
  ∀ n, P10856921539561103048.a n = A304066 (n + 1)

end A304066

/-!
# A304067: Number of trees with n vertices rooted at a non-edge.

The programs for A304067, there is no canonical definition to state claims against.
-/

/-! ## A304067.P554893949850201656

`A303833(n+1)-A027852(n+1)`
-/

namespace A304067.P554893949850201656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303833 (n + 1) - A027852 (n + 1)

end

end A304067.P554893949850201656

/-! ## A304067.P2273085906137475113

`A303833(n+1)-A106234(∑[n+1]+3)`
-/

namespace A304067.P2273085906137475113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303833 (n + 1) - A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A304067.P2273085906137475113

/-! ## A304067.P10849218546180257083

`A303833(n+1)-(A339525(n+1)+A339524(n+1))`
-/

namespace A304067.P10849218546180257083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303833 (n + 1) - (A339525 (n + 1) + A339524 (n + 1))

end

end A304067.P10849218546180257083

/-! ## A304067.P15314803956926122066

`A294783(A055998(n))-A033185(A133263(n))`
-/

namespace A304067.P15314803956926122066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (A055998 n).toNat - A033185 (A133263 n).toNat

end

end A304067.P15314803956926122066

/-! ## A304067.P76815626543439797

`A303842(A034856(n+1))-A027852(A028310(n)+1)`
-/

namespace A304067.P76815626543439797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303842 (A034856 (n + 1)).toNat - A027852 (A028310 n + 1).toNat

end

end A304067.P76815626543439797

/-!
# A304068: Number of trees on n vertices rooted at an oriented non-edge.

The programs for A304068, there is no canonical definition to state claims against.
-/

/-! ## A304068.P17221894559868097679

`A304489(A133263(n))-A339067(A133263(n))`
-/

namespace A304068.P17221894559868097679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304489 (A133263 n).toNat - A339067 (A133263 n).toNat

end

end A304068.P17221894559868097679

/-! ## A304068.P7825312495712843182

`A105516((n+1)*A072827(n+1))`
-/

namespace A304068.P7825312495712843182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 ((n + 1 : ℤ) * A072827 (n + 1)).toNat

end

end A304068.P7825312495712843182

/-! ## A304068.P10575932553290048892

`A059995(A056185(n)+A056182(n))`
-/

namespace A304068.P10575932553290048892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A056185 n + A056182 n).toNat

end

end A304068.P10575932553290048892

/-! ## A304068.P12505266561793860640

`A105514(A119275(n)+A008776(n))`
-/

namespace A304068.P12505266561793860640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (A119275 n + A008776 n).toNat

end

end A304068.P12505266561793860640

/-!
# A304069: Number of simple graphs on n vertices rooted at one oriented edge.

The programs for A304069, there is no canonical definition to state claims against.
-/

/-! ## A304069.P15599946648806190403

`A304070(n+1)/2`
-/

namespace A304069.P15599946648806190403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304070 (n + 1) : ℚ) / 2

end

end A304069.P15599946648806190403

/-! ## A304069.P13624060965803465286

`record[A304070(A304088(n))/2]`
-/

namespace A304069.P13624060965803465286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304070 (A304088 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304069.P13624060965803465286

/-! ## A304069.P15104677618169042144

`floor(A304070(A005408(n)-n)/2)`
-/

namespace A304069.P15104677618169042144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304070 (A005408 n - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A304069.P15104677618169042144

/-! ## A304069.P7175078031948189192

`2^A349340(A051698(n))*A304070(n+1)`
-/

namespace A304069.P7175078031948189192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A349340 (A051698 n).toNat : ℤ) * (A304070 (n + 1) : ℚ)

end

end A304069.P7175078031948189192

/-!
# A304070: Number of simple graphs with n vertices rooted at a pair of distinguished vertices.

The programs for A304070, there is no canonical definition to state claims against.
-/

/-! ## A304070.P1458203119551172045

`2*A304069(n+1)`
-/

namespace A304070.P1458203119551172045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304069 (n + 1)

end

end A304070.P1458203119551172045

/-! ## A304070.P12177113585658986941

`record[2*A304069(A304088(n))]`
-/

namespace A304070.P12177113585658986941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304069 (A304088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304070.P12177113585658986941

/-! ## A304070.P10271303713886418440

`A304069(n+1)+record[A304069(A304088(n))]`
-/

namespace A304070.P10271303713886418440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304069 (A304088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304069 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304070.P10271303713886418440

/-! ## A304070.P12044319737193843377

`A304069(n+1)+A304069(n+1)+A185284(n)`
-/

namespace A304070.P12044319737193843377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304069 (n + 1) + (A304069 (n + 1) + A185284 n)

end

end A304070.P12044319737193843377

/-! ## A304070.P5681317340737249698

`A304069(A076084(n+1))+A304069(n+1)`
-/

namespace A304070.P5681317340737249698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304069 (A076084 (n + 1)).toNat + A304069 (n + 1)

end

end A304070.P5681317340737249698

/-!
# A304071: Number of simple connected graphs with n nodes rooted at one non-edge.

The programs for A304071, there is no canonical definition to state claims against.
-/

/-! ## A304071.P13572905739186685297

`A303831(n+1)-A303830(n+1)`
-/

namespace A304071.P13572905739186685297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303831 (n + 1) - A303830 (n + 1)

end

end A304071.P13572905739186685297

/-! ## A304071.P2474680691753092593

`A303831(n+1)%A303830(A031285(n))`
-/

namespace A304071.P2474680691753092593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303831 (n + 1)) (A303830 (A031285 n).toNat)

end

end A304071.P2474680691753092593

/-! ## A304071.P4143778112631392947

`A304311(A055998(n))-(A303830(n+1)+A000007(n))`
-/

namespace A304071.P4143778112631392947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A055998 n).toNat - (A303830 (n + 1) + A000007 n)

end

end A304071.P4143778112631392947

/-! ## A304071.P4821722032842914089

`(A304311(A027379(n))-A303830(n+1))*A057427(n)`
-/

namespace A304071.P4821722032842914089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304311 (A027379 n).toNat - A303830 (n + 1)) * A057427 n

end

end A304071.P4821722032842914089

/-! ## A304071.P8604538479858805228

`(A304311(A055998(n))-A303830(n+1))*A057427(n)`
-/

namespace A304071.P8604538479858805228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304311 (A055998 n).toNat - A303830 (n + 1)) * A057427 n

end

end A304071.P8604538479858805228

/-!
# A304072: Number of simple connected graphs with n nodes rooted at one oriented edge.

The programs for A304072, there is no canonical definition to state claims against.
-/

/-! ## A304072.P3703068983946399614

`A304074(n+1)-A304073(n+1)`
-/

namespace A304072.P3703068983946399614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304074 (n + 1) - A304073 (n + 1)

end

end A304072.P3703068983946399614

/-! ## A304072.P6701030258524606738

`A227762(A000111(n))+A101220(n)`
-/

namespace A304072.P6701030258524606738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227762 (A000111 n).toNat + A101220 n

end

end A304072.P6701030258524606738

/-!
# A304073: Number of simple connected graphs with n nodes rooted at one oriented non-edge.

The programs for A304073, there is no canonical definition to state claims against.
-/

/-! ## A304073.P11590890046583006545

`A304074(n+1)-A304072(n+1)`
-/

namespace A304073.P11590890046583006545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304074 (n + 1) - A304072 (n + 1)

end

end A304073.P11590890046583006545

/-! ## A304073.P16605267570690922754

`∑[A057357(A136727(n))]`
-/

namespace A304073.P16605267570690922754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A136727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304073.P16605267570690922754

/-!
# A304074: Number of simple connected graphs with n nodes rooted at a pair of distinguished vertices.

The programs for A304074, there is no canonical definition to state claims against.
-/

/-! ## A304074.P6424563080048204840

`A304072(n+1)+A304073(n+1)`
-/

namespace A304074.P6424563080048204840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304072 (n + 1) + A304073 (n + 1)

end

end A304074.P6424563080048204840

/-! ## A304074.P7076924475345504443

`A060715(A389158(2*n)+A074206(n))`
-/

namespace A304074.P7076924475345504443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A389158 (2 * n) + A074206 n).toNat

end

end A304074.P7076924475345504443

/-!
# A304075: Partial sums of A304050.

The programs for A304075, there is no canonical definition to state claims against.
-/

/-! ## A304075.P13938950319641961868

`∑[A304050(n)]`
-/

namespace A304075.P13938950319641961868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304075.P13938950319641961868

/-! ## A304075.P1249977875911335456

`A304050(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304075.P1249977875911335456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304050 n + a (A023443 n).toNat

end

end A304075.P1249977875911335456

/-! ## A304075.P17347459134584505718

`a(n-1)+A304050(n)+C(A061357(n+1), n)` with `a(0)=1`
-/

namespace A304075.P17347459134584505718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A304050 n + (Nat.choose (A061357 (n + 1)).toNat n : ℤ))

end

end A304075.P17347459134584505718

/-! ## A304075.P12276771022634767398

`A304050(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A304075.P12276771022634767398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304050 n - A001489 (a (n - 1)).toNat

end

end A304075.P12276771022634767398

/-!
# A304078: Partial sums of A304076.

The programs for A304078, there is no canonical definition to state claims against.
-/

/-! ## A304078.P14396512249707647278

`∑[A304076(n)]`
-/

namespace A304078.P14396512249707647278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304078.P14396512249707647278

/-! ## A304078.P18010363935804632011

`A304076(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304078.P18010363935804632011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304076 n + a (A023443 n).toNat

end

end A304078.P18010363935804632011

/-! ## A304078.P10293727248146133988

`or(A193870(n+1), A220487(A000125(n)))`
-/

namespace A304078.P10293727248146133988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A193870 (n + 1)) (A220487 (A000125 n).toNat)

end

end A304078.P10293727248146133988

/-! ## A304078.P1012719133171840621

`or(A220487(A000125(n)), A302242(n+1))`
-/

namespace A304078.P1012719133171840621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220487 (A000125 n).toNat) (A302242 (n + 1))

end

end A304078.P1012719133171840621

/-!
# A304079: Partial sums of A304077.

The programs for A304079, there is no canonical definition to state claims against.
-/

/-! ## A304079.P12409584846698742170

`∑[A304077(n)]`
-/

namespace A304079.P12409584846698742170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304079.P12409584846698742170

/-! ## A304079.P3766870263663483249

`A304077(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A304079.P3766870263663483249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304077 n + a (A023443 n).toNat

end

end A304079.P3766870263663483249

/-! ## A304079.P14354872052144760609

`A304077(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A304079.P14354872052144760609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A304077 n + a (A000027 (n + 1) - 2).toNat

end

end A304079.P14354872052144760609

/-!
# A304082: a(n) = 3^n - A006952(n).

The programs for A304082, there is no canonical definition to state claims against.
-/

/-! ## A304082.P10449807029899077521

`3^n-A006952(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304082.P10449807029899077521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A006952 n

end

end A304082.P10449807029899077521

/-! ## A304082.P203742047861621783

`A000244(n)%A006952(n)`
-/

namespace A304082.P203742047861621783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A006952 n)

end

end A304082.P203742047861621783

/-! ## A304082.P15418826397097039675

`∑[A025192(n)]%A006952(n)`
-/

namespace A304082.P15418826397097039675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006952 n)

end

end A304082.P15418826397097039675

/-! ## A304082.P1553318848593423329

`Δ[A007051(n)]%A006952(n)`
-/

namespace A304082.P1553318848593423329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A006952 n)

end

end A304082.P1553318848593423329

/-! ## A304082.P9678360186826316837

`(A000244(n)-A006952(n))*A033999(n)²`
-/

namespace A304082.P9678360186826316837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A006952 n) * A033999 n ^ 2

end

end A304082.P9678360186826316837

/-! ## A304082.P17426229371980719916

`(A000244(n)-A006952(n))*A097807(n)²`
-/

namespace A304082.P17426229371980719916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A006952 n) * A097807 n ^ 2

end

end A304082.P17426229371980719916

/-! ## A304082.P10140259955260180604

`(A000244(n)-A006952(n))*A007318(∑[n])`
-/

namespace A304082.P10140259955260180604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A006952 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304082.P10140259955260180604

/-! ## A304082.P12238329002458805632

`A027465(A000217(n))%A006952(n)`
-/

namespace A304082.P12238329002458805632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027465 (A000217 n).toNat) (A006952 n)

end

end A304082.P12238329002458805632

/-! ## A304082.P4443961477365199446

`A027465(A179865(n+1))%A006952(n)`
-/

namespace A304082.P4443961477365199446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027465 (A179865 (n + 1)).toNat) (A006952 n)

end

end A304082.P4443961477365199446

/-! ## A304082.P13192345143385242488

`(A000244(n)-A006952(n))*A014963((n+1)*(n+4))`
-/

namespace A304082.P13192345143385242488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A006952 n) * A014963 ((n + 1) * (n + 4))

end

end A304082.P13192345143385242488

/-!
# A304083: Permutation of nonnegative integers: Minimal subset/superset bitmask transform of A054429.

The programs for A304083, there is no canonical definition to state claims against.
-/

/-! ## A304083.P6047710783245998972

`∑{p}[A304087(n), A048675(#)]`
-/

namespace A304083.P6047710783245998972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A304083.P6047710783245998972

/-! ## A304083.P3969556006434218326

`∑{p}[A304087(n), A048676(#)]`
-/

namespace A304083.P3969556006434218326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p

end

end A304083.P3969556006434218326

/-! ## A304083.P5365927997359787920

`∑{p}[A304087(n), A087207(#)]`
-/

namespace A304083.P5365927997359787920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p

end

end A304083.P5365927997359787920

/-! ## A304083.P9350216882408296936

`∑{p}[A304087(n), A112479(#)]`
-/

namespace A304083.P9350216882408296936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p

end

end A304083.P9350216882408296936

/-! ## A304083.P7840660570790850491

`∑{p}[A304087(n), A156552(#)]`
-/

namespace A304083.P7840660570790850491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A304083.P7840660570790850491

/-! ## A304083.P1804979284788810260

`∑{p}[A304087(n), A162474(#)]`
-/

namespace A304083.P1804979284788810260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p

end

end A304083.P1804979284788810260

/-! ## A304083.P2167342330197674643

`∑{p}[A304087(n), A233249(#)]`
-/

namespace A304083.P2167342330197674643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p

end

end A304083.P2167342330197674643

/-! ## A304083.P18354745649264813163

`∑{p}[A304087(n), A248663(#)]`
-/

namespace A304083.P18354745649264813163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A304083.P18354745649264813163

/-! ## A304083.P15571729269894828756

`∑{p}[A304087(n), A252754(#)]`
-/

namespace A304083.P15571729269894828756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A252754 p

end

end A304083.P15571729269894828756

/-! ## A304083.P8761403519424373863

`∑{p}[A304087(n), A277333(#)]`
-/

namespace A304083.P8761403519424373863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A277333 p

end

end A304083.P8761403519424373863

/-! ## A304083.P1166841828148645709

`∑{p}[A304087(n), A285330(#)]`
-/

namespace A304083.P1166841828148645709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285330 p

end

end A304083.P1166841828148645709

/-! ## A304083.P4312797088297691362

`∑{p}[A304087(n), A297108(#)]`
-/

namespace A304083.P4312797088297691362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p

end

end A304083.P4312797088297691362

/-!
# A304084: Inverse permutation to A304083.

The programs for A304084, there is no canonical definition to state claims against.
-/

/-! ## A304084.P3160463608146984813

`A209861(xor(n, floor(n/2))%A110600(n+1))`
-/

namespace A304084.P3160463608146984813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (Int.tmod (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (A110600 (n + 1))).toNat

end

end A304084.P3160463608146984813

/-! ## A304084.P18230142126706761327

`A209861(A003188(n)%A110600(n+1))`
-/

namespace A304084.P18230142126706761327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (Int.tmod (A003188 n) (A110600 (n + 1))).toNat

end

end A304084.P18230142126706761327

/-! ## A304084.P18337162358451742473

`A209862(xor(n, floor(n/2))%A270233(n))`
-/

namespace A304084.P18337162358451742473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209862 (Int.tmod (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋) (A270233 n)).toNat

end

end A304084.P18337162358451742473

/-! ## A304084.P432455315173867388

`A209862(A003188(n))%A099911(2*n+1)`
-/

namespace A304084.P432455315173867388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209862 (A003188 n).toNat) (A099911 (2 * n + 1))

end

end A304084.P432455315173867388

/-! ## A304084.P12757432769696379028

`A304086(A052330(n))`
-/

namespace A304084.P12757432769696379028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304086 (A052330 n).toNat

end

end A304084.P12757432769696379028

/-!
# A304085: Divisor-or-multiple permutation of natural numbers: a(n) = A052330(A304083(n)).

The programs for A304085, there is no canonical definition to state claims against.
-/

/-! ## A304085.P15049104614120459485

`A052330(A304083(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304085.P15049104614120459485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A304083 n).toNat

end

end A304085.P15049104614120459485

/-! ## A304085.P18199378975439090698

`∏{p}[A304087(n), A302023(#)]`
-/

namespace A304085.P18199378975439090698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A304085.P18199378975439090698

/-! ## A304085.P1207146654135866256

`A052330(∑{p}[A304087(n), A048675(#)])`
-/

namespace A304085.P1207146654135866256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A304085.P1207146654135866256

/-! ## A304085.P3314459049668560096

`A052330(∑{p}[A304087(n), A048676(#)])`
-/

namespace A304085.P3314459049668560096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p).toNat

end

end A304085.P3314459049668560096

/-! ## A304085.P6129417954210143137

`A052330(∑{p}[A304087(n), A087207(#)])`
-/

namespace A304085.P6129417954210143137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087207 p).toNat

end

end A304085.P6129417954210143137

/-! ## A304085.P313713133011308505

`A052330(∑{p}[A304087(n), A112479(#)])`
-/

namespace A304085.P313713133011308505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A112479 p).toNat

end

end A304085.P313713133011308505

/-! ## A304085.P2288051275343803288

`A052330(∑{p}[A304087(n), A162474(#)])`
-/

namespace A304085.P2288051275343803288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p).toNat

end

end A304085.P2288051275343803288

/-! ## A304085.P6310932939872477243

`A052330(∑{p}[A304087(n), A233249(#)])`
-/

namespace A304085.P6310932939872477243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233249 p).toNat

end

end A304085.P6310932939872477243

/-! ## A304085.P2018470225823606648

`A052330(∑{p}[A304087(n), A297108(#)])`
-/

namespace A304085.P2018470225823606648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297108 p).toNat

end

end A304085.P2018470225823606648

/-! ## A304085.P603020522469702581

`∏{p}[A304087(n), A052330(A252754(#))]`
-/

namespace A304085.P603020522469702581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052330 (A252754 p).toNat

end

end A304085.P603020522469702581

/-! ## A304085.P8856570319089776098

`∏{p}[A304087(n), A052330(A269388(#))]`
-/

namespace A304085.P8856570319089776098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A052330 (A269388 p).toNat

end

end A304085.P8856570319089776098

/-!
# A304086: Inverse of A304085.

The programs for A304086, there is no canonical definition to state claims against.
-/

/-! ## A304086.P4074028851565385877

`A304084(A052331(n+1))`
-/

namespace A304086.P4074028851565385877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304084 (A052331 (n + 1)).toNat

end

end A304086.P4074028851565385877

/-! ## A304086.P6049367625863979868

`A304084(A064358(n+1)-1)`
-/

namespace A304086.P6049367625863979868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304084 (A064358 (n + 1) - 1).toNat

end

end A304086.P6049367625863979868

/-! ## A304086.P7568307862245433225

`A304084(∑{d}[A160102(n+1), A297108(#)])`
-/

namespace A304086.P7568307862245433225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304084 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d).toNat

end

end A304086.P7568307862245433225

/-! ## A304086.P3366774919268469332

`A304084(∑{p}[A160102(n+1), A048675(#)])`
-/

namespace A304086.P3366774919268469332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat

end

end A304086.P3366774919268469332

/-! ## A304086.P2340754785778417037

`A304084(∑{p}[A160102(n+1), A048676(#)])`
-/

namespace A304086.P2340754785778417037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048676 p).toNat

end

end A304086.P2340754785778417037

/-!
# A304087: Divisor-or-multiple permutation of squarefree numbers: a(n) = A019565(A304083(n)).

The programs for A304087, there is no canonical definition to state claims against.
-/

/-! ## A304087.P12369822296884993052

`A019565(A304083(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304087.P12369822296884993052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A304083 n).toNat

end

end A304087.P12369822296884993052

/-! ## A304087.P13318320795025508472

`A339809(A304083(n))+A000027(n+1)-n`
-/

namespace A304087.P13318320795025508472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat + (A000027 (n + 1) - (n : ℤ))

end

end A304087.P13318320795025508472

/-! ## A304087.P8026606778223892803

`A339809(A304083(n))-A094159(n)²%3+1`
-/

namespace A304087.P8026606778223892803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat - Int.tmod (A094159 n ^ 2) 3 + 1

end

end A304087.P8026606778223892803

/-! ## A304087.P13555191217041697333

`A339809(A304083(n))+A033999(2*n)`
-/

namespace A304087.P13555191217041697333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat + A033999 (2 * n)

end

end A304087.P13555191217041697333

/-! ## A304087.P12733443899126132586

`A339809(A304083(n))+A062157(2*n+3)`
-/

namespace A304087.P12733443899126132586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat + A062157 (2 * n + 3)

end

end A304087.P12733443899126132586

/-! ## A304087.P9252778581393114294

`A303770(A303774(A304083(A303774(A303773(n)))))`
-/

namespace A304087.P9252778581393114294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (A303774 (A304083 (A303774 (A303773 n).toNat).toNat).toNat).toNat

end

end A304087.P9252778581393114294

/-! ## A304087.P1205598701381529655

`A339809(A304083(n))+A258409(A194396(n+1))`
-/

namespace A304087.P1205598701381529655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat + A258409 (A194396 (n + 1)).toNat

end

end A304087.P1205598701381529655

/-! ## A304087.P485015078703810107

`A339809(A304083(n))+A165476(n²)^n`
-/

namespace A304087.P485015078703810107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat + A165476 (n ^ 2) ^ n

end

end A304087.P485015078703810107

/-! ## A304087.P7822630817138366634

`A339809(A304083(n))-A057428(A124460(n))`
-/

namespace A304087.P7822630817138366634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A304083 n).toNat - A057428 (A124460 n).toNat

end

end A304087.P7822630817138366634

/-! ## A304087.P8804612096462365463

`A160102(A304085(n))`
-/

namespace A304087.P8804612096462365463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A304085 n).toNat

end

end A304087.P8804612096462365463

/-!
# A304088: Restricted growth sequence transform of A278222(A304083(n)).

The programs for A304088, there is no canonical definition to state claims against.
-/

/-! ## A304088.P830307426794837189

`A286378(floor(2^(n-1))*A215366(n))`
-/

namespace A304088.P830307426794837189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A215366 n).toNat

end

end A304088.P830307426794837189

/-! ## A304088.P7826343527422332744

`A323889(A131577(n)*A215366(n))`
-/

namespace A304088.P7826343527422332744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323889 (A131577 n * A215366 n).toNat

end

end A304088.P7826343527422332744

/-!
# A304089: Binary weight of A304083.

The programs for A304089, there is no canonical definition to state claims against.
-/

/-! ## A304089.P454534596315810212

`A000120(A304083(n))`
-/

namespace A304089.P454534596315810212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304083 n).toNat

end

end A304089.P454534596315810212

/-! ## A304089.P15826865544549445550

`A001222(A278222(2*A304083(n)))`
-/

namespace A304089.P15826865544549445550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (2 * A304083 n).toNat).toNat

end

end A304089.P15826865544549445550

/-! ## A304089.P2822933006354736812

`A001222(A278222(A304083(n)+A304083(n)))`
-/

namespace A304089.P2822933006354736812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 (A304083 n + A304083 n).toNat).toNat

end

end A304089.P2822933006354736812

/-! ## A304089.P2319541035457648234

`A001222(A278222(A304083(n)))%A304088(n)`
-/

namespace A304089.P2319541035457648234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A278222 (A304083 n).toNat).toNat) (A304088 n)

end

end A304089.P2319541035457648234

/-! ## A304089.P11062674786355075657

`∑{e}[A304087(n), #]`
-/

namespace A304089.P11062674786355075657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A304089.P11062674786355075657

/-! ## A304089.P15358778683224661276

`∑{p}[A304087(n), A001221(#)]`
-/

namespace A304089.P15358778683224661276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A304089.P15358778683224661276

/-! ## A304089.P6104980562126918090

`∑{p}[A304087(n), A001222(#)]`
-/

namespace A304089.P6104980562126918090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A304089.P6104980562126918090

/-! ## A304089.P5415756556490007803

`∑{p}[A304087(n), A003415(#)]`
-/

namespace A304089.P5415756556490007803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A304089.P5415756556490007803

/-! ## A304089.P8338859810323182632

`∑{p}[A304087(n), A010051(#)]`
-/

namespace A304089.P8338859810323182632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A304089.P8338859810323182632

/-! ## A304089.P13850779507007773834

`∑{e}[A304085(n), A000010(#)]`
-/

namespace A304089.P13850779507007773834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A304089.P13850779507007773834

/-! ## A304089.P3586620991707065015

`∑{e}[A304085(n), A000045(#)]`
-/

namespace A304089.P3586620991707065015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A304089.P3586620991707065015

/-! ## A304089.P15501935836233187473

`A001222(∏{e}[A304087(n), #+1])`
-/

namespace A304089.P15501935836233187473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A304089.P15501935836233187473

/-! ## A304089.P17557548243173635330

`A001222(A000005(A304085(n)))`
-/

namespace A304089.P17557548243173635330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (A304085 n).toNat).toNat

end

end A304089.P17557548243173635330

/-! ## A304089.P13403756609876026618

`∑{p}[A304087(n), A304087(A248663(#²))]`
-/

namespace A304089.P13403756609876026618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304087 (A248663 (p ^ 2)).toNat

end

end A304089.P13403756609876026618

/-! ## A304089.P11322410705965037405

`∑{p}[A304087(n), A304087(A277333(#²))]`
-/

namespace A304089.P11322410705965037405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A304087 (A277333 (p ^ 2)).toNat

end

end A304089.P11322410705965037405

/-! ## A304089.P16058252191757004083

`A304536(A304534(A304083(A304534(A304533(n)))))`
-/

namespace A304089.P16058252191757004083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304536 (A304534 (A304083 (A304534 (A304533 n).toNat).toNat).toNat).toNat

end

end A304089.P16058252191757004083

/-!
# A304090: Inverse of A282291: if A282291(k) = n, a(n) = k, or 0 if n does not occur in A282291.

The programs for A304090, there is no canonical definition to state claims against.
-/

/-! ## A304090.P12010756660556370379

`A302854(A052331(n+1))+1`
-/

namespace A304090.P12010756660556370379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (A052331 (n + 1)).toNat + 1

end

end A304090.P12010756660556370379

/-! ## A304090.P1125087199874484036

`A302854(A352812(n+1))+1`
-/

namespace A304090.P1125087199874484036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (A352812 (n + 1)).toNat + 1

end

end A304090.P1125087199874484036

/-! ## A304090.P7397386419929733526

`A302854(A064358(n+1)-1)+1`
-/

namespace A304090.P7397386419929733526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (A064358 (n + 1) - 1).toNat + 1

end

end A304090.P7397386419929733526

/-! ## A304090.P14152303250923452322

`A302854(∑{d}[A160102(n+1), A297108(#)])+1`
-/

namespace A304090.P14152303250923452322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d).toNat + 1

end

end A304090.P14152303250923452322

/-! ## A304090.P4975992441823223742

`A302854(∑{p}[A160102(n+1), A048675(#)])+1`
-/

namespace A304090.P4975992441823223742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302854 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p).toNat + 1

end

end A304090.P4975992441823223742

/-!
# A304091: a(n) is the number of the proper divisors of n that are Lucas numbers (A000032, with 2 included).

The programs for A304091, the canonical program `A304091.P11057052564092493718` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304091 has offset 1).

The definition of A304091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304091.P642694085373112286

`A304092(n+1)-A102460(n+1)`
-/

namespace A304091.P642694085373112286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A102460 (n + 1)

end

end A304091.P642694085373112286

namespace A304091

/-- `A304092(n+1)-A102460(n+1)` -/
def P642694085373112286.Spec : Prop :=
  ∀ n, P642694085373112286.a n = A304091 (n + 1)

end A304091

/-! ## A304091.P3089298301062570758

`A304093(n+1)+char[2*n+3]`
-/

namespace A304091.P3089298301062570758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304093 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304091.P3089298301062570758

namespace A304091

/-- `A304093(n+1)+char[2*n+3]` -/
def P3089298301062570758.Spec : Prop :=
  ∀ n, P3089298301062570758.a n = A304091 (n + 1)

end A304091

/-! ## A304091.P6493686225023386009

`A304092(n+1)-Δ[A130245(n)]`
-/

namespace A304091.P6493686225023386009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - (f1 (n + 1) - f1 n)

end

end A304091.P6493686225023386009

namespace A304091

/-- `A304092(n+1)-Δ[A130245(n)]` -/
def P6493686225023386009.Spec : Prop :=
  ∀ n, P6493686225023386009.a n = A304091 (n + 1)

end A304091

/-! ## A304091.P11057052564092493718

`∑{d}[n+1, A102460(#)]-A102460(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A304091

/-- `∑{d}[n+1, A102460(#)]-A102460(n+1)` -/
def P11057052564092493718.Spec : Prop :=
  ∀ n, P11057052564092493718.a n = A304091 (n + 1)

theorem P11057052564092493718.correct : P11057052564092493718.Spec := by
  intro n
  simp only [A304091, Nat.add_sub_cancel]

end A304091

/-! ## A304091.P12984128964908593099

`∑{d}[n+1, A157658(#)*A304092((n+1)/#)]`
-/

namespace A304091.P12984128964908593099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304091.P12984128964908593099

namespace A304091

/-- `∑{d}[n+1, A157658(#)*A304092((n+1)/#)]` -/
def P12984128964908593099.Spec : Prop :=
  ∀ n, P12984128964908593099.a n = A304091 (n + 1)

end A304091

/-! ## A304091.P2528570962370002211

`A304092(n+1)+A130245(n)-A130245(n+1)`
-/

namespace A304091.P2528570962370002211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) + (A130245 n - A130245 (n + 1))

end

end A304091.P2528570962370002211

namespace A304091

/-- `A304092(n+1)+A130245(n)-A130245(n+1)` -/
def P2528570962370002211.Spec : Prop :=
  ∀ n, P2528570962370002211.a n = A304091 (n + 1)

end A304091

/-! ## A304091.P7613913153959686284

`A059841(n+1)+A304094(n+1)-A102460(n+1)`
-/

namespace A304091.P7613913153959686284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + (A304094 (n + 1) - A102460 (n + 1))

end

end A304091.P7613913153959686284

namespace A304091

/-- `A059841(n+1)+A304094(n+1)-A102460(n+1)` -/
def P7613913153959686284.Spec : Prop :=
  ∀ n, P7613913153959686284.a n = A304091 (n + 1)

end A304091

/-!
# A304092: Number of Lucas numbers (A000032: 2, 1, 3, 4, 7, 11, ...) dividing n.

The programs for A304092, the canonical program `A304092.P4628530631353138288` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304092 has offset 1).

The definition of A304092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102460, A304091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304092.P4628530631353138288

`A304091(n+1)+A102460(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304092

/-- `A304091(n+1)+A102460(n+1)` -/
def P4628530631353138288.Spec : Prop :=
  ∀ n, P4628530631353138288.a n = A304092 (n + 1)

theorem P4628530631353138288.correct : P4628530631353138288.Spec := by
  intro n
  simp only [A304092, Nat.add_sub_cancel]

end A304092

/-! ## A304092.P17514605812800110577

`A304094(n+1)+A059841(n+1)`
-/

namespace A304092.P17514605812800110577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) + A059841 (n + 1)

end

end A304092.P17514605812800110577

namespace A304092

/-- `A304094(n+1)+A059841(n+1)` -/
def P17514605812800110577.Spec : Prop :=
  ∀ n, P17514605812800110577.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P8702972746190094948

`A304096(n+1)+A059841(n+1)+A079978(n+1)+1`
-/

namespace A304092.P8702972746190094948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (n + 1) + A059841 (n + 1) + A079978 (n + 1) + 1

end

end A304092.P8702972746190094948

namespace A304092

/-- `A304096(n+1)+A059841(n+1)+A079978(n+1)+1` -/
def P8702972746190094948.Spec : Prop :=
  ∀ n, P8702972746190094948.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P1424464690658971350

`A304091(5*(n+1))`
-/

namespace A304092.P1424464690658971350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (5 * (n + 1))

end

end A304092.P1424464690658971350

namespace A304092

/-- `A304091(5*(n+1))` -/
def P1424464690658971350.Spec : Prop :=
  ∀ n, P1424464690658971350.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P2677980584225925041

`∑{d}[n+1, A102460(#)]`
-/

namespace A304092.P2677980584225925041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102460 d

end

end A304092.P2677980584225925041

namespace A304092

/-- `∑{d}[n+1, A102460(#)]` -/
def P2677980584225925041.Spec : Prop :=
  ∀ n, P2677980584225925041.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P1426784642731838328

`A304094(n+1)+n%2`
-/

namespace A304092.P1426784642731838328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A304092.P1426784642731838328

namespace A304092

/-- `A304094(n+1)+n%2` -/
def P1426784642731838328.Spec : Prop :=
  ∀ n, P1426784642731838328.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P7578165012985256515

`A304094(n+1)+A000035(n)`
-/

namespace A304092.P7578165012985256515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) + A000035 n

end

end A304092.P7578165012985256515

namespace A304092

/-- `A304094(n+1)+A000035(n)` -/
def P7578165012985256515.Spec : Prop :=
  ∀ n, P7578165012985256515.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P2668363367195662801

`A304096(n+1)+A083039(n+1)`
-/

namespace A304092.P2668363367195662801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (n + 1) + A083039 (n + 1)

end

end A304092.P2668363367195662801

namespace A304092

/-- `A304096(n+1)+A083039(n+1)` -/
def P2668363367195662801.Spec : Prop :=
  ∀ n, P2668363367195662801.a n = A304092 (n + 1)

end A304092

/-! ## A304092.P3596440458748857761

`A304094(n+1)+A266455(3-Δ[or(1, n)])`
-/

namespace A304092.P3596440458748857761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) + A266455 (3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A304092.P3596440458748857761

namespace A304092

/-- `A304094(n+1)+A266455(3-Δ[or(1, n)])` -/
def P3596440458748857761.Spec : Prop :=
  ∀ n, P3596440458748857761.a n = A304092 (n + 1)

end A304092

/-!
# A304093: a(n) is the number of the proper divisors of n that are Lucas numbers (A000204, with 2 excluded).

The programs for A304093, the canonical program `A304093.P3031202883918209163` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304093 has offset 1).

The definition of A304093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304093.P16816377923114625229

`A304094(n+1)-char[A001610(n)]`
-/

namespace A304093.P16816377923114625229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A304093.P16816377923114625229

namespace A304093

/-- `A304094(n+1)-char[A001610(n)]` -/
def P16816377923114625229.Spec : Prop :=
  ∀ n, P16816377923114625229.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P3798690178311511432

`∑{d}[n+1, A157658(#)*A304094((n+1)/#)]`
-/

namespace A304093.P3798690178311511432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A304094 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304093.P3798690178311511432

namespace A304093

/-- `∑{d}[n+1, A157658(#)*A304094((n+1)/#)]` -/
def P3798690178311511432.Spec : Prop :=
  ∀ n, P3798690178311511432.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P6022248671482503920

`floor(A304091(n+1)^(A103889(n+1)/(n+1)))`
-/

namespace A304093.P6022248671482503920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A304091 (n + 1) : ℝ) ^ ((A103889 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A304093.P6022248671482503920

namespace A304093

/-- `floor(A304091(n+1)^(A103889(n+1)/(n+1)))` -/
def P6022248671482503920.Spec : Prop :=
  ∀ n, P6022248671482503920.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P3031202883918209163

`A304091(n+1)-A019426(n)%A000034(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A304093

/-- `A304091(n+1)-A019426(n)%A000034(n)` -/
def P3031202883918209163.Spec : Prop :=
  ∀ n, P3031202883918209163.a n = A304093 (n + 1)

theorem P3031202883918209163.correct : P3031202883918209163.Spec := by
  intro n
  simp only [A304093, Nat.add_sub_cancel]

end A304093

/-! ## A304093.P11224416374931813854

`A304091(n+1)-A001222(A014963(A135517(n)))`
-/

namespace A304093.P11224416374931813854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) - A001222 (A014963 (A135517 n).toNat).toNat

end

end A304093.P11224416374931813854

namespace A304093

/-- `A304091(n+1)-A001222(A014963(A135517(n)))` -/
def P11224416374931813854.Spec : Prop :=
  ∀ n, P11224416374931813854.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P12016725195835041665

`A304091(n+1)-A000035(A233583(n+1))`
-/

namespace A304093.P12016725195835041665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) - A000035 (A233583 (n + 1)).toNat

end

end A304093.P12016725195835041665

namespace A304093

/-- `A304091(n+1)-A000035(A233583(n+1))` -/
def P12016725195835041665.Spec : Prop :=
  ∀ n, P12016725195835041665.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P14147948109192156882

`A304091(n+1)-A001222(A135517(n²))`
-/

namespace A304093.P14147948109192156882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) - A001222 (A135517 (n ^ 2)).toNat

end

end A304093.P14147948109192156882

namespace A304093

/-- `A304091(n+1)-A001222(A135517(n²))` -/
def P14147948109192156882.Spec : Prop :=
  ∀ n, P14147948109192156882.a n = A304093 (n + 1)

end A304093

/-! ## A304093.P5784785154448279471

`A304091(n+1)-A329277(n+1)%A000034(n)`
-/

namespace A304093.P5784785154448279471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304091 (n + 1) - Int.tmod (A329277 (n + 1)) (A000034 n)

end

end A304093.P5784785154448279471

namespace A304093

/-- `A304091(n+1)-A329277(n+1)%A000034(n)` -/
def P5784785154448279471.Spec : Prop :=
  ∀ n, P5784785154448279471.a n = A304093 (n + 1)

end A304093

/-!
# A304094: Number of Lucas numbers (A000204: 1, 3, 4, 7, 11, ... excluding 2) that divide n.

The programs for A304094, the canonical program `A304094.P7370092225823776362` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304094 has offset 1).

The definition of A304094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304092, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304094.P7370092225823776362

`A304092(n+1)-A059841(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A304094

/-- `A304092(n+1)-A059841(n+1)` -/
def P7370092225823776362.Spec : Prop :=
  ∀ n, P7370092225823776362.a n = A304094 (n + 1)

theorem P7370092225823776362.correct : P7370092225823776362.Spec := by
  intro n
  simp only [A304094, Nat.add_sub_cancel]

end A304094

/-! ## A304094.P6445933239149539491

`A304096(n+1)+A079978(n+1)+1`
-/

namespace A304094.P6445933239149539491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (n + 1) + A079978 (n + 1) + 1

end

end A304094.P6445933239149539491

namespace A304094

/-- `A304096(n+1)+A079978(n+1)+1` -/
def P6445933239149539491.Spec : Prop :=
  ∀ n, P6445933239149539491.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P3123737112689567887

`A304093(5*(n+1))`
-/

namespace A304094.P3123737112689567887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304093 (5 * (n + 1))

end

end A304094.P3123737112689567887

namespace A304094

/-- `A304093(5*(n+1))` -/
def P3123737112689567887.Spec : Prop :=
  ∀ n, P3123737112689567887.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P3377073289732466660

`A304092(n+1)-n%2`
-/

namespace A304094.P3377073289732466660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A304094.P3377073289732466660

namespace A304094

/-- `A304092(n+1)-n%2` -/
def P3377073289732466660.Spec : Prop :=
  ∀ n, P3377073289732466660.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P14627258400024921434

`A304096(n+1)+A177702(n)`
-/

namespace A304094.P14627258400024921434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (n + 1) + A177702 n

end

end A304094.P14627258400024921434

namespace A304094

/-- `A304096(n+1)+A177702(n)` -/
def P14627258400024921434.Spec : Prop :=
  ∀ n, P14627258400024921434.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P15156083845980647549

`A304092(n+1)-A000035(n)`
-/

namespace A304094.P15156083845980647549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A000035 n

end

end A304094.P15156083845980647549

namespace A304094

/-- `A304092(n+1)-A000035(n)` -/
def P15156083845980647549.Spec : Prop :=
  ∀ n, P15156083845980647549.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P5173520497717646853

`A304092(n+1)+1-A000034(n)`
-/

namespace A304094.P5173520497717646853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) + (1 - A000034 n)

end

end A304094.P5173520497717646853

namespace A304094

/-- `A304092(n+1)+1-A000034(n)` -/
def P5173520497717646853.Spec : Prop :=
  ∀ n, P5173520497717646853.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P13820405510120797535

`A304092(n+1)+Δ[A110654(n)]-1`
-/

namespace A304094.P13820405510120797535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A304094.P13820405510120797535

namespace A304094

/-- `A304092(n+1)+Δ[A110654(n)]-1` -/
def P13820405510120797535.Spec : Prop :=
  ∀ n, P13820405510120797535.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P17861602385708844738

`A304092(n+1)-A035377(Δ[or(1, n+1)])`
-/

namespace A304094.P17861602385708844738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A035377 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A304094.P17861602385708844738

namespace A304094

/-- `A304092(n+1)-A035377(Δ[or(1, n+1)])` -/
def P17861602385708844738.Spec : Prop :=
  ∀ n, P17861602385708844738.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P6879222442741514687

`A102460(n+1)+A304091(n+1)-A059841(n+1)`
-/

namespace A304094.P6879222442741514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102460 (n + 1) + (A304091 (n + 1) - A059841 (n + 1))

end

end A304094.P6879222442741514687

namespace A304094

/-- `A102460(n+1)+A304091(n+1)-A059841(n+1)` -/
def P6879222442741514687.Spec : Prop :=
  ∀ n, P6879222442741514687.a n = A304094 (n + 1)

end A304094

/-! ## A304094.P5332684515449261051

`A304092(n+1)-A326470(A251984(5*n+6))`
-/

namespace A304094.P5332684515449261051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A326470 (A251984 (5 * n + 6)).toNat

end

end A304094.P5332684515449261051

namespace A304094

/-- `A304092(n+1)-A326470(A251984(5*n+6))` -/
def P5332684515449261051.Spec : Prop :=
  ∀ n, P5332684515449261051.a n = A304094 (n + 1)

end A304094

/-!
# A304095: a(n) is the number of the proper divisors of n that are Lucas numbers larger than 3 (4, 7, 11, 18, ...).

The programs for A304095, the canonical program `A304095.P8518165107337469446` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304095 has offset 1).

The definition of A304095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304095.P10086757191920930627

`A007949(A304102(n+1))`
-/

namespace A304095.P10086757191920930627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A304102 (n + 1)).toNat

end

end A304095.P10086757191920930627

namespace A304095

/-- `A007949(A304102(n+1))` -/
def P10086757191920930627.Spec : Prop :=
  ∀ n, P10086757191920930627.a n = A304095 (n + 1)

end A304095

/-! ## A304095.P8518165107337469446

`∑{d}[n+1, A157658(#)*A304096((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A304095

/-- `∑{d}[n+1, A157658(#)*A304096((n+1)/#)]` -/
def P8518165107337469446.Spec : Prop :=
  ∀ n, P8518165107337469446.a n = A304095 (n + 1)

theorem P8518165107337469446.correct : P8518165107337469446.Spec := by
  intro n
  simp only [A304095, Nat.add_sub_cancel]

end A304095

/-! ## A304095.P6787186761621230979

`A087436(gcd(A038754(n), A304102(n+1)))`
-/

namespace A304095.P6787186761621230979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (Int.gcd (A038754 n) (A304102 (n + 1)))

end

end A304095.P6787186761621230979

namespace A304095

/-- `A087436(gcd(A038754(n), A304102(n+1)))` -/
def P6787186761621230979.Spec : Prop :=
  ∀ n, P6787186761621230979.a n = A304095 (n + 1)

end A304095

/-!
# A304096: Number of Lucas numbers larger than 3 (4, 7, 11, 18, ...) that divide n.

The programs for A304096, the canonical program `A304096.P10156323254175933682` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304096 has offset 1).

The definition of A304096 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304096.P10156323254175933682

`A304094(n+1)-A079978(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A304096

/-- `A304094(n+1)-A079978(n+1)-1` -/
def P10156323254175933682.Spec : Prop :=
  ∀ n, P10156323254175933682.a n = A304096 (n + 1)

theorem P10156323254175933682.correct : P10156323254175933682.Spec := by
  intro n
  simp only [A304096, Nat.add_sub_cancel]

end A304096

/-! ## A304096.P5079839412446777630

`A304092(n+1)-A059841(n+1)-A079978(n+1)-1`
-/

namespace A304096.P5079839412446777630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A059841 (n + 1) - A079978 (n + 1) - 1

end

end A304096.P5079839412446777630

namespace A304096

/-- `A304092(n+1)-A059841(n+1)-A079978(n+1)-1` -/
def P5079839412446777630.Spec : Prop :=
  ∀ n, P5079839412446777630.a n = A304096 (n + 1)

end A304096

/-! ## A304096.P17545768929440471674

`A007949(A304104(n+1))`
-/

namespace A304096.P17545768929440471674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A304104 (n + 1)).toNat

end

end A304096.P17545768929440471674

namespace A304096

/-- `A007949(A304104(n+1))` -/
def P17545768929440471674.Spec : Prop :=
  ∀ n, P17545768929440471674.a n = A304096 (n + 1)

end A304096

/-! ## A304096.P13893231507333205130

`A304095(5*(n+1))`
-/

namespace A304096.P13893231507333205130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304095 (5 * (n + 1))

end

end A304096.P13893231507333205130

namespace A304096

/-- `A304095(5*(n+1))` -/
def P13893231507333205130.Spec : Prop :=
  ∀ n, P13893231507333205130.a n = A304096 (n + 1)

end A304096

/-! ## A304096.P2157519849104045744

`A304094(n+1)-A177702(n)`
-/

namespace A304096.P2157519849104045744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - A177702 n

end

end A304096.P2157519849104045744

namespace A304096

/-- `A304094(n+1)-A177702(n)` -/
def P2157519849104045744.Spec : Prop :=
  ∀ n, P2157519849104045744.a n = A304096 (n + 1)

end A304096

/-! ## A304096.P4836752582339245990

`A304092(n+1)-A083039(n+1)`
-/

namespace A304096.P4836752582339245990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304092 (n + 1) - A083039 (n + 1)

end

end A304096.P4836752582339245990

namespace A304096

/-- `A304092(n+1)-A083039(n+1)` -/
def P4836752582339245990.Spec : Prop :=
  ∀ n, P4836752582339245990.a n = A304096 (n + 1)

end A304096

/-! ## A304096.P3385621774415544286

`A304094(n+1)-gcd(2, A064614(n+1))`
-/

namespace A304096.P3385621774415544286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304094 (n + 1) - (Int.gcd 2 (A064614 (n + 1)) : ℤ)

end

end A304096.P3385621774415544286

namespace A304096

/-- `A304094(n+1)-gcd(2, A064614(n+1))` -/
def P3385621774415544286.Spec : Prop :=
  ∀ n, P3385621774415544286.a n = A304096 (n + 1)

end A304096

/-!
# A304097: Restricted growth sequence transform of A278222(A302853(n)).

The programs for A304097, there is no canonical definition to state claims against.
-/

/-! ## A304097.P907767007202807937

`A165276(lcm(8, A062691(n+1)))`
-/

namespace A304097.P907767007202807937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165276 (Int.lcm 8 (A062691 (n + 1)))

end

end A304097.P907767007202807937

/-! ## A304097.P4054854345365573244

`A164999(A322931(n)+A089372(n))`
-/

namespace A304097.P4054854345365573244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164999 (A322931 n + A089372 n).toNat

end

end A304097.P4054854345365573244

/-! ## A304097.P9825448242802021899

`A283431(lt[A058207(n+2), A287793(n)])`
-/

namespace A304097.P9825448242802021899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A304097.P9825448242802021899

/-! ## A304097.P14652906836660423031

`A060130(A131383(2*(n+1))+A129417(n))`
-/

namespace A304097.P14652906836660423031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A131383 (2 * (n + 1)) + A129417 n).toNat

end

end A304097.P14652906836660423031

/-!
# A304098: Restricted growth sequence transform of A046523(A282291(n)).

The programs for A304098, there is no canonical definition to state claims against.
-/

/-! ## A304098.P7228726824703932320

`A001511(A215204(2*n)*A309096(n+1))`
-/

namespace A304098.P7228726824703932320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A215204 (2 * n) * A309096 (n + 1)).toNat

end

end A304098.P7228726824703932320

/-!
# A304099: Number of prime divisors (counted with multiplicity) in terms of A282291.

The programs for A304099, there is no canonical definition to state claims against.
-/

/-! ## A304099.P9713555835994961754

`A001222(A282291(n+1))`
-/

namespace A304099.P9713555835994961754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A282291 (n + 1)).toNat

end

end A304099.P9713555835994961754

/-! ## A304099.P15462199729261588488

`∑{e}[A052330(A302853(n)), #]`
-/

namespace A304099.P15462199729261588488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A302853 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A304099.P15462199729261588488

/-! ## A304099.P4088999127487325602

`A139393(∏{e}[A282291(n+1), A253885(#)])`
-/

namespace A304099.P4088999127487325602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139393 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253885 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A304099.P4088999127487325602

/-! ## A304099.P3497558066428505485

`A001222(A052330(A302853(n)))`
-/

namespace A304099.P3497558066428505485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052330 (A302853 n).toNat).toNat

end

end A304099.P3497558066428505485

/-! ## A304099.P17436334090481618451

`∑{d}[A282291(n+1), A001221(A014963(#))]`
-/

namespace A304099.P17436334090481618451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A304099.P17436334090481618451

