import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A334300: Number of distinct nonempty subsequences (not necessarily contiguous) in the n-th composition in standard order (A066099).

The programs for A334300, there is no canonical definition to state claims against.
-/

/-! ## A334300.P6597798114715194727

`A334299(n)-1`
-/

namespace A334300.P6597798114715194727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 n - 1

end

end A334300.P6597798114715194727

/-! ## A334300.P6153998791523124853

`A000401(A334299(n))`
-/

namespace A334300.P6153998791523124853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A334299 n).toNat

end

end A334300.P6153998791523124853

/-! ## A334300.P5907164313315421417

`A057918(A334299(n)²)`
-/

namespace A334300.P5907164313315421417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A334299 n ^ 2).toNat

end

end A334300.P5907164313315421417

/-! ## A334300.P97807336981696724

`A086520(A334299(n)²)`
-/

namespace A334300.P97807336981696724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A334299 n ^ 2).toNat

end

end A334300.P97807336981696724

/-! ## A334300.P18124220860289590880

`A088226(A334299(n)²)`
-/

namespace A334300.P18124220860289590880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A334299 n ^ 2).toNat

end

end A334300.P18124220860289590880

/-! ## A334300.P14210236554558363468

`A259361(A334299(n)²)`
-/

namespace A334300.P14210236554558363468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A334299 n ^ 2).toNat

end

end A334300.P14210236554558363468

/-! ## A334300.P508765791026465301

`A023444(A334299(n)+1)`
-/

namespace A334300.P508765791026465301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A334299 n + 1).toNat

end

end A334300.P508765791026465301

/-! ## A334300.P10018147174658669466

`A289207(A334299(n)+1)`
-/

namespace A334300.P10018147174658669466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A334299 n + 1).toNat

end

end A334300.P10018147174658669466

/-! ## A334300.P3438953668428035255

`A046667(2*A334299(n))`
-/

namespace A334300.P3438953668428035255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A334299 n).toNat

end

end A334300.P3438953668428035255

/-! ## A334300.P7164764058743770402

`A002262(A334299(n)+90)`
-/

namespace A334300.P7164764058743770402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A334299 n + 90).toNat

end

end A334300.P7164764058743770402

/-!
# A334302: Irregular triangle read by rows where row k is the k-th reversed integer partition, if reversed partitions are sorted first by sum, then by length, and finally reverse-lexicographically.

The programs for A334302, there is no canonical definition to state claims against.
-/

/-! ## A334302.P9292492238295195680

`A344091(n)`
-/

namespace A334302.P9292492238295195680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344091 n

end

end A334302.P9292492238295195680

/-! ## A334302.P13482130858199116957

`gcd(A028384(n), A228531(n+1))`
-/

namespace A334302.P13482130858199116957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028384 n) (A228531 (n + 1))

end

end A334302.P13482130858199116957

/-! ## A334302.P10336983600388910418

`A228531(n+1)^A319367(A331736(n+1))`
-/

namespace A334302.P10336983600388910418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228531 (n + 1) : ℚ) ^ (A319367 (A331736 (n + 1)).toNat : ℤ)

end

end A334302.P10336983600388910418

/-! ## A334302.P5155501548928415349

`and(A003064(n), A228531(n+1))`
-/

namespace A334302.P5155501548928415349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003064 n) (A228531 (n + 1))

end

end A334302.P5155501548928415349

/-! ## A334302.P16439988789793751065

`A228531(n+1)%A046016(n+1)`
-/

namespace A334302.P16439988789793751065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228531 (n + 1)) (A046016 (n + 1))

end

end A334302.P16439988789793751065

/-!
# A334305: a(n) is the number of partitions of n of the form [k,k,b(1),b(2),...], where k>=b(1)>b(2)>...>=2.

The programs for A334305, there is no canonical definition to state claims against.
-/

/-! ## A334305.P13946520704209801928

`Δ[A025147(n+2)]%A000009(n)`
-/

namespace A334305.P13946520704209801928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000009 n)

end

end A334305.P13946520704209801928

/-! ## A334305.P7684378250303951504

`Δ[A036469(n+2)]%A025147(n+2)`
-/

namespace A334305.P7684378250303951504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A025147 (n + 2))

end

end A334305.P7684378250303951504

/-! ## A334305.P16843376838885165911

`Δ[A038348(n+2)]%A025147(n+2)`
-/

namespace A334305.P16843376838885165911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A025147 (n + 2))

end

end A334305.P16843376838885165911

/-! ## A334305.P9720020554303658095

`Δ[A096765(n+3)]%A096765(n+3)`
-/

namespace A334305.P9720020554303658095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A096765 (n + 3))

end

end A334305.P9720020554303658095

/-! ## A334305.P8443496646090125845

`A096765(A020705(n))%A025147(n+2)`
-/

namespace A334305.P8443496646090125845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096765 (A020705 n).toNat) (A025147 (n + 2))

end

end A334305.P8443496646090125845

/-! ## A334305.P6401751372934937196

`record[A035457(n)]%A025147(n+2)`
-/

namespace A334305.P6401751372934937196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A025147 (n + 2))

end

end A334305.P6401751372934937196

/-! ## A334305.P9478678679705148909

`record[A032303(n+1)]%A025147(n+2)`
-/

namespace A334305.P9478678679705148909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A025147 (n + 2))

end

end A334305.P9478678679705148909

/-! ## A334305.P12669486362448564105

`Δ[A096765(n+3)]%A096750(n)`
-/

namespace A334305.P12669486362448564105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A096750 n)

end

end A334305.P12669486362448564105

/-!
# A334308: Base phi Niven numbers: numbers divisible by the number of 1's in their base phi representation (A055778).

The programs for A334308, there is no canonical definition to state claims against.
-/

/-! ## A334308.P8722193261257367125

`eq[lcm(n, A055778(n)), A028310(n)]`
-/

namespace A334308.P8722193261257367125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055778 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334308.P8722193261257367125

/-! ## A334308.P10679572710108424946

`record[A000120(A302515(n+1)+1)*A023416(n)]`
-/

namespace A334308.P10679572710108424946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A302515 (n + 1) + 1).toNat * A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334308.P10679572710108424946

/-!
# A334309: Numbers k such that k and k+1 are both base phi Niven numbers (A334308).

The programs for A334309, there is no canonical definition to state claims against.
-/

/-! ## A334309.P16060576459779893192

`∩[A334308(n+1)-1, A334308(n+1)]`
-/

namespace A334309.P16060576459779893192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334308 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334309.P16060576459779893192

/-! ## A334309.P9818355639092936617

`∩[A334308(n+1), A023443(A334308(n+1))]`
-/

namespace A334309.P9818355639092936617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334308 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334309.P9818355639092936617

/-!
# A334310: Starts of runs of 3 consecutive base phi Niven numbers (A334308).

The programs for A334310, there is no canonical definition to state claims against.
-/

/-! ## A334310.P3300730637932605063

`∩[A334309(n+1)-1, A334309(n+1)]`
-/

namespace A334310.P3300730637932605063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334309 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334310.P3300730637932605063

/-!
# A334313: Denominators of the partial sums of the Möbius transform of the harmonic numbers.

The programs for A334313, there is no canonical definition to state claims against.
-/

/-! ## A334313.P4930199688785799561

`A124444(n+2)*A136213(A136212(n))`
-/

namespace A334313.P4930199688785799561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124444 (n + 2) * A136213 (A136212 n).toNat

end

end A334313.P4930199688785799561

/-! ## A334313.P14719342757541985905

`(n+1)*A083346(A208653(n+1))`
-/

namespace A334313.P14719342757541985905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083346 (A208653 (n + 1)).toNat

end

end A334313.P14719342757541985905

/-! ## A334313.P4463271894083295183

`A247651(n)%A247650(A217418(n+1))`
-/

namespace A334313.P4463271894083295183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247651 n) (A247650 (A217418 (n + 1)).toNat)

end

end A334313.P4463271894083295183

/-!
# A334314: Numerators of the partial sums of the Möbius transform of the harmonic numbers.

The programs for A334314, there is no canonical definition to state claims against.
-/

/-! ## A334314.P7966046739725862130

`or(A014973(n+1), A120126(A000330(n)))`
-/

namespace A334314.P7966046739725862130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014973 (n + 1)) (A120126 (A000330 n).toNat)

end

end A334314.P7966046739725862130

/-! ## A334314.P11198938734967666631

`A056239(3*n+1)+A038573(A305868(n+1))`
-/

namespace A334314.P11198938734967666631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (3 * n + 1) + A038573 (A305868 (n + 1)).toNat

end

end A334314.P11198938734967666631

/-!
# A334315: E.g.f. A(x) satisfies: A(x) = x - Sum_{k>=2} p(k) * A(x)^k / k!, where p = A000041 (partition numbers).

The programs for A334315, there is no canonical definition to state claims against.
-/

/-! ## A334315.P4307680252796112511

`A334263(n+1)-A162781(A007299(n))`
-/

namespace A334315.P4307680252796112511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334263 (n + 1) - A162781 (A007299 n).toNat

end

end A334315.P4307680252796112511

/-! ## A334315.P1262606380621793169

`A334263(n+1)-A349797(A087503(n))`
-/

namespace A334315.P1262606380621793169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334263 (n + 1) - A349797 (A087503 n).toNat

end

end A334315.P1262606380621793169

/-! ## A334315.P8681875481373110317

`A334263(n+1)-A202034(A276175(n))`
-/

namespace A334315.P8681875481373110317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334263 (n + 1) - A202034 (A276175 n).toNat

end

end A334315.P8681875481373110317

/-!
# A334316: E.g.f. A(x) satisfies A(x) = x * exp(A(x)) * (1 - A(x)).

The programs for A334316, there is no canonical definition to state claims against.
-/

/-! ## A334316.P8826179213038130463

`A317279(n+1)/(n+1)`
-/

namespace A334316.P8826179213038130463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317279 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A334316.P8826179213038130463

/-! ## A334316.P925772464555032014

`(A035316(A361887(n))-2)*(n²-1)`
-/

namespace A334316.P925772464555032014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035316 (A361887 n).toNat - 2) * ((n ^ 2 : ℤ) - 1)

end

end A334316.P925772464555032014

/-!
# A334317: Expansion of e.g.f. tan(Pi/3 + x*sqrt(3)/2) / sqrt(3).

The programs for A334317, there is no canonical definition to state claims against.
-/

/-! ## A334317.P8490581881226202027

`Δ[A026644(n)]*A080635(n)`
-/

namespace A334317.P8490581881226202027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A080635 n

end

end A334317.P8490581881226202027

/-! ## A334317.P5975045541736918242

`record[A078008(n)]*A080635(n)`
-/

namespace A334317.P5975045541736918242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A080635 n

end

end A334317.P5975045541736918242

/-!
# A334318: Number T(n,k) of integers in base n having exactly k distinct digits such that the number formed by the consecutive subsequence of the initial j digits is divisible by j for all j in {1,...,k}; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A334318, there is no canonical definition to state claims against.
-/

/-! ## A334318.P8590618315846121860

`A122201(A057963(n+2)+A002262(n))`
-/

namespace A334318.P8590618315846121860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (A057963 (n + 2) + A002262 n).toNat

end

end A334318.P8590618315846121860

/-!
# A334320: Number of even integers in base n with exactly two distinct digits.

The programs for A334320, the canonical program `A334320.P8008925581640220930` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334320 has offset 0).

The definition of A334320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334320.P8008925581640220930

`A319701(n+2)+∑[n-2]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A334320

/-- `A319701(n+2)+∑[n-2]` -/
def P8008925581640220930.Spec : Prop :=
  ∀ n, P8008925581640220930.a n = A334320 n

theorem P8008925581640220930.correct : P8008925581640220930.Spec := by
  intro n
  simp only [A334320]

end A334320

/-! ## A334320.P14393493942278426104

`∑[(6*n+4)%A014682(n+1)]`
-/

namespace A334320.P14393493942278426104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * n + 4 : ℤ) (A014682 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334320.P14393493942278426104

namespace A334320

/-- `∑[(6*n+4)%A014682(n+1)]` -/
def P14393493942278426104.Spec : Prop :=
  ∀ n, P14393493942278426104.a n = A334320 n

end A334320

/-! ## A334320.P11560786911767460155

`n*∑[char[2*n]]+1-A004277(n)`
-/

namespace A334320.P11560786911767460155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - A004277 n

end

end A334320.P11560786911767460155

namespace A334320

/-- `n*∑[char[2*n]]+1-A004277(n)` -/
def P11560786911767460155.Spec : Prop :=
  ∀ n, P11560786911767460155.a n = A334320 n

end A334320

/-! ## A334320.P16916804692431995154

`A036487(n)%A061925(n)`
-/

namespace A334320.P16916804692431995154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036487 n) (A061925 n)

end

end A334320.P16916804692431995154

namespace A334320

/-- `A036487(n)%A061925(n)` -/
def P16916804692431995154.Spec : Prop :=
  ∀ n, P16916804692431995154.a n = A334320 n

end A334320

/-! ## A334320.P14888858643994442854

`A100119(n)%A061925(n)`
-/

namespace A334320.P14888858643994442854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100119 n) (A061925 n)

end

end A334320.P14888858643994442854

namespace A334320

/-- `A100119(n)%A061925(n)` -/
def P14888858643994442854.Spec : Prop :=
  ∀ n, P14888858643994442854.a n = A334320 n

end A334320

/-! ## A334320.P16582731515883203314

`A064808(n)%A105343(n)`
-/

namespace A334320.P16582731515883203314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064808 n) (A105343 n)

end

end A334320.P16582731515883203314

namespace A334320

/-- `A064808(n)%A105343(n)` -/
def P16582731515883203314.Spec : Prop :=
  ∀ n, P16582731515883203314.a n = A334320 n

end A334320

/-! ## A334320.P410147576278024633

`A249127(n)%A110331(n)`
-/

namespace A334320.P410147576278024633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249127 n) (A110331 n)

end

end A334320.P410147576278024633

namespace A334320

/-- `A249127(n)%A110331(n)` -/
def P410147576278024633.Spec : Prop :=
  ∀ n, P410147576278024633.a n = A334320 n

end A334320

/-! ## A334320.P8366853201159497049

`A098547(n)%A263511(n)`
-/

namespace A334320.P8366853201159497049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098547 n) (A263511 n)

end

end A334320.P8366853201159497049

namespace A334320

/-- `A098547(n)%A263511(n)` -/
def P8366853201159497049.Spec : Prop :=
  ∀ n, P8366853201159497049.a n = A334320 n

end A334320

/-! ## A334320.P13549054132318090884

`∑[A165900(n)%A060747(n)]`
-/

namespace A334320.P13549054132318090884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165900 n) (A060747 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A334320.P13549054132318090884

namespace A334320

/-- `∑[A165900(n)%A060747(n)]` -/
def P13549054132318090884.Spec : Prop :=
  ∀ n, P13549054132318090884.a n = A334320 n

end A334320

/-! ## A334320.P7721000766032249242

`A105343(n)-A080512(n+1)`
-/

namespace A334320.P7721000766032249242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n - A080512 (n + 1)

end

end A334320.P7721000766032249242

namespace A334320

/-- `A105343(n)-A080512(n+1)` -/
def P7721000766032249242.Spec : Prop :=
  ∀ n, P7721000766032249242.a n = A334320 n

end A334320

/-! ## A334320.P1831736572308097775

`A267529(n)-A130404(n+1)`
-/

namespace A334320.P1831736572308097775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267529 n - A130404 (n + 1)

end

end A334320.P1831736572308097775

namespace A334320

/-- `A267529(n)-A130404(n+1)` -/
def P1831736572308097775.Spec : Prop :=
  ∀ n, P1831736572308097775.a n = A334320 n

end A334320

/-! ## A334320.P14740151160534171872

`A261243(n+1)-A152271(n)`
-/

namespace A334320.P14740151160534171872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261243 (n + 1) - A152271 n

end

end A334320.P14740151160534171872

namespace A334320

/-- `A261243(n+1)-A152271(n)` -/
def P14740151160534171872.Spec : Prop :=
  ∀ n, P14740151160534171872.a n = A334320 n

end A334320

/-! ## A334320.P14917176413913593123

`A386480(n)-A075855(n+1)`
-/

namespace A334320.P14917176413913593123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n - A075855 (n + 1)

end

end A334320.P14917176413913593123

namespace A334320

/-- `A386480(n)-A075855(n+1)` -/
def P14917176413913593123.Spec : Prop :=
  ∀ n, P14917176413913593123.a n = A334320 n

end A334320

/-! ## A334320.P1283256644038318262

`n*A008619(n)-A004273(n)`
-/

namespace A334320.P1283256644038318262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 n - A004273 n

end

end A334320.P1283256644038318262

namespace A334320

/-- `n*A008619(n)-A004273(n)` -/
def P1283256644038318262.Spec : Prop :=
  ∀ n, P1283256644038318262.a n = A334320 n

end A334320

/-! ## A334320.P9975064739737990218

`∑[A004275(n)]-n*A065033(n)`
-/

namespace A334320.P9975064739737990218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A065033 n

end

end A334320.P9975064739737990218

namespace A334320

/-- `∑[A004275(n)]-n*A065033(n)` -/
def P9975064739737990218.Spec : Prop :=
  ∀ n, P9975064739737990218.a n = A334320 n

end A334320

/-! ## A334320.P14105072626005763848

`∑[A004275(n)]-n*A110654(n)`
-/

namespace A334320.P14105072626005763848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) * A110654 n

end

end A334320.P14105072626005763848

namespace A334320

/-- `∑[A004275(n)]-n*A110654(n)` -/
def P14105072626005763848.Spec : Prop :=
  ∀ n, P14105072626005763848.a n = A334320 n

end A334320

/-! ## A334320.P5402092860065237032

`n*A008619(n)-record[A006257(n)]`
-/

namespace A334320.P5402092860065237032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334320.P5402092860065237032

namespace A334320

/-- `n*A008619(n)-record[A006257(n)]` -/
def P5402092860065237032.Spec : Prop :=
  ∀ n, P5402092860065237032.a n = A334320 n

end A334320

/-! ## A334320.P10146018901329122467

`A080476(n+1)-A179894(n+1)`
-/

namespace A334320.P10146018901329122467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A179894 (n + 1)

end

end A334320.P10146018901329122467

namespace A334320

/-- `A080476(n+1)-A179894(n+1)` -/
def P10146018901329122467.Spec : Prop :=
  ∀ n, P10146018901329122467.a n = A334320 n

end A334320

/-! ## A334320.P11708228870704014433

`A333574(n+1)-A063914(n+1)`
-/

namespace A334320.P11708228870704014433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) - A063914 (n + 1)

end

end A334320.P11708228870704014433

namespace A334320

/-- `A333574(n+1)-A063914(n+1)` -/
def P11708228870704014433.Spec : Prop :=
  ∀ n, P11708228870704014433.a n = A334320 n

end A334320

/-! ## A334320.P3046839431343027934

`∑[A004526(A289207(n))]+A004526(n)²`
-/

namespace A334320.P3046839431343027934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A004526 n ^ 2

end

end A334320.P3046839431343027934

namespace A334320

/-- `∑[A004526(A289207(n))]+A004526(n)²` -/
def P3046839431343027934.Spec : Prop :=
  ∀ n, P3046839431343027934.a n = A334320 n

end A334320

/-!
# A334321: Non-palindromic primes.

The programs for A334321, there is no canonical definition to state claims against.
-/

/-! ## A334321.P10905252798422840807

`p?[A334391(n+1)]`
-/

namespace A334321.P10905252798422840807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334321.P10905252798422840807

/-! ## A334321.P10172146244014768158

`filter[A334391(n+1), A010051(#)]`
-/

namespace A334321.P10172146244014768158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334321.P10172146244014768158

/-! ## A334321.P12014264246874107662

`filter[A334391(n+1), A323153(#)]`
-/

namespace A334321.P12014264246874107662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A334321.P12014264246874107662

/-! ## A334321.P2430535236425912078

`filter[A334391(n+1), A327861(#)]`
-/

namespace A334321.P2430535236425912078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A334321.P2430535236425912078

/-! ## A334321.P5395886240061808464

`filter[A334391(n+1), A342460(#)]`
-/

namespace A334321.P5395886240061808464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A334321.P5395886240061808464

/-! ## A334321.P8740084178668492109

`filter[A334391(n+1), A353670(#)]`
-/

namespace A334321.P8740084178668492109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A334321.P8740084178668492109

/-! ## A334321.P12138443038199552847

`filter[A334391(n+1), A358751(#)]`
-/

namespace A334321.P12138443038199552847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A334321.P12138443038199552847

/-! ## A334321.P109454440972142136

`filter[A334391(n+2), A323152(#)]`
-/

namespace A334321.P109454440972142136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A334321.P109454440972142136

/-! ## A334321.P17129465068663202997

`filter[A334391(n+2), A340371(#)]`
-/

namespace A334321.P17129465068663202997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334391 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A334321.P17129465068663202997

/-! ## A334321.P14974730929792907692

`p?[A226778(n+1)]`
-/

namespace A334321.P14974730929792907692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334321.P14974730929792907692

/-! ## A334321.P13409624811120502963

`filter[A226778(n+1), A010051(#)]`
-/

namespace A334321.P13409624811120502963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334321.P13409624811120502963

/-! ## A334321.P4563594871068121671

`filter[A226778(n+1), A323153(#)]`
-/

namespace A334321.P4563594871068121671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A334321.P4563594871068121671

/-! ## A334321.P10452900578980059405

`filter[A226778(n+2), A323152(#)]`
-/

namespace A334321.P10452900578980059405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226778 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A334321.P10452900578980059405

/-! ## A334321.P9521358556562989003

`p?[comp[A061917(n+1)]]`
-/

namespace A334321.P9521358556562989003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A334321.P9521358556562989003

/-! ## A334321.P143932701926501567

`p?[A029742(n+1)]`
-/

namespace A334321.P143932701926501567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334321.P143932701926501567

/-! ## A334321.P4622738889680341829

`filter[A029742(n+1), A010051(#)]`
-/

namespace A334321.P4622738889680341829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334321.P4622738889680341829

/-! ## A334321.P1936169164975942549

`∩[A000040(n+1), A029742(n+1)]`
-/

namespace A334321.P1936169164975942549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334321.P1936169164975942549

/-! ## A334321.P16776627607770059608

`∩[A004139(n+1), A029742(n+1)]`
-/

namespace A334321.P16776627607770059608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334321.P16776627607770059608

/-! ## A334321.P1500884549847746990

`∩[A006005(n+1), A029742(n+1)]`
-/

namespace A334321.P1500884549847746990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334321.P1500884549847746990

/-!
# A334322: Number of endless self-avoiding walks of length n for the square lattice.

The programs for A334322, there is no canonical definition to state claims against.
-/

/-! ## A334322.P17280875093944215310

`∑{d}[n+1, A334324(#)]`
-/

namespace A334322.P17280875093944215310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334324 d

end

end A334322.P17280875093944215310

/-! ## A334322.P8139236362356095702

`4*A018031(A001096(n))`
-/

namespace A334322.P8139236362356095702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A018031 (A001096 n).toNat

end

end A334322.P8139236362356095702

/-!
# A334323: Squared end-to-end distance of irreducible endless self-avoiding walks of length n for the square lattice.

The programs for A334323, there is no canonical definition to state claims against.
-/

/-! ## A334323.P8271445118810856294

`A002024(A057086(n))*A059558(n+1)`
-/

namespace A334323.P8271445118810856294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A057086 n).toNat * A059558 (n + 1)

end

end A334323.P8271445118810856294

/-!
# A334324: Number of irreducible endless self-avoiding walks of length n for the square lattice.

The programs for A334324, there is no canonical definition to state claims against.
-/

/-! ## A334324.P11757770596212725667

`2*(n+1)*A334325(n+1)`
-/

namespace A334324.P11757770596212725667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A334325 (n + 1))

end

end A334324.P11757770596212725667

/-! ## A334324.P8975310605213961

`Δ[A002378(n)]*A334325(n+1)`
-/

namespace A334324.P8975310605213961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334325 (n + 1)

end

end A334324.P8975310605213961

/-! ## A334324.P11367255366437258594

`Δ[A014206(n)]*A334325(n+1)`
-/

namespace A334324.P11367255366437258594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334325 (n + 1)

end

end A334324.P11367255366437258594

/-! ## A334324.P11300494406024838911

`Δ[A048058(n)]*A334325(n+1)`
-/

namespace A334324.P11300494406024838911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334325 (n + 1)

end

end A334324.P11300494406024838911

/-! ## A334324.P2492817208191023205

`Δ[A202018(n)]*A334325(n+1)`
-/

namespace A334324.P2492817208191023205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334325 (n + 1)

end

end A334324.P2492817208191023205

/-!
# A334325: Number of irreducible, unrooted, unoriented self-avoiding chains of length n for the square lattice.

The programs for A334325, there is no canonical definition to state claims against.
-/

/-! ## A334325.P14464293986438648352

`A334324(n+1)/(2*(n+1))`
-/

namespace A334325.P14464293986438648352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334324 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A334325.P14464293986438648352

/-! ## A334325.P16754802688054488329

`abs(A334324(n+1)/Δ[A002378(n)])`
-/

namespace A334325.P16754802688054488329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A334324 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A334325.P16754802688054488329

/-! ## A334325.P9626784021062656291

`floor(A334324(n+1)/A005843(n+1))`
-/

namespace A334325.P9626784021062656291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334324 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)⌋

end

end A334325.P9626784021062656291

/-!
# A334326: Number of endless self-avoiding walks of length n on the simple cubic lattice.

The programs for A334326, there is no canonical definition to state claims against.
-/

/-! ## A334326.P6447181119580532422

`∑{d}[n+1, A334328(#)]`
-/

namespace A334326.P6447181119580532422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334328 d

end

end A334326.P6447181119580532422

/-!
# A334328: Number of irreducible endless self-avoiding walks of length n for the simple cubic lattice.

The programs for A334328, there is no canonical definition to state claims against.
-/

/-! ## A334328.P5278862883217994505

`2*(n+1)*A334329(n+1)`
-/

namespace A334328.P5278862883217994505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A334329 (n + 1))

end

end A334328.P5278862883217994505

/-! ## A334328.P8806097655979135894

`Δ[A002378(n)]*A334329(n+1)`
-/

namespace A334328.P8806097655979135894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334329 (n + 1)

end

end A334328.P8806097655979135894

/-! ## A334328.P10488301156321661932

`Δ[A027688(n)]*A334329(n+1)`
-/

namespace A334328.P10488301156321661932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A334329 (n + 1)

end

end A334328.P10488301156321661932

/-! ## A334328.P14040285859543842014

`A005843(n+1)*A334329(n+1)`
-/

namespace A334328.P14040285859543842014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A334329 (n + 1)

end

end A334328.P14040285859543842014

/-! ## A334328.P11521649215119188315

`∑{d}[n+1, A008683(#)*A334326((n+1)/#)]`
-/

namespace A334328.P11521649215119188315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A334326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334328.P11521649215119188315

/-!
# A334329: Number of irreducible, unrooted, unoriented self-avoiding chains of length n for the simple cubic lattice.

The programs for A334329, there is no canonical definition to state claims against.
-/

/-! ## A334329.P9454059614795489053

`A334328(n+1)/(2*(n+1))`
-/

namespace A334329.P9454059614795489053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334328 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A334329.P9454059614795489053

/-! ## A334329.P7194528718194635004

`abs(A334328(n+1)/Δ[A027688(n)])`
-/

namespace A334329.P7194528718194635004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A334328 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A334329.P7194528718194635004

/-! ## A334329.P16558590616499330018

`floor(A334328(n+1)/Δ[A002378(n)])`
-/

namespace A334329.P16558590616499330018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334328 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A334329.P16558590616499330018

/-!
# A334330: Number of endless self-avoiding walks of length 2*n for the honeycomb lattice.

The programs for A334330, there is no canonical definition to state claims against.
-/

/-! ## A334330.P15622367128940198763

`A063882(A358837(2*(n+1))+A133263(n))`
-/

namespace A334330.P15622367128940198763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (A358837 (2 * (n + 1)) + A133263 n).toNat

end

end A334330.P15622367128940198763

/-! ## A334330.P10267396775963214810

`A335358(A354131(n+1))`
-/

namespace A334330.P10267396775963214810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A354131 (n + 1)).toNat

end

end A334330.P10267396775963214810

/-!
# A334331: Number of endless self-avoiding walks of length n on the triangular lattice.

The programs for A334331, there is no canonical definition to state claims against.
-/

/-! ## A334331.P9938551453484128205

`or(A010696(n), A292670(A000079(n+1)))`
-/

namespace A334331.P9938551453484128205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010696 n) (A292670 (A000079 (n + 1)).toNat)

end

end A334331.P9938551453484128205

/-!
# A334335: Inverse Euler transform of A000568.

The programs for A334335, there is no canonical definition to state claims against.
-/

/-! ## A334335.P6442522744908795547

`Δ[A219652(∑[A005636(n+1)])]`
-/

namespace A334335.P6442522744908795547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005636 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334335.P6442522744908795547

/-! ## A334335.P10662330814275397959

`A366701(A090130(n)-A366701(n))`
-/

namespace A334335.P10662330814275397959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366701 (A090130 n - A366701 n).toNat

end

end A334335.P10662330814275397959

/-!
# A334338: Perimeters of primitive Heronian triangles whose shortest side length is squarefree.

The programs for A334338, there is no canonical definition to state claims against.
-/

/-! ## A334338.P12188496867032669801

`A096468(lt[A010815(n), A326180(n)])`
-/

namespace A334338.P12188496867032669801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334338.P12188496867032669801

/-! ## A334338.P16701793214352925722

`A096468(lt[A262522(n+4), A253606(n+2)])`
-/

namespace A334338.P16701793214352925722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262522 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334338.P16701793214352925722

/-!
# A334340: Decimal representation of n-th iteration of the one-dimensional cellular automaton defined by Rule 434, based on the 4-celled von Neumann neighborhood starting with a single black cell.

The programs for A334340, there is no canonical definition to state claims against.
-/

/-! ## A334340.P163915768343003787

`A000265(A335332(n+1))`
-/

namespace A334340.P163915768343003787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335332 (n + 1)).toNat

end

end A334340.P163915768343003787

/-!
# A334341: a(n) = Sum_{p|n, p prime} (n - p).

The programs for A334341, the canonical program `A334341.P2984648088017996111` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334341 has offset 1).

The definition of A334341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A334341.P2984648088017996111

`(n+1)*A001221(n+1)-A008472(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A334341

/-- `(n+1)*A001221(n+1)-A008472(n+1)` -/
def P2984648088017996111.Spec : Prop :=
  ∀ n, P2984648088017996111.a n = A334341 (n + 1)

theorem P2984648088017996111.correct : P2984648088017996111.Spec := by
  intro n
  simp only [A334341, Nat.add_sub_cancel]

end A334341

/-! ## A334341.P15771885294790484671

`∑{p}[n+1, 1-#+n]`
-/

namespace A334341.P15771885294790484671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ) + (n : ℤ))

end

end A334341.P15771885294790484671

namespace A334341

/-- `∑{p}[n+1, 1-#+n]` -/
def P15771885294790484671.Spec : Prop :=
  ∀ n, P15771885294790484671.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P10847132285711555677

`abs(∑{p}[n+1, xor(n, -1)+#])`
-/

namespace A334341.P10847132285711555677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n), (Int.xor (n : ℤ) (-1) + (p : ℤ))|

end

end A334341.P10847132285711555677

namespace A334341

/-- `abs(∑{p}[n+1, xor(n, -1)+#])` -/
def P10847132285711555677.Spec : Prop :=
  ∀ n, P10847132285711555677.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P8676310910899381943

`-∑{p}[n+1, xor(n, -1)+#]`
-/

namespace A334341.P8676310910899381943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), (Int.xor (n : ℤ) (-1) + (p : ℤ)))

end

end A334341.P8676310910899381943

namespace A334341

/-- `-∑{p}[n+1, xor(n, -1)+#]` -/
def P8676310910899381943.Spec : Prop :=
  ∀ n, P8676310910899381943.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P8240079485838527354

`∑{p}[n+1, (n*#)%(n+1)]%(n+1)²`
-/

namespace A334341.P8240079485838527354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), n * p % (n + 1)) % (n + 1) ^ 2

end

end A334341.P8240079485838527354

namespace A334341

/-- `∑{p}[n+1, (n*#)%(n+1)]%(n+1)²` -/
def P8240079485838527354.Spec : Prop :=
  ∀ n, (P8240079485838527354.a n : ℤ) = A334341 (n + 1)

end A334341

/-! ## A334341.P14650765856399577236

`abs(∑{p}[n+1, A097945(#)+n])`
-/

namespace A334341.P14650765856399577236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ p ∈ Nat.primeFactors (f1 n), (A097945 p + (n : ℤ))|

end

end A334341.P14650765856399577236

namespace A334341

/-- `abs(∑{p}[n+1, A097945(#)+n])` -/
def P14650765856399577236.Spec : Prop :=
  ∀ n, P14650765856399577236.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P8468225336119017728

`A328260(n+1)-A008472(n+1)`
-/

namespace A334341.P8468225336119017728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328260 (n + 1) - A008472 (n + 1)

end

end A334341.P8468225336119017728

namespace A334341

/-- `A328260(n+1)-A008472(n+1)` -/
def P8468225336119017728.Spec : Prop :=
  ∀ n, P8468225336119017728.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P13472837360990514699

`A065967(n+1)-A351371(n+1)`
-/

namespace A334341.P13472837360990514699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - A351371 (n + 1)

end

end A334341.P13472837360990514699

namespace A334341

/-- `A065967(n+1)-A351371(n+1)` -/
def P13472837360990514699.Spec : Prop :=
  ∀ n, P13472837360990514699.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P12738397661160052891

`A349217(n+1)-A349215(n+1)`
-/

namespace A334341.P12738397661160052891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349217 (n + 1) - A349215 (n + 1)

end

end A334341.P12738397661160052891

namespace A334341

/-- `A349217(n+1)-A349215(n+1)` -/
def P12738397661160052891.Spec : Prop :=
  ∀ n, P12738397661160052891.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P5769766505090550569

`n*A001221(n+1)-A055631(n+1)`
-/

namespace A334341.P5769766505090550569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001221 (n + 1) - A055631 (n + 1)

end

end A334341.P5769766505090550569

namespace A334341

/-- `n*A001221(n+1)-A055631(n+1)` -/
def P5769766505090550569.Spec : Prop :=
  ∀ n, P5769766505090550569.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P9169037108737970306

`∑{d}[n+1, A065608(#)*A137851((n+1)/#)]`
-/

namespace A334341.P9169037108737970306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A334341.P9169037108737970306

namespace A334341

/-- `∑{d}[n+1, A065608(#)*A137851((n+1)/#)]` -/
def P9169037108737970306.Spec : Prop :=
  ∀ n, P9169037108737970306.a n = A334341 (n + 1)

end A334341

/-! ## A334341.P2660762490315015165

`log2(∏{p}[n+1, 2^(n+1-#)])`
-/

namespace A334341.P2660762490315015165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ ((n + 1 : ℤ) - (p : ℤ) : ℤ) : ℚ) : ℝ)

end

end A334341.P2660762490315015165

namespace A334341

/-- `log2(∏{p}[n+1, 2^(n+1-#)])` -/
def P2660762490315015165.Spec : Prop :=
  ∀ n, P2660762490315015165.a n = (A334341 (n + 1) : ℝ)

end A334341

/-!
# A334342: Tatsuru Watanabe's set of 47 squarefree numbers whose reciprocals add to 1, with the property that each number has exactly two distinct prime factors.

The programs for A334342, there is no canonical definition to state claims against.
-/

/-! ## A334342.P12620030441516955906

`A006881(lt[A351977(n), A126316(n)])`
-/

namespace A334342.P12620030441516955906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A334342.P12620030441516955906

/-! ## A334342.P3810543960401059498

`eq[A280710(n+1), A307608(n+1)]+1`
-/

namespace A334342.P3810543960401059498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334342.P3810543960401059498

/-! ## A334342.P4615670261361152438

`A061767(eq[A280710(n+1), A307608(n+1)])`
-/

namespace A334342.P4615670261361152438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A334342.P4615670261361152438

/-!
# A334344: Binary Moran numbers: numbers k such that k divided by its binary weight (A000120) is a prime number.

The programs for A334344, the canonical program `A334344.P8459068774756560917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334344 has offset 1).

The definition of A334344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334344.P8459068774756560917

`eq[A000120(n), A052126(A143051(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A334344

/-- `eq[A000120(n), A052126(A143051(n+1))]` -/
def P8459068774756560917.Spec : Prop :=
  ∀ n, (P8459068774756560917.a n : ℤ) = A334344 (n + 1)

theorem P8459068774756560917.correct : P8459068774756560917.Spec := by
  intro n
  simp only [A334344, Nat.add_sub_cancel]

end A334344

/-! ## A334344.P16616242561261977100

`eq[A000120(n+1), A070821(2*(n+1))]+1`
-/

namespace A334344.P16616242561261977100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A334344.P16616242561261977100

namespace A334344

/-- `eq[A000120(n+1), A070821(2*(n+1))]+1` -/
def P16616242561261977100.Spec : Prop :=
  ∀ n, (P16616242561261977100.a n : ℤ) = A334344 (n + 1)

end A334344

/-! ## A334344.P15476454982680387942

`eq[A000120(n), A070821(A004277(n))]`
-/

namespace A334344.P15476454982680387942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334344.P15476454982680387942

namespace A334344

/-- `eq[A000120(n), A070821(A004277(n))]` -/
def P15476454982680387942.Spec : Prop :=
  ∀ n, (P15476454982680387942.a n : ℤ) = A334344 (n + 1)

end A334344

/-! ## A334344.P5111162386324995960

`eq[32-A131762(n), A070821(A004277(n))]`
-/

namespace A334344.P5111162386324995960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - A131762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A334344.P5111162386324995960

namespace A334344

/-- `eq[32-A131762(n), A070821(A004277(n))]` -/
def P5111162386324995960.Spec : Prop :=
  ∀ n, (P5111162386324995960.a n : ℤ) = A334344 (n + 1)

end A334344

/-! ## A334344.P10020178316452997054

`eq[n, A070821(A004277(n))+A011371(n)]`
-/

namespace A334344.P10020178316452997054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A004277 n).toNat + A011371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334344.P10020178316452997054

namespace A334344

/-- `eq[n, A070821(A004277(n))+A011371(n)]` -/
def P10020178316452997054.Spec : Prop :=
  ∀ n, (P10020178316452997054.a n : ℤ) = A334344 (n + 1)

end A334344

/-!
# A334345: Numbers k such that k and k+1 are both binary Moran numbers (A334344).

The programs for A334345, the canonical program `A334345.P15582854565643300328` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334345 has offset 1).

The definition of A334345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334345.P15582854565643300328

`∩[A334344(n+1)-1, A334344(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A334345

/-- `∩[A334344(n+1)-1, A334344(n+1)]` -/
def P15582854565643300328.Spec : Prop :=
  ∀ n, (P15582854565643300328.a n : ℤ) = A334345 (n + 1)

theorem P15582854565643300328.correct : P15582854565643300328.Spec := by
  intro n
  simp only [A334345, Nat.add_sub_cancel]

end A334345

/-! ## A334345.P2962200086301123347

`∩[A334344(n+1), A023443(A334344(n+1))]`
-/

namespace A334345.P2962200086301123347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334344 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334345.P2962200086301123347

namespace A334345

/-- `∩[A334344(n+1), A023443(A334344(n+1))]` -/
def P2962200086301123347.Spec : Prop :=
  ∀ n, (P2962200086301123347.a n : ℤ) = A334345 (n + 1)

end A334345

/-! ## A334345.P15566324199437175277

`A143051(∩[A334344(n+1)+1, A334344(n+1)])`
-/

namespace A334345.P15566324199437175277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334344 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A334345.P15566324199437175277

namespace A334345

/-- `A143051(∩[A334344(n+1)+1, A334344(n+1)])` -/
def P15566324199437175277.Spec : Prop :=
  ∀ n, P15566324199437175277.a n = A334345 (n + 1)

end A334345

/-!
# A334347: Number of r X s rectangles such that r + s = 2n, where exactly one of r or s is a positive square.

The programs for A334347, there is no canonical definition to state claims against.
-/

/-! ## A334347.P18318485394320430093

`floor(sqrt(2*(n+1))-A002654(n+1))`
-/

namespace A334347.P18318485394320430093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * (n + 1) : ℝ) - (A002654 (n + 1) : ℝ)⌋

end

end A334347.P18318485394320430093

/-! ## A334347.P9129980266471413975

`A172471(n+1)-A002654(n+1)`
-/

namespace A334347.P9129980266471413975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (n + 1) - A002654 (n + 1)

end

end A334347.P9129980266471413975

/-! ## A334347.P5332823922742123005

`A000196(2*(n+1))-A002654(n+1)`
-/

namespace A334347.P5332823922742123005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * (n + 1)) - A002654 (n + 1)

end

end A334347.P5332823922742123005

/-! ## A334347.P12648974783894498207

`∑[char[A004526(n²)+n]]-A002654(n+1)`
-/

namespace A334347.P12648974783894498207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n ^ 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002654 (n + 1)

end

end A334347.P12648974783894498207

/-! ## A334347.P1500141495549554861

`A000196(2*n+1)-A063725(2*(n+1))`
-/

namespace A334347.P1500141495549554861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * n + 1) - A063725 (2 * (n + 1))

end

end A334347.P1500141495549554861

/-!
# A334348: The terms in the Zeckendorf representation of T(n, k) correspond to the terms in common in the Zeckendorf representations of n and of k; square array T(n, k) read by antidiagonals, n, k >= 0.

The programs for A334348, there is no canonical definition to state claims against.
-/

/-! ## A334348.P3100425387592314373

`A227839(A099927(n))`
-/

namespace A334348.P3100425387592314373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227839 (A099927 n).toNat

end

end A334348.P3100425387592314373

/-! ## A334348.P5442998943272182141

`and(A273371(n+1), A356969(n))`
-/

namespace A334348.P5442998943272182141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273371 (n + 1)) (A356969 n)

end

end A334348.P5442998943272182141

/-! ## A334348.P17612481445901017558

`A067059(n)%A086617(A069322(n))`
-/

namespace A334348.P17612481445901017558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067059 n) (A086617 (A069322 n).toNat)

end

end A334348.P17612481445901017558

/-! ## A334348.P14318379817719799945

`A122289(n)%A135010(A022166(n))`
-/

namespace A334348.P14318379817719799945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122289 n) (A135010 (A022166 n).toNat)

end

end A334348.P14318379817719799945

/-! ## A334348.P4286700903389346538

`A224697(n)%A135010(A022166(n))`
-/

namespace A334348.P4286700903389346538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224697 n) (A135010 (A022166 n).toNat)

end

end A334348.P4286700903389346538

/-!
# A334349: Total area of all r X s rectangles with integer side lengths such that r + s = n, r < s and (s - r) | (s * r).

The programs for A334349, there is no canonical definition to state claims against.
-/

/-! ## A334349.P5210398179531622451

`A045636(A356192(2*n+5))%A008965(n+1)`
-/

namespace A334349.P5210398179531622451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045636 (A356192 (2 * n + 5)).toNat) (A008965 (n + 1))

end

end A334349.P5210398179531622451

/-! ## A334349.P14982919723341122360

`A272305(A272270(3*n+4))%A104221(n+3)`
-/

namespace A334349.P14982919723341122360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272305 (A272270 (3 * n + 4)).toNat) (A104221 (n + 3))

end

end A334349.P14982919723341122360

/-!
# A334351: Total number of graceful labelings of the n-centipede graph.

The programs for A334351, there is no canonical definition to state claims against.
-/

/-! ## A334351.P2740256072020196081

`(2*n+1)*A319566(2*n+1)+1`
-/

namespace A334351.P2740256072020196081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A319566 (2 * n + 1) + 1

end

end A334351.P2740256072020196081

/-!
# A334352: The least positive integer k such that there exists a set of n distinct integers less than or equal to k with this property: the sum of every two members of this set divides the product of all the members of this set.

The programs for A334352, there is no canonical definition to state claims against.
-/

/-! ## A334352.P2237635819302571261

`A020639(A324006(n+5))*A031218(2*n+1)`
-/

namespace A334352.P2237635819302571261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A324006 (n + 5)).toNat * A031218 (2 * n + 1)

end

end A334352.P2237635819302571261

/-!
# A334356: Number of nonequivalent proper colorings of the vertices of a cube using at most n colors up to rotations and reflections of the cube.

The programs for A334356, the canonical program `A334356.P2881513852933403159` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334356 has offset 1).

The definition of A334356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334356.P2881513852933403159

`(n+1)*n*((n+1)*((n+1)*((n+1)*((n+1)*((n-10)*(n+1)+61)-195)+384)-428)+216)/48`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334356

/-- `(n+1)*n*((n+1)*((n+1)*((n+1)*((n+1)*((n-10)*(n+1)+61)-195)+384)-428)+216)/48` -/
def P2881513852933403159.Spec : Prop :=
  ∀ n, P2881513852933403159.a n = (A334356 (n + 1) : ℚ)

end A334356

/-!
# A334360: Anti-Waring numbers: least number k such that k and all larger numbers can be expressed as the sum of one or more distinct n-th powers.

The programs for A334360, there is no canonical definition to state claims against.
-/

/-! ## A334360.P13234095206121378453

`A001661(n+2)+1`
-/

namespace A334360.P13234095206121378453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001661 (n + 2) + 1

end

end A334360.P13234095206121378453

/-!
# A334361: Number of r X s rectangles with squarefree side lengths such that r < s, r + s = 2n and r | s.

The programs for A334361, there is no canonical definition to state claims against.
-/

/-! ## A334361.P12572094926193047988

`A327567(n+1)-char[∏{p}[n, #]-1]`
-/

namespace A334361.P12572094926193047988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334361.P12572094926193047988

/-! ## A334361.P14718009133380593405

`A327567(n+1)-A008966(n+1)`
-/

namespace A334361.P14718009133380593405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - A008966 (n + 1)

end

end A334361.P14718009133380593405

/-! ## A334361.P1287829456524322849

`A327567(n+1)-A002033(n)%2`
-/

namespace A334361.P1287829456524322849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - Int.tmod (A002033 n) 2

end

end A334361.P1287829456524322849

/-! ## A334361.P10174571996444735329

`A327567(n+1)-abs(A008683(n+1))`
-/

namespace A334361.P10174571996444735329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - |A008683 (n + 1)|

end

end A334361.P10174571996444735329

/-! ## A334361.P6597574575595554558

`A330868(2*(n+1))-A008966(n+1)`
-/

namespace A334361.P6597574575595554558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330868 (2 * (n + 1)) - A008966 (n + 1)

end

end A334361.P6597574575595554558

/-! ## A334361.P7627678544939988042

`A327567(n+1)-abs(A007423(n+1)-1)`
-/

namespace A334361.P7627678544939988042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - |A007423 (n + 1) - 1|

end

end A334361.P7627678544939988042

/-! ## A334361.P14989306465662815127

`A327567(n+1)-abs(A080847(n+1)-2)`
-/

namespace A334361.P14989306465662815127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - |A080847 (n + 1) - 2|

end

end A334361.P14989306465662815127

/-! ## A334361.P1335462956537515156

`A330868(2*(n+1))-abs(A008683(n+1))`
-/

namespace A334361.P1335462956537515156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330868 (2 * (n + 1)) - |A008683 (n + 1)|

end

end A334361.P1335462956537515156

/-! ## A334361.P8150214853547876378

`A327567(n+1)-char[A005117(n+1)-1]`
-/

namespace A334361.P8150214853547876378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327567 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A334361.P8150214853547876378

/-!
# A334368: Number of proper divisors d of n such that d, n/d and n-d are all squarefree.

The programs for A334368, there is no canonical definition to state claims against.
-/

/-! ## A334368.P15954434513506254417

`ceil(A332696(n+1)/A006530(A332666(n)))`
-/

namespace A334368.P15954434513506254417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332696 (n + 1) : ℚ) / (A006530 (A332666 n).toNat : ℚ)⌉

end

end A334368.P15954434513506254417

/-! ## A334368.P4960077116478220398

`A196564(A007956(n+1)*A008587(n))`
-/

namespace A334368.P4960077116478220398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A007956 (n + 1) * A008587 n).toNat

end

end A334368.P4960077116478220398

/-! ## A334368.P10076231250691550187

`A156595(2*n)+A156595(A000045(n+4))`
-/

namespace A334368.P10076231250691550187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156595 (2 * n) + A156595 (A000045 (n + 4)).toNat

end

end A334368.P10076231250691550187

/-! ## A334368.P4691558512620532352

`A288508(A197365(n))+A008966(3*n+4)`
-/

namespace A334368.P4691558512620532352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A197365 n).toNat + A008966 (3 * n + 4)

end

end A334368.P4691558512620532352

/-! ## A334368.P3403779990041219712

`A178960(A178971(n+1))%A294903(n+1)`
-/

namespace A334368.P3403779990041219712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178960 (A178971 (n + 1)).toNat) (A294903 (n + 1))

end

end A334368.P3403779990041219712

/-!
# A334370: Expansion of e.g.f. Product_{k>=1} (1 + x^prime(k) / prime(k)!).

The programs for A334370, there is no canonical definition to state claims against.
-/

/-! ## A334370.P2142450951768367722

`A343174(A317447(n))-A047010(n)`
-/

namespace A334370.P2142450951768367722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343174 (A317447 n).toNat - A047010 n

end

end A334370.P2142450951768367722

/-!
# A334371: Starts of runs of 3 consecutive Moran numbers (A001101).

The programs for A334371, there is no canonical definition to state claims against.
-/

/-! ## A334371.P6110372691242904379

`∩[A085775(n+1)-1, A085775(n+1)]`
-/

namespace A334371.P6110372691242904379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085775 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334371.P6110372691242904379

/-!
# A334372: Starts of runs of 4 consecutive Moran numbers (A001101).

The programs for A334372, there is no canonical definition to state claims against.
-/

/-! ## A334372.P12950114573715251323

`∩[A334371(n+1)-1, A334371(n+1)]`
-/

namespace A334372.P12950114573715251323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334371 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334372.P12950114573715251323

/-!
# A334373: Starts of runs of 5 consecutive Moran numbers (A001101).

The programs for A334373, there is no canonical definition to state claims against.
-/

/-! ## A334373.P11273659831613378269

`∩[A334372(n+1)-1, A334372(n+1)]`
-/

namespace A334373.P11273659831613378269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334372 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334373.P11273659831613378269

/-!
# A334375: a(n) equals the n-th Moran number (A001101) divided by its sum of digits.

The programs for A334375, there is no canonical definition to state claims against.
-/

/-! ## A334375.P5390674514346905304

`A001101(n+1)/A007953(A001101(n+1))`
-/

namespace A334375.P5390674514346905304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (A007953 (A001101 (n + 1)).toNat : ℚ)

end

end A334375.P5390674514346905304

/-! ## A334375.P2669630168621279127

`A001101(n+1)/A334376(n+1)`
-/

namespace A334375.P2669630168621279127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (A334376 (n + 1) : ℚ)

end

end A334375.P2669630168621279127

/-! ## A334375.P14477441051859531317

`A006530(A001101(n+1)%∑[A038366(n+1)])`
-/

namespace A334375.P14477441051859531317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A001101 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A334375.P14477441051859531317

/-! ## A334375.P12332405407806275613

`A006530(A001101(n+1))-A010051(2*(n+1))`
-/

namespace A334375.P12332405407806275613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001101 (n + 1)).toNat - A010051 (2 * (n + 1))

end

end A334375.P12332405407806275613

/-! ## A334375.P6618000134396693125

`A006530(A001101(n+1))-A010052(A006530(n+1))`
-/

namespace A334375.P6618000134396693125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001101 (n + 1)).toNat - A010052 (A006530 (n + 1)).toNat

end

end A334375.P6618000134396693125

/-! ## A334375.P7674542176816343928

`p?[A113315(n+1)]`
-/

namespace A334375.P7674542176816343928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334375.P7674542176816343928

/-! ## A334375.P988941453730809974

`filter[A113315(n+1), A010051(#)]`
-/

namespace A334375.P988941453730809974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A334375.P988941453730809974

/-! ## A334375.P2993003934317459062

`A110367(A001101(n+1))`
-/

namespace A334375.P2993003934317459062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A001101 (n + 1)).toNat

end

end A334375.P2993003934317459062

/-! ## A334375.P9452995505457389793

`p?[A110367(A005349(n+1))]`
-/

namespace A334375.P9452995505457389793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334375.P9452995505457389793

/-! ## A334375.P5784345036950134259

`p?[A110367(n+1)]`
-/

namespace A334375.P5784345036950134259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A334375.P5784345036950134259

/-! ## A334375.P5787845229924653276

`A059514(2*A001101(n+1)-A001101(n+1))`
-/

namespace A334375.P5787845229924653276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (2 * A001101 (n + 1) - A001101 (n + 1)).toNat

end

end A334375.P5787845229924653276

/-!
# A334376: a(n) is the sum of digits of the n-th Moran number (A001101).

The programs for A334376, there is no canonical definition to state claims against.
-/

/-! ## A334376.P5871739130716804648

`A007953(A001101(n+1))`
-/

namespace A334376.P5871739130716804648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A001101 (n + 1)).toNat

end

end A334376.P5871739130716804648

/-! ## A334376.P3398122433366412931

`A001101(n+1)/A334375(n+1)`
-/

namespace A334376.P3398122433366412931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (A334375 (n + 1) : ℚ)

end

end A334376.P3398122433366412931

/-! ## A334376.P13251627678425545853

`A001101(n+1)/p?[A113315(n+1)]`
-/

namespace A334376.P13251627678425545853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A334376.P13251627678425545853

/-! ## A334376.P12906848313855882365

`A001101(n+1)/p?[A110367(A005349(n+1))]`
-/

namespace A334376.P12906848313855882365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A005349 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A334376.P12906848313855882365

/-! ## A334376.P11143453921098636915

`A001101(n+1)/p?[A110367(n+1)]`
-/

namespace A334376.P11143453921098636915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001101 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A334376.P11143453921098636915

/-! ## A334376.P8075314472243720775

`A004092(5*A001101(n+1))`
-/

namespace A334376.P8075314472243720775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A001101 (n + 1)).toNat

end

end A334376.P8075314472243720775

/-! ## A334376.P13319287636418132125

`A062329(10*A001101(n+1))`
-/

namespace A334376.P13319287636418132125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (10 * A001101 (n + 1)).toNat

end

end A334376.P13319287636418132125

/-! ## A334376.P3114274262861586027

`A333830(A001101(2*n+1-n))`
-/

namespace A334376.P3114274262861586027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333830 (A001101 (2 * n + 1 - n)).toNat

end

end A334376.P3114274262861586027

/-!
# A334377: Irregular triangle read by rows: T(n,k) is the number of partitions of k into distinct parts p such that 2 <= p <= n.

The programs for A334377, there is no canonical definition to state claims against.
-/

/-! ## A334377.P16439608383323828128

`A320079(A294186(2*(n+1)*a(n-1)+1))` with `a(0)=1`
-/

namespace A334377.P16439608383323828128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320079 (A294186 ((2 * (n + 1) : ℤ) * a (n - 1) + 1).toNat).toNat

end

end A334377.P16439608383323828128

/-! ## A334377.P1466824926435404453

`and(1, A174110(comp[∑[n-2]]+1))`
-/

namespace A334377.P1466824926435404453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A174110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1))

end

end A334377.P1466824926435404453

/-! ## A334377.P13855478073176707861

`A248863(A314618(n+1))`
-/

namespace A334377.P13855478073176707861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248863 (A314618 (n + 1)).toNat

end

end A334377.P13855478073176707861

/-! ## A334377.P11218354172491154244

`A120525(A332094(n+3))`
-/

namespace A334377.P11218354172491154244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (A332094 (n + 3)).toNat

end

end A334377.P11218354172491154244

/-! ## A334377.P14428236047683670230

`A071027(A141759(n)+47)`
-/

namespace A334377.P14428236047683670230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A141759 n + 47).toNat

end

end A334377.P14428236047683670230

/-!
# A334382: Least k whose set of divisors contains exactly n Pythagorean triples, or 0 if no such k exists.

The programs for A334382, there is no canonical definition to state claims against.
-/

/-! ## A334382.P242140394069144686

`60*A140635(record[A140648(n)])`
-/

namespace A334382.P242140394069144686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  60 * A140635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A334382.P242140394069144686

/-! ## A334382.P12561583831951704907

`A008588(5*A187941(n+1))`
-/

namespace A334382.P12561583831951704907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (5 * A187941 (n + 1)).toNat

end

end A334382.P12561583831951704907

/-! ## A334382.P3781340022725979707

`A314353(6*A187941(n+1))`
-/

namespace A334382.P3781340022725979707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314353 (6 * A187941 (n + 1)).toNat

end

end A334382.P3781340022725979707

/-! ## A334382.P18223362160758118570

`A008458(10*A005179(n+1))`
-/

namespace A334382.P18223362160758118570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (10 * A005179 (n + 1)).toNat

end

end A334382.P18223362160758118570

/-! ## A334382.P12963547998040833133

`A008588(10*A005179(n+1))`
-/

namespace A334382.P12963547998040833133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (10 * A005179 (n + 1)).toNat

end

end A334382.P12963547998040833133

/-!
# A334384: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, a(3*n-2), a(3*n-1) and a(3*n) are in geometric progression.

The programs for A334384, there is no canonical definition to state claims against.
-/

/-! ## A334384.P5810873452479889438

`A225055(n+1)-A185284(A269303(n+1))`
-/

namespace A334384.P5810873452479889438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225055 (n + 1) - A185284 (A269303 (n + 1)).toNat

end

end A334384.P5810873452479889438

/-!
# A334386: a(n) is the number of ways to choose 3 points in a size n tetrahedral grid in such a way that the three points form an equilateral triangle that touches all four sides of the tetrahedron.

The programs for A334386, there is no canonical definition to state claims against.
-/

/-! ## A334386.P12943761381984189647

`4*A220400(A168057(n))`
-/

namespace A334386.P12943761381984189647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A220400 (A168057 n).toNat

end

end A334386.P12943761381984189647

/-!
# A334387: The difference version of the 'Decade transform' : to obtain a(n) write n as a sum of its power-of-ten parts and then continue to calculate the absolute value of the difference between the adjacent parts until a single number remains.

The programs for A334387, there is no canonical definition to state claims against.
-/

/-! ## A334387.P3394863533872667109

`abs(2*n%10-n)`
-/

namespace A334387.P3394863533872667109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * (n % 10) : ℕ) : ℤ) - (n : ℤ)|

end

end A334387.P3394863533872667109

/-! ## A334387.P6819158047218012207

`abs(A073835(n))`
-/

namespace A334387.P6819158047218012207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073835 n|

end

end A334387.P6819158047218012207

/-! ## A334387.P3331335468838764920

`abs(A355675(n))`
-/

namespace A334387.P3331335468838764920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355675 n|

end

end A334387.P3331335468838764920

/-! ## A334387.P7122165205106870087

`n-2*A217657(n)`
-/

namespace A334387.P7122165205106870087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A217657 n

end

end A334387.P7122165205106870087

/-! ## A334387.P16758563665654685453

`abs(2*A010879(n)-n)`
-/

namespace A334387.P16758563665654685453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A010879 n - (n : ℤ)|

end

end A334387.P16758563665654685453

/-! ## A334387.P15188734199458692477

`abs(n-∑{digits}[n, #]-A055017(n))`
-/

namespace A334387.P15188734199458692477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A055017 n|

end

end A334387.P15188734199458692477

/-! ## A334387.P11852173487632097517

`A225693(n)+A066568(n)`
-/

namespace A334387.P11852173487632097517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n + A066568 n

end

end A334387.P11852173487632097517

/-! ## A334387.P1542789826563505339

`A262037(n)-A053392(n)`
-/

namespace A334387.P1542789826563505339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n - A053392 n

end

end A334387.P1542789826563505339

/-! ## A334387.P18091846120563199421

`A262037(n)-A093882(n)`
-/

namespace A334387.P18091846120563199421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n - A093882 n

end

end A334387.P18091846120563199421

/-! ## A334387.P2604977701698371750

`A262037(n)-A138953(n)`
-/

namespace A334387.P2604977701698371750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 n - A138953 n

end

end A334387.P2604977701698371750

/-!
# A334391: Numbers whose only palindromic divisor is 1.

The programs for A334391, there is no canonical definition to state claims against.
-/

/-! ## A334391.P2443882756342487185

`eq[1, A087999(n+1)]+1`
-/

namespace A334391.P2443882756342487185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334391.P2443882756342487185

/-! ## A334391.P16339925429648910801

`eq[1, A087990(n+1)]+1`
-/

namespace A334391.P16339925429648910801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334391.P16339925429648910801

/-! ## A334391.P10884109231352468123

`eq[1, A088000(n+1)]+1`
-/

namespace A334391.P10884109231352468123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334391.P10884109231352468123

/-! ## A334391.P13258008506393767639

`eq[1, A093030(n+1)]+1`
-/

namespace A334391.P13258008506393767639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334391.P13258008506393767639

/-! ## A334391.P8758487910570839696

`eq[1, A184392(n+1)]+1`
-/

namespace A334391.P8758487910570839696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A334391.P8758487910570839696

/-! ## A334391.P16992644066788591232

`record[(2*n+1)/A088000(2*n+1)]`
-/

namespace A334391.P16992644066788591232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A088000 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P16992644066788591232

/-! ## A334391.P16023610072692114711

`record[A132740(n+1)/A093030(n+1)]`
-/

namespace A334391.P16023610072692114711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132740 (n + 1) : ℚ) / (A093030 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P16023610072692114711

/-! ## A334391.P10989347701785155288

`record[A000027(n+1)/A088000(n+1)²]`
-/

namespace A334391.P10989347701785155288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A088000 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P10989347701785155288

/-! ## A334391.P2527993853780374142

`record[(4*n+2)/A005843(A093030(2*n+1))]`
-/

namespace A334391.P2527993853780374142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (A005843 (A093030 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P2527993853780374142

/-! ## A334391.P7695869895871441660

`eq[n, A028310(n)*A087990(A028310(n))]`
-/

namespace A334391.P7695869895871441660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A087990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A334391.P7695869895871441660

/-! ## A334391.P13362829428585397598

`record[A014688(n+1)-A000040(n+1)*A093030(n+1)]`
-/

namespace A334391.P13362829428585397598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A000040 (n + 1) * A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P13362829428585397598

/-! ## A334391.P14205919500821346360

`record[A008619(n)/A088000(A008619(n))²]`
-/

namespace A334391.P14205919500821346360
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A088000 (A008619 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334391.P14205919500821346360

/-!
# A334392: Numbers m such that the LCM of their palindromic divisors is neither 1 nor m.

The programs for A334392, there is no canonical definition to state claims against.
-/

/-! ## A334392.P14842320221969762786

`∩[A002808(n+1), comp[A087999(n+1)]]`
-/

namespace A334392.P14842320221969762786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A334392.P14842320221969762786

/-! ## A334392.P5479422794752421360

`∩[A018252(n+1), comp[A334139(n+1)]]`
-/

namespace A334392.P5479422794752421360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334139 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A334392.P5479422794752421360

/-! ## A334392.P4921962012078847201

`lt[A087999(n+1), A191558(n+1)]+1`
-/

namespace A334392.P4921962012078847201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A334392.P4921962012078847201

/-! ## A334392.P12578227745642446764

`lt[A087999(A028310(n)), A072480(n)]`
-/

namespace A334392.P12578227745642446764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A334392.P12578227745642446764

/-!
# A334393: Numbers of the form p^q where p and q are either 1 or prime.

The programs for A334393, the canonical program `A334393.P7657371225357082725` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334393 has offset 1).

The definition of A334393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A334393.P10832668448959362136

`∪[A008578(n+1), A053810(n+1)]`
-/

namespace A334393.P10832668448959362136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P10832668448959362136

namespace A334393

/-- `∪[A008578(n+1), A053810(n+1)]` -/
def P10832668448959362136.Spec : Prop :=
  ∀ n, (P10832668448959362136.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P1892321628856934364

`∪[A033946(n+1), A053810(n+1)]`
-/

namespace A334393.P1892321628856934364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P1892321628856934364

namespace A334393

/-- `∪[A033946(n+1), A053810(n+1)]` -/
def P1892321628856934364.Spec : Prop :=
  ∀ n, (P1892321628856934364.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P10550751786455595328

`∪[A046022(n+1), A053810(n+1)]`
-/

namespace A334393.P10550751786455595328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P10550751786455595328

namespace A334393

/-- `∪[A046022(n+1), A053810(n+1)]` -/
def P10550751786455595328.Spec : Prop :=
  ∀ n, (P10550751786455595328.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P8963012837117389081

`∪[A053810(n+1), A067126(n+1)]`
-/

namespace A334393.P8963012837117389081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P8963012837117389081

namespace A334393

/-- `∪[A053810(n+1), A067126(n+1)]` -/
def P8963012837117389081.Spec : Prop :=
  ∀ n, (P8963012837117389081.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P7657371225357082725

`∩[A164336(n+1), A384419(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A334393

/-- `∩[A164336(n+1), A384419(n+1)]` -/
def P7657371225357082725.Spec : Prop :=
  ∀ n, (P7657371225357082725.a n : ℤ) = A334393 (n + 1)

theorem P7657371225357082725.correct : P7657371225357082725.Spec := by
  intro n
  simp only [A334393, Nat.add_sub_cancel]

end A334393

/-! ## A334393.P10003878068152298497

`∩[A000961(n+1), A390439(n+1)]`
-/

namespace A334393.P10003878068152298497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P10003878068152298497

namespace A334393

/-- `∩[A000961(n+1), A390439(n+1)]` -/
def P10003878068152298497.Spec : Prop :=
  ∀ n, (P10003878068152298497.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P15117888965102367888

`∩[A164336(n+1), A390439(n+1)]`
-/

namespace A334393.P15117888965102367888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P15117888965102367888

namespace A334393

/-- `∩[A164336(n+1), A390439(n+1)]` -/
def P15117888965102367888.Spec : Prop :=
  ∀ n, (P15117888965102367888.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P12241164055180303235

`∩[A384419(n+1), A390439(n+1)]`
-/

namespace A334393.P12241164055180303235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P12241164055180303235

namespace A334393

/-- `∩[A384419(n+1), A390439(n+1)]` -/
def P12241164055180303235.Spec : Prop :=
  ∀ n, (P12241164055180303235.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P7926023570821409094

`∩[A164336(n+1), A209061(n+1)]`
-/

namespace A334393.P7926023570821409094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A334393.P7926023570821409094

namespace A334393

/-- `∩[A164336(n+1), A209061(n+1)]` -/
def P7926023570821409094.Spec : Prop :=
  ∀ n, (P7926023570821409094.a n : ℤ) = A334393 (n + 1)

end A334393

/-! ## A334393.P10824943916569912194

`filter[A390439(n+1), A010055(#)]`
-/

namespace A334393.P10824943916569912194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A334393.P10824943916569912194

namespace A334393

/-- `filter[A390439(n+1), A010055(#)]` -/
def P10824943916569912194.Spec : Prop :=
  ∀ n, P10824943916569912194.a n = A334393 (n + 1)

end A334393

/-! ## A334393.P12447060507462497176

`filter[A164336(n+1), A370598(#)]`
-/

namespace A334393.P12447060507462497176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A334393.P12447060507462497176

namespace A334393

/-- `filter[A164336(n+1), A370598(#)]` -/
def P12447060507462497176.Spec : Prop :=
  ∀ n, P12447060507462497176.a n = A334393 (n + 1)

end A334393

/-! ## A334393.P3299042291516747898

`record[A020639(n+1)^A125030(n+1)]`
-/

namespace A334393.P3299042291516747898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A125030 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A334393.P3299042291516747898

namespace A334393

/-- `record[A020639(n+1)^A125030(n+1)]` -/
def P3299042291516747898.Spec : Prop :=
  ∀ n, P3299042291516747898.a n = (A334393 (n + 1) : ℚ)

end A334393

/-!
# A334394: Triangle read by rows: T(n,k) is the number of ordered triples of n-permutations with exactly k common descents, n>=0, 0<=k<=max(0,n-1).

The programs for A334394, there is no canonical definition to state claims against.
-/

/-! ## A334394.P4819317277279240405

`A146771(∑[2^n])`
-/

namespace A334394.P4819317277279240405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146771 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A334394.P4819317277279240405

/-!
# A334395: Partial products of A334393.

The programs for A334395, there is no canonical definition to state claims against.
-/

/-! ## A334395.P2231827030562636106

`∏[A334393(n+1)]`
-/

namespace A334395.P2231827030562636106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334395.P2231827030562636106

/-! ## A334395.P17135896053425093475

`∏[record[A133233(A349026(n+1))]]`
-/

namespace A334395.P17135896053425093475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (A349026 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334395.P17135896053425093475

/-! ## A334395.P1411154507262744235

`∏[lt[A219199(n), ∑{d}[n+1, #%2]]]`
-/

namespace A334395.P1411154507262744235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219199 (n + 28)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334395.P1411154507262744235

/-! ## A334395.P11825669289560301135

`∏[lt[A219199(n), A001227(n+1)]]`
-/

namespace A334395.P11825669289560301135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219199 (n + 28)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334395.P11825669289560301135

/-! ## A334395.P5214549161225623239

`∏[lt[A202453(n+1), A216505(2*(n+1))]]`
-/

namespace A334395.P5214549161225623239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216505 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A334395.P5214549161225623239

/-!
# A334396: Number of fault-free tilings of a 3 X n rectangle with squares and dominoes.

The programs for A334396, the canonical program `A334396.P1216478242613319315` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A334396 has offset 1).

The definition of A334396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A334396.P1216478242613319315

`a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A334396

/-- `a(n-1)+4*a(n-2)-a(n-3)-a(n-4)` -/
def P1216478242613319315.Spec : Prop :=
  ∀ n, P1216478242613319315.a n = A334396 (n + 1)

theorem P1216478242613319315.correct : P1216478242613319315.Spec := by
  intro n
  simp only [A334396, Nat.add_sub_cancel]

end A334396

/-! ## A334396.P1864543359666864469

`ogf(2x^2/(1-x-4x^2+x^3+x^4))`
-/

namespace A334396.P1864543359666864469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -1, -4, 1, 1] n

end

end A334396.P1864543359666864469

namespace A334396

/-- `ogf(2x^2/(1-x-4x^2+x^3+x^4))` -/
def P1864543359666864469.Spec : Prop :=
  ∀ n, P1864543359666864469.a n = A334396 (n + 1)

end A334396

/-! ## A334396.P8368937147041968010

`2*A112577(A289207(n+1))`
-/

namespace A334396.P8368937147041968010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112577 (A289207 (n + 1)).toNat

end

end A334396.P8368937147041968010

namespace A334396

/-- `2*A112577(A289207(n+1))` -/
def P8368937147041968010.Spec : Prop :=
  ∀ n, P8368937147041968010.a n = A334396 (n + 1)

end A334396

/-! ## A334396.P8019180326989843932

`Δ[2*∑[A112577(A289207(n))]]`
-/

namespace A334396.P8019180326989843932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112577 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A334396.P8019180326989843932

namespace A334396

/-- `Δ[2*∑[A112577(A289207(n))]]` -/
def P8019180326989843932.Spec : Prop :=
  ∀ n, P8019180326989843932.a n = A334396 (n + 1)

end A334396

/-! ## A334396.P11007553016591597867

`2*A112577(A065033(2*n)-1)`
-/

namespace A334396.P11007553016591597867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112577 (A065033 (2 * n) - 1).toNat

end

end A334396.P11007553016591597867

namespace A334396

/-- `2*A112577(A065033(2*n)-1)` -/
def P11007553016591597867.Spec : Prop :=
  ∀ n, P11007553016591597867.a n = A334396 (n + 1)

end A334396

/-! ## A334396.P10180952247089542690

`2*A112577(n-ceil(n/A000041(n)))`
-/

namespace A334396.P10180952247089542690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112577 ((n : ℤ) - ⌈(n : ℚ) / (A000041 n : ℚ)⌉).toNat

end

end A334396.P10180952247089542690

namespace A334396

/-- `2*A112577(n-ceil(n/A000041(n)))` -/
def P10180952247089542690.Spec : Prop :=
  ∀ n, P10180952247089542690.a n = A334396 (n + 1)

end A334396

/-! ## A334396.P13144495560636588212

`2*A112577(A259361(n²))`
-/

namespace A334396.P13144495560636588212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112577 (A259361 (n ^ 2)).toNat

end

end A334396.P13144495560636588212

namespace A334396

/-- `2*A112577(A259361(n²))` -/
def P13144495560636588212.Spec : Prop :=
  ∀ n, P13144495560636588212.a n = A334396 (n + 1)

end A334396

/-!
# A334397: Decimal expansion of (e - 2)/e.

The programs for A334397, there is no canonical definition to state claims against.
-/

/-! ## A334397.P7676866778700764758

`9-A135002(n)`
-/

namespace A334397.P7676866778700764758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A135002 n

end

end A334397.P7676866778700764758

/-!
# A334398: Number of endless self-avoiding walks of length n for the square lattice up to rotation, reflection, and path reversal.

The programs for A334398, there is no canonical definition to state claims against.
-/

/-! ## A334398.P2579898844636235262

`A330513(n+1)+A194640(A001906(n))`
-/

namespace A334398.P2579898844636235262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330513 (n + 1) + A194640 (A001906 n).toNat

end

end A334398.P2579898844636235262

/-! ## A334398.P13359102360579513395

`A110656(A145550(n+4)+A052329(n+1))`
-/

namespace A334398.P13359102360579513395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A145550 (n + 4) + A052329 (n + 1)).toNat

end

end A334398.P13359102360579513395

/-! ## A334398.P9244409872771275705

`A123621(∑[A191628(n+1)])`
-/

namespace A334398.P9244409872771275705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A334398.P9244409872771275705

/-! ## A334398.P14584620342278507006

`A008651(4*A255638(n+4))`
-/

namespace A334398.P14584620342278507006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (4 * A255638 (n + 4)).toNat

end

end A334398.P14584620342278507006

