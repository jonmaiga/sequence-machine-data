import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C020
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A136400: Replace all digits greater than 1 with 1 (in decimal representation).

The programs for A136400, there is no canonical definition to state claims against.
-/

/-! ## A136400.P14174113392784090341

`A064770(A064770(n))`
-/

namespace A136400.P14174113392784090341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A064770 n).toNat

end

end A136400.P14174113392784090341

/-!
# A136401: a(n) = 3*a(n-1) - 4*a(n-2) + 6*a(n-3) - 4*a(n-4), with initial terms 0,0,0,1.

The programs for A136401, the canonical program `A136401.P18025191596596786442` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136401 has offset 0).

The definition of A136401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` (program `A136401.P18025191596596786442`, by `A136401.P18025191596596786442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136401.P18025191596596786442

`3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136401

/-- `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` -/
def P18025191596596786442.Spec : Prop :=
  ∀ n, P18025191596596786442.a n = A136401 n

theorem P18025191596596786442.correct : P18025191596596786442.Spec := by
  intro n
  simp only [A136401]

end A136401

/-! ## A136401.P2227672528238383644

`2^n-A136408(n)`
-/

namespace A136401.P2227672528238383644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A136408 n

end

end A136401.P2227672528238383644

namespace A136401

/-- `2^n-A136408(n)` -/
def P2227672528238383644.Spec : Prop :=
  ∀ n, P2227672528238383644.a n = A136401 n

end A136401

/-! ## A136401.P16592913408056349430

`A000079(n)%A136408(n)`
-/

namespace A136401.P16592913408056349430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A136408 n)

end

end A136401.P16592913408056349430

namespace A136401

/-- `A000079(n)%A136408(n)` -/
def P16592913408056349430.Spec : Prop :=
  ∀ n, P16592913408056349430.a n = A136401 n

end A136401

/-! ## A136401.P4170560164391952857

`A155559(n)%A136408(n)`
-/

namespace A136401.P4170560164391952857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A136408 n)

end

end A136401.P4170560164391952857

namespace A136401

/-- `A155559(n)%A136408(n)` -/
def P4170560164391952857.Spec : Prop :=
  ∀ n, P4170560164391952857.a n = A136401 n

end A136401

/-! ## A136401.P15839596383250740033

`A171449(n)%A136408(n)`
-/

namespace A136401.P15839596383250740033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A136408 n)

end

end A136401.P15839596383250740033

namespace A136401

/-- `A171449(n)%A136408(n)` -/
def P15839596383250740033.Spec : Prop :=
  ∀ n, P15839596383250740033.a n = A136401 n

end A136401

/-! ## A136401.P1819564165107110316

`A171559(n)%A136408(n)`
-/

namespace A136401.P1819564165107110316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A136408 n)

end

end A136401.P1819564165107110316

namespace A136401

/-- `A171559(n)%A136408(n)` -/
def P1819564165107110316.Spec : Prop :=
  ∀ n, P1819564165107110316.a n = A136401 n

end A136401

/-! ## A136401.P12508778842964098542

`A186949(n)%A136408(n)`
-/

namespace A136401.P12508778842964098542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A136408 n)

end

end A136401.P12508778842964098542

namespace A136401

/-- `A186949(n)%A136408(n)` -/
def P12508778842964098542.Spec : Prop :=
  ∀ n, P12508778842964098542.a n = A136401 n

end A136401

/-! ## A136401.P12659385747148879974

`(A077966(n)+A000918(n))/6`
-/

namespace A136401.P12659385747148879974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077966 n + A000918 n : ℚ) / 6

end

end A136401.P12659385747148879974

namespace A136401

/-- `(A077966(n)+A000918(n))/6` -/
def P12659385747148879974.Spec : Prop :=
  ∀ n, P12659385747148879974.a n = (A136401 n : ℚ)

end A136401

/-! ## A136401.P7437495715874134686

`xor(A002450(A110654(n)), A007179(n))`
-/

namespace A136401.P7437495715874134686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 (A110654 n).toNat) (A007179 n)

end

end A136401.P7437495715874134686

namespace A136401

/-- `xor(A002450(A110654(n)), A007179(n))` -/
def P7437495715874134686.Spec : Prop :=
  ∀ n, P7437495715874134686.a n = A136401 n

end A136401

/-!
# A136402: Prime Wedderburn-Etherington numbers.

The programs for A136402, there is no canonical definition to state claims against.
-/

/-! ## A136402.P1116442901526216689

`p?[A001190(n)]`
-/

namespace A136402.P1116442901526216689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136402.P1116442901526216689

/-! ## A136402.P1349255179978155014

`p?[A036656(n)]`
-/

namespace A136402.P1349255179978155014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136402.P1349255179978155014

/-! ## A136402.P6693942697021075872

`p?[A241555(∑[n])]`
-/

namespace A136402.P6693942697021075872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241555 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136402.P6693942697021075872

/-!
# A136403: Absolute values of negative fundamental discriminants (A003657) that are not 3 mod 4 (A002145).

The programs for A136403, there is no canonical definition to state claims against.
-/

/-! ## A136403.P11481395099362220170

`filter[A003657(n+1), A005171(#)]`
-/

namespace A136403.P11481395099362220170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A136403.P11481395099362220170

/-! ## A136403.P9505891268749934664

`filter[A003657(n+1), A066247(#)]`
-/

namespace A136403.P9505891268749934664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A136403.P9505891268749934664

/-! ## A136403.P8689677250791497236

`filter[A003657(n+1), A174889(#)]`
-/

namespace A136403.P8689677250791497236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A136403.P8689677250791497236

/-! ## A136403.P5515606602148448492

`filter[A003657(n+1), A341996(#)]`
-/

namespace A136403.P5515606602148448492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A136403.P5515606602148448492

/-! ## A136403.P2450754295806784686

`filter[A003657(n+1), A341999(#)]`
-/

namespace A136403.P2450754295806784686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A136403.P2450754295806784686

/-!
# A136404: Square numbers with more divisors than any smaller square number.

The programs for A136404, there is no canonical definition to state claims against.
-/

/-! ## A136404.P5442359259163659035

`A126098(n+1)²`
-/

namespace A136404.P5442359259163659035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (n + 1) ^ 2

end

end A136404.P5442359259163659035

/-! ## A136404.P3896309550493567351

`(A117010(n+1)+1)²`
-/

namespace A136404.P3896309550493567351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117010 (n + 1) + 1) ^ 2

end

end A136404.P3896309550493567351

/-! ## A136404.P16276631917385833164

`record[A126098(A158416(n))²]`
-/

namespace A136404.P16276631917385833164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A158416 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136404.P16276631917385833164

/-! ## A136404.P11393428529320032324

`A126098(n+1)^(2%A006953(n+1))`
-/

namespace A136404.P11393428529320032324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (Int.tmod 2 (A006953 (n + 1)) : ℤ)

end

end A136404.P11393428529320032324

/-! ## A136404.P18354722663463330733

`record[A126098(A158416(n))]*A126098(n+1)`
-/

namespace A136404.P18354722663463330733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A158416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A126098 (n + 1)

end

end A136404.P18354722663463330733

/-! ## A136404.P3292223769533165820

`A126098(A000027(n+1))*A126098(n+1)`
-/

namespace A136404.P3292223769533165820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (A000027 (n + 1)).toNat * A126098 (n + 1)

end

end A136404.P3292223769533165820

/-! ## A136404.P9029299156926038357

`A126098(n+1)^A000005(A126095(n+1))`
-/

namespace A136404.P9029299156926038357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A000005 (A126095 (n + 1)).toNat : ℤ)

end

end A136404.P9029299156926038357

/-! ## A136404.P18231915224518356705

`A126098(n+1)^A000005(A126112(n+1))`
-/

namespace A136404.P18231915224518356705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A000005 (A126112 (n + 1)).toNat : ℤ)

end

end A136404.P18231915224518356705

/-! ## A136404.P15084006885178248536

`A126098(n+1)^A060502(eq[2, A060502(n)])`
-/

namespace A136404.P15084006885178248536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A060502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ)

end

end A136404.P15084006885178248536

/-! ## A136404.P5308235135122981668

`A126098(n+1)^A276165(eq[2, A276165(n)])`
-/

namespace A136404.P5308235135122981668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276165 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A276165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ)

end

end A136404.P5308235135122981668

/-! ## A136404.P241466264775510529

`A126098(n+1)*A126098((n+1)%A297135(n+1))`
-/

namespace A136404.P241466264775510529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (n + 1) * A126098 (Int.tmod (n + 1 : ℤ) (A297135 (n + 1))).toNat

end

end A136404.P241466264775510529

/-! ## A136404.P4816505921854514397

`A126098(n+1)^A000005(A126096(n+1))`
-/

namespace A136404.P4816505921854514397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A000005 (A126096 (n + 1)).toNat : ℤ)

end

end A136404.P4816505921854514397

/-! ## A136404.P17434976500241757509

`A126098(n+1)^A000005(A126107(n+1))`
-/

namespace A136404.P17434976500241757509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A000005 (A126107 (n + 1)).toNat : ℤ)

end

end A136404.P17434976500241757509

/-! ## A136404.P18085091993489320812

`A126098(n+1)^A020639(A025487(n+1))`
-/

namespace A136404.P18085091993489320812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A020639 (A025487 (n + 1)).toNat : ℤ)

end

end A136404.P18085091993489320812

/-! ## A136404.P16456694748548124629

`A126098(n+1)^A020639(A130670(n+1))`
-/

namespace A136404.P16456694748548124629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126098 (n + 1) : ℚ) ^ (A020639 (A130670 (n + 1)).toNat : ℤ)

end

end A136404.P16456694748548124629

/-!
# A136405: Triangle read by rows: T(n,k) is the number of bi-partitions of the pair (n,k) into pairs (n_i,k_i) of positive integers such that sum k_i = k and sum n_i*k_i = n.

The programs for A136405, there is no canonical definition to state claims against.
-/

/-! ## A136405.P2106508698304757280

`A091298(n+1)-A001221(A022179(n))`
-/

namespace A136405.P2106508698304757280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (n + 1) - A001221 (A022179 n).toNat

end

end A136405.P2106508698304757280

/-! ## A136405.P6152292322708860035

`A210874(A210871(n+1))%p?[A007318(n)]`
-/

namespace A136405.P6152292322708860035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210874 (A210871 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A136405.P6152292322708860035

/-! ## A136405.P10136526991341123648

`A210874(A210871(n+1)%A180429(n+1))`
-/

namespace A136405.P10136526991341123648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (Int.tmod (A210871 (n + 1)) (A180429 (n + 1))).toNat

end

end A136405.P10136526991341123648

/-! ## A136405.P8307256775794719687

`A210874(A210871(n+1))^A014963(A226151(n+1))`
-/

namespace A136405.P8307256775794719687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210874 (A210871 (n + 1)).toNat : ℚ) ^ (A014963 (A226151 (n + 1)).toNat : ℤ)

end

end A136405.P8307256775794719687

/-! ## A136405.P13215780067609338514

`A210874(A210871(n+1))+A008683(A000079(n+2))`
-/

namespace A136405.P13215780067609338514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (A210871 (n + 1)).toNat + A008683 (A000079 (n + 2)).toNat

end

end A136405.P13215780067609338514

/-!
# A136406: Triangle read by rows: T(n,k) is the number of bi-partitions of the pair (n,k) into pairs (n_i,k_i) of positive integers such that sum k_i = k and sum n_i*k_i^2 = n.

The programs for A136406, there is no canonical definition to state claims against.
-/

/-! ## A136406.P15638586043136962420

`or(A037306(n+1), A152822(A089408(n)))`
-/

namespace A136406.P15638586043136962420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037306 (n + 1)) (A152822 (A089408 n).toNat)

end

end A136406.P15638586043136962420

/-! ## A136406.P11436220303273040881

`or(A037306(n+1), A286046(A076188(n+1)))`
-/

namespace A136406.P11436220303273040881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037306 (n + 1)) (A286046 (A076188 (n + 1)).toNat)

end

end A136406.P11436220303273040881

/-! ## A136406.P461660270898566644

`or(A037306(n+1), A079978(A298895(3*n+1)))`
-/

namespace A136406.P461660270898566644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037306 (n + 1)) (A079978 (A298895 (3 * n + 1)).toNat)

end

end A136406.P461660270898566644

/-! ## A136406.P11957204399499760183

`A002487(∏{e}[A197654(n), #])`
-/

namespace A136406.P11957204399499760183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A136406.P11957204399499760183

/-! ## A136406.P9517029211116643936

`∑{p}[A014417(A064094(n)+2)+1, A001222(#)]`
-/

namespace A136406.P9517029211116643936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 (A064094 n + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A136406.P9517029211116643936

/-!
# A136408: a(n) = 3*a(n-1) - 4*a(n-2) + 6*a(n-3) - 4*a(n-4), with initial terms 1,2,4,7.

The programs for A136408, the canonical program `A136408.P11144058894735800779` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136408 has offset 0).

The definition of A136408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` (program `A136408.P11144058894735800779`, by `A136408.P11144058894735800779.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136408.P11144058894735800779

`3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136408

/-- `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` -/
def P11144058894735800779.Spec : Prop :=
  ∀ n, P11144058894735800779.a n = A136408 n

theorem P11144058894735800779.correct : P11144058894735800779.Spec := by
  intro n
  simp only [A136408]

end A136408

/-! ## A136408.P5826354057401354896

`(5*2^n+2-(n+1)%2*(-2)^floor((n+1)/2))/6`
-/

namespace A136408.P5826354057401354896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n + 2 : ℚ) - (((n + 1) % 2 : ℕ) : ℚ) * (-2 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ)) / 6

end

end A136408.P5826354057401354896

namespace A136408

/-- `(5*2^n+2-(n+1)%2*(-2)^floor((n+1)/2))/6` -/
def P5826354057401354896.Spec : Prop :=
  ∀ n, P5826354057401354896.a n = (A136408 n : ℚ)

end A136408

/-! ## A136408.P5115085759211870798

`(5*2^n+2-A077966(n))/6`
-/

namespace A136408.P5115085759211870798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n + 2 : ℤ) - A077966 n : ℚ) / 6

end

end A136408.P5115085759211870798

namespace A136408

/-- `(5*2^n+2-A077966(n))/6` -/
def P5115085759211870798.Spec : Prop :=
  ∀ n, P5115085759211870798.a n = (A136408 n : ℚ)

end A136408

/-! ## A136408.P2870049655075273091

`2^n-A136401(n)`
-/

namespace A136408.P2870049655075273091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A136401 n

end

end A136408.P2870049655075273091

namespace A136408

/-- `2^n-A136401(n)` -/
def P2870049655075273091.Spec : Prop :=
  ∀ n, P2870049655075273091.a n = A136408 n

end A136408

/-! ## A136408.P3970482691574145971

`abs(A000079(n)-A136401(n))`
-/

namespace A136408.P3970482691574145971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A136401 n|

end

end A136408.P3970482691574145971

namespace A136408

/-- `abs(A000079(n)-A136401(n))` -/
def P3970482691574145971.Spec : Prop :=
  ∀ n, P3970482691574145971.a n = A136408 n

end A136408

/-! ## A136408.P9693024359990437636

`abs(A136401(n)-A171449(n))`
-/

namespace A136408.P9693024359990437636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136401 n - A171449 n|

end

end A136408.P9693024359990437636

namespace A136408

/-- `abs(A136401(n)-A171449(n))` -/
def P9693024359990437636.Spec : Prop :=
  ∀ n, P9693024359990437636.a n = A136408 n

end A136408

/-! ## A136408.P4722585928640992652

`A000051(n)-(A136401(n)+1)`
-/

namespace A136408.P4722585928640992652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A136401 n + 1)

end

end A136408.P4722585928640992652

namespace A136408

/-- `A000051(n)-(A136401(n)+1)` -/
def P4722585928640992652.Spec : Prop :=
  ∀ n, P4722585928640992652.a n = A136408 n

end A136408

/-!
# A136409: a(n) = floor(n*log_3(2)).

The programs for A136409, the canonical program `A136409.P5109166096281271109` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136409 has offset 0).

The definition of A136409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136409.P13650578096082503858

`floor(n/log2(3))`
-/

namespace A136409.P13650578096082503858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋

end

end A136409.P13650578096082503858

namespace A136409

/-- `floor(n/log2(3))` -/
def P13650578096082503858.Spec : Prop :=
  ∀ n, P13650578096082503858.a n = A136409 n

end A136409

/-! ## A136409.P13268000727775492917

`comp[floor(n*log2(6))+1]%(n+1)`
-/

namespace A136409.P13268000727775492917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (6 : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A136409.P13268000727775492917

namespace A136409

/-- `comp[floor(n*log2(6))+1]%(n+1)` -/
def P13268000727775492917.Spec : Prop :=
  ∀ n, (P13268000727775492917.a n : ℤ) = A136409 n

end A136409

/-! ## A136409.P5109166096281271109

`A020915(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136409

/-- `A020915(n)-1` -/
def P5109166096281271109.Spec : Prop :=
  ∀ n, P5109166096281271109.a n = A136409 n

theorem P5109166096281271109.correct : P5109166096281271109.Spec := by
  intro n
  simp only [A136409]

end A136409

/-! ## A136409.P13662992561243359268

`∑[char[Δ[A022330(n)]]]`
-/

namespace A136409.P13662992561243359268
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136409.P13662992561243359268

namespace A136409

/-- `∑[char[Δ[A022330(n)]]]` -/
def P13662992561243359268.Spec : Prop :=
  ∀ n, (P13662992561243359268.a n : ℤ) = A136409 n

end A136409

/-! ## A136409.P9987426712060384914

`∑[char[A020914(n+1)]]`
-/

namespace A136409.P9987426712060384914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136409.P9987426712060384914

namespace A136409

/-- `∑[char[A020914(n+1)]]` -/
def P9987426712060384914.Spec : Prop :=
  ∀ n, (P9987426712060384914.a n : ℤ) = A136409 n

end A136409

/-! ## A136409.P12900210298554074629

`∑[char[A204399(n+1)]]`
-/

namespace A136409.P12900210298554074629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136409.P12900210298554074629

namespace A136409

/-- `∑[char[A204399(n+1)]]` -/
def P12900210298554074629.Spec : Prop :=
  ∀ n, (P12900210298554074629.a n : ℤ) = A136409 n

end A136409

/-! ## A136409.P9099739631160040761

`∑[char[A204399(n)]]-1`
-/

namespace A136409.P9099739631160040761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A136409.P9099739631160040761

namespace A136409

/-- `∑[char[A204399(n)]]-1` -/
def P9099739631160040761.Spec : Prop :=
  ∀ n, P9099739631160040761.a n = A136409 n

end A136409

/-! ## A136409.P10396820946052342564

`n-∑[char[A054414(n)]]`
-/

namespace A136409.P10396820946052342564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A136409.P10396820946052342564

namespace A136409

/-- `n-∑[char[A054414(n)]]` -/
def P10396820946052342564.Spec : Prop :=
  ∀ n, P10396820946052342564.a n = A136409 n

end A136409

/-! ## A136409.P6676002201042069510

`∑[char[A056576(n+1)+1]]`
-/

namespace A136409.P6676002201042069510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136409.P6676002201042069510

namespace A136409

/-- `∑[char[A056576(n+1)+1]]` -/
def P6676002201042069510.Spec : Prop :=
  ∀ n, (P6676002201042069510.a n : ℤ) = A136409 n

end A136409

/-! ## A136409.P6255029390148931746

`floor(sqrt(A156301(n)²+1))-1`
-/

namespace A136409.P6255029390148931746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A156301 n ^ 2 + 1) - 1

end

end A136409.P6255029390148931746

namespace A136409

/-- `floor(sqrt(A156301(n)²+1))-1` -/
def P6255029390148931746.Spec : Prop :=
  ∀ n, P6255029390148931746.a n = A136409 n

end A136409

/-! ## A136409.P4205450241943013533

`A022924(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A136409.P4205450241943013533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A022924 (n - 1) + a (n - 1)

end

end A136409.P4205450241943013533

namespace A136409

/-- `A022924(n-1)+a(n-1)` -/
def P4205450241943013533.Spec : Prop :=
  ∀ n, P4205450241943013533.a n = A136409 n

end A136409

/-! ## A136409.P12422409682064811199

`n-A098294(a(n-1)+1)` with `a(0)=0`
-/

namespace A136409.P12422409682064811199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - A098294 (a (n - 1) + 1).toNat

end

end A136409.P12422409682064811199

namespace A136409

/-- `n-A098294(a(n-1)+1)` -/
def P12422409682064811199.Spec : Prop :=
  ∀ n, P12422409682064811199.a n = A136409 n

end A136409

/-! ## A136409.P11799250010961754716

`A156301(A028310(n))-1`
-/

namespace A136409.P11799250010961754716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A028310 n).toNat - 1

end

end A136409.P11799250010961754716

namespace A136409

/-- `A156301(A028310(n))-1` -/
def P11799250010961754716.Spec : Prop :=
  ∀ n, P11799250010961754716.a n = A136409 n

end A136409

/-! ## A136409.P695072950918030019

`A156301(n)+A057428(n)`
-/

namespace A136409.P695072950918030019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n + A057428 n

end

end A136409.P695072950918030019

namespace A136409

/-- `A156301(n)+A057428(n)` -/
def P695072950918030019.Spec : Prop :=
  ∀ n, P695072950918030019.a n = A136409 n

end A136409

/-! ## A136409.P3208051194434204674

`A156301(n)-A057427(n)`
-/

namespace A136409.P3208051194434204674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n - A057427 n

end

end A136409.P3208051194434204674

namespace A136409

/-- `A156301(n)-A057427(n)` -/
def P3208051194434204674.Spec : Prop :=
  ∀ n, P3208051194434204674.a n = A136409 n

end A136409

/-! ## A136409.P3049388138056510740

`∑[A022924(n)]-A022924(n)`
-/

namespace A136409.P3049388138056510740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022924 n

end

end A136409.P3049388138056510740

namespace A136409

/-- `∑[A022924(n)]-A022924(n)` -/
def P3049388138056510740.Spec : Prop :=
  ∀ n, P3049388138056510740.a n = A136409 n

end A136409

/-! ## A136409.P2527509302835101025

`A156301(A000007(n)+n)-1`
-/

namespace A136409.P2527509302835101025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A000007 n + (n : ℤ)).toNat - 1

end

end A136409.P2527509302835101025

namespace A136409

/-- `A156301(A000007(n)+n)-1` -/
def P2527509302835101025.Spec : Prop :=
  ∀ n, P2527509302835101025.a n = A136409 n

end A136409

/-! ## A136409.P14390298731702167349

`n-A098294(A156301(n+1)-1)`
-/

namespace A136409.P14390298731702167349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098294 (A156301 (n + 1) - 1).toNat

end

end A136409.P14390298731702167349

namespace A136409

/-- `n-A098294(A156301(n+1)-1)` -/
def P14390298731702167349.Spec : Prop :=
  ∀ n, P14390298731702167349.a n = A136409 n

end A136409

/-! ## A136409.P12904656298831255745

`A057428(n+1)+A020915(n)`
-/

namespace A136409.P12904656298831255745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A020915 n

end

end A136409.P12904656298831255745

namespace A136409

/-- `A057428(n+1)+A020915(n)` -/
def P12904656298831255745.Spec : Prop :=
  ∀ n, P12904656298831255745.a n = A136409 n

theorem P12904656298831255745.correct : P12904656298831255745.Spec := by
  intro n
  simp only [A136409, Nat.add_sub_cancel, A136409.P12904656298831255745.a, A136409.P5109166096281271109.a, A020915, A020915.P489464718778045910.a, A057428, A057428.P2999489532230392221.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136409

/-! ## A136409.P1846570368096692167

`A309873(A008458(2*n+1))+A020915(n)`
-/

namespace A136409.P1846570368096692167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A008458 (2 * n + 1)).toNat + A020915 n

end

end A136409.P1846570368096692167

namespace A136409

/-- `A309873(A008458(2*n+1))+A020915(n)` -/
def P1846570368096692167.Spec : Prop :=
  ∀ n, P1846570368096692167.a n = A136409 n

end A136409

/-!
# A136410: Numbers k having a proper divisor d > 2 such that d-1 divides k-1.

The programs for A136410, there is no canonical definition to state claims against.
-/

/-! ## A136410.P18354859111313492201

`A082772(n+1)+1`
-/

namespace A136410.P18354859111313492201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082772 (n + 1) + 1

end

end A136410.P18354859111313492201

/-! ## A136410.P8569476736173876851

`∪[A082773(n+1), A082867(n+1)]+1`
-/

namespace A136410.P8569476736173876851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A136410.P8569476736173876851

/-! ## A136410.P4038262022065338498

`A020725(A082772(n+1))`
-/

namespace A136410.P4038262022065338498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A082772 (n + 1)).toNat

end

end A136410.P4038262022065338498

/-! ## A136410.P868470986281473223

`A020725(∪[A082773(n+1), A082867(n+1)])`
-/

namespace A136410.P868470986281473223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082867 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A136410.P868470986281473223

/-! ## A136410.P13579841697075126858

`A065475(∪[A082773(n+1), A082867(n+1)])`
-/

namespace A136410.P13579841697075126858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082867 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A136410.P13579841697075126858

/-!
# A136411: a(n) = Product_{k=1..n} (2*k-1)^(2*n-2*k+1).

The programs for A136411, there is no canonical definition to state claims against.
-/

/-! ## A136411.P12757543093760874817

`∏[∏[abs(1-(2*n)²)]]`
-/

namespace A136411.P12757543093760874817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((2 * n) ^ 2 : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A136411.P12757543093760874817

/-! ## A136411.P9317543956294895833

`abs(∏[-∏[-or(1, -(2*n)²)]])`
-/

namespace A136411.P9317543956294895833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-((2 * n) ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A136411.P9317543956294895833

/-! ## A136411.P11548780363569520548

`or(1, ∏[xor(∏[(2*n)²-1], -2)])`
-/

namespace A136411.P11548780363569520548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∏ j ∈ Finset.range (n + 1), f2 j) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A136411.P11548780363569520548

/-! ## A136411.P14693235940558913374

`or(1, ∏[-∏[lcm(2, (2*n)²)-1]])`
-/

namespace A136411.P14693235940558913374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((2 * n) ^ 2) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A136411.P14693235940558913374

/-! ## A136411.P9131625146780129569

`or(1, ∏[-∏[or(1, (2*n)²-1)]])`
-/

namespace A136411.P9131625146780129569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((2 * n) ^ 2 : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A136411.P9131625146780129569

/-!
# A136412: a(n) = (5*4^n + 1)/3.

The programs for A136412, the canonical program `A136412.P16690639814129564488` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136412 has offset 0).

The definition of A136412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*4^n+1)/3` (program `A136412.P11717912229952151247`, by `A136412.P11717912229952151247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136412.P16690639814129564488

`4*a(n-1)-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136412

/-- `4*a(n-1)-1` -/
def P16690639814129564488.Spec : Prop :=
  ∀ n, P16690639814129564488.a n = A136412 n

theorem P16690639814129564488.correct : P16690639814129564488.Spec := by
  intro n
  simp only [A136412]

end A136412

/-! ## A136412.P11717912229952151247

`(5*4^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136412.P11717912229952151247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 4 ^ n + 1 : ℚ) / 3

end

end A136412.P11717912229952151247

namespace A136412

/-- `(5*4^n+1)/3` -/
def P11717912229952151247.Spec : Prop :=
  ∀ n, P11717912229952151247.a n = (A136412 n : ℚ)

theorem P11717912229952151247.correct : P11717912229952151247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A136412, Nat.add_sub_cancel, A136412.P11717912229952151247.a, A136412.P16690639814129564488.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A136412, Nat.add_sub_cancel, A136412.P11717912229952151247.a, A136412.P16690639814129564488.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A136412

/-! ## A136412.P9830572408443260102

`ogf((2-3x)/(1-5x+4x^2))`
-/

namespace A136412.P9830572408443260102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -5, 4] n

end

end A136412.P9830572408443260102

namespace A136412

/-- `ogf((2-3x)/(1-5x+4x^2))` -/
def P9830572408443260102.Spec : Prop :=
  ∀ n, P9830572408443260102.a n = A136412 n

end A136412

/-! ## A136412.P10647475581059931889

`lcm(4, a(n-1))-1` with `a(0)=2, a(1)=7`
-/

namespace A136412.P10647475581059931889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 1

end

end A136412.P10647475581059931889

namespace A136412

/-- `lcm(4, a(n-1))-1` -/
def P10647475581059931889.Spec : Prop :=
  ∀ n, P10647475581059931889.a n = A136412 n

end A136412

/-! ## A136412.P9159775252420679018

`a(n-1)/(1/2)²-1` with `a(0)=2`
-/

namespace A136412.P9159775252420679018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 1

end

end A136412.P9159775252420679018

namespace A136412

/-- `a(n-1)/(1/2)²-1` -/
def P9159775252420679018.Spec : Prop :=
  ∀ n, P9159775252420679018.a n = (A136412 n : ℚ)

end A136412

/-! ## A136412.P15303709728719836244

`∑[a(n-1)/(1-3/4)]` with `a(0)=2, a(1)=5`
-/

namespace A136412.P15303709728719836244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 1) / (1 - (3 : ℚ) / 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136412.P15303709728719836244

namespace A136412

/-- `∑[a(n-1)/(1-3/4)]` -/
def P15303709728719836244.Spec : Prop :=
  ∀ n, P15303709728719836244.a n = (A136412 n : ℚ)

end A136412

/-! ## A136412.P4403896018416672753

`record[1-a(n-1)-a(n-1)]` with `a(0)=2`
-/

namespace A136412.P4403896018416672753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136412.P4403896018416672753

namespace A136412

/-- `record[1-a(n-1)-a(n-1)]` -/
def P4403896018416672753.Spec : Prop :=
  ∀ n, P4403896018416672753.a n = A136412 n

end A136412

/-! ## A136412.P57553729713005510

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` with `a(0)=2`
-/

namespace A136412.P57553729713005510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 1)))

end

end A136412.P57553729713005510

namespace A136412

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-1` -/
def P57553729713005510.Spec : Prop :=
  ∀ n, P57553729713005510.a n = A136412 n

theorem P57553729713005510.correct : P57553729713005510.Spec := by
  intro n
  simp only [A136412, Nat.add_sub_cancel, A136412.P57553729713005510.a, A136412.P16690639814129564488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A136412

/-! ## A136412.P806920098164442045

`a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` with `a(0)=2`
-/

namespace A136412.P806920098164442045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (1 - a (n - 1) - a (n - 1) - a (n - 1))

end

end A136412.P806920098164442045

namespace A136412

/-- `a(n-1)-(1-a(n-1)-a(n-1)-a(n-1))` -/
def P806920098164442045.Spec : Prop :=
  ∀ n, P806920098164442045.a n = A136412 n

theorem P806920098164442045.correct : P806920098164442045.Spec := by
  intro n
  simp only [A136412, Nat.add_sub_cancel, A136412.P806920098164442045.a, A136412.P16690639814129564488.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A136412

/-! ## A136412.P8874844937484009073

`Δ[A164044(n)]`
-/

namespace A136412.P8874844937484009073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136412.P8874844937484009073

namespace A136412

/-- `Δ[A164044(n)]` -/
def P8874844937484009073.Spec : Prop :=
  ∀ n, P8874844937484009073.a n = A136412 n

end A136412

/-! ## A136412.P15707052530614679979

`record[A255138(n)]`
-/

namespace A136412.P15707052530614679979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136412.P15707052530614679979

namespace A136412

/-- `record[A255138(n)]` -/
def P15707052530614679979.Spec : Prop :=
  ∀ n, P15707052530614679979.a n = A136412 n

end A136412

/-! ## A136412.P18208423450878160282

`A020989(n)+1`
-/

namespace A136412.P18208423450878160282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020989 n + 1

end

end A136412.P18208423450878160282

namespace A136412

/-- `A020989(n)+1` -/
def P18208423450878160282.Spec : Prop :=
  ∀ n, P18208423450878160282.a n = A136412 n

end A136412

/-! ## A136412.P1783062609152768375

`A135583(n)-1`
-/

namespace A136412.P1783062609152768375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135583 n - 1

end

end A136412.P1783062609152768375

namespace A136412

/-- `A135583(n)-1` -/
def P1783062609152768375.Spec : Prop :=
  ∀ n, P1783062609152768375.a n = A136412 n

end A136412

/-! ## A136412.P10890505318637178550

`A048573(2*n)`
-/

namespace A136412.P10890505318637178550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (2 * n)

end

end A136412.P10890505318637178550

namespace A136412

/-- `A048573(2*n)` -/
def P10890505318637178550.Spec : Prop :=
  ∀ n, P10890505318637178550.a n = A136412 n

end A136412

/-! ## A136412.P4127104000177629610

`3-A165752(n)`
-/

namespace A136412.P4127104000177629610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A165752 n

end

end A136412.P4127104000177629610

namespace A136412

/-- `3-A165752(n)` -/
def P4127104000177629610.Spec : Prop :=
  ∀ n, P4127104000177629610.a n = A136412 n

end A136412

/-! ## A136412.P7838818530886071168

`A171231(2*n)`
-/

namespace A136412.P7838818530886071168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 (2 * n)

end

end A136412.P7838818530886071168

namespace A136412

/-- `A171231(2*n)` -/
def P7838818530886071168.Spec : Prop :=
  ∀ n, P7838818530886071168.a n = A136412 n

end A136412

/-! ## A136412.P18173673532372694222

`A255138(2*n)`
-/

namespace A136412.P18173673532372694222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 (2 * n)

end

end A136412.P18173673532372694222

namespace A136412

/-- `A255138(2*n)` -/
def P18173673532372694222.Spec : Prop :=
  ∀ n, P18173673532372694222.a n = A136412 n

end A136412

/-! ## A136412.P1755080087669801596

`A309792(4*n)`
-/

namespace A136412.P1755080087669801596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309792 (4 * n)

end

end A136412.P1755080087669801596

namespace A136412

/-- `A309792(4*n)` -/
def P1755080087669801596.Spec : Prop :=
  ∀ n, P1755080087669801596.a n = A136412 n

end A136412

/-! ## A136412.P9200424662407284658

`A136336(Δ[n²])`
-/

namespace A136412.P9200424662407284658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136412.P9200424662407284658

namespace A136412

/-- `A136336(Δ[n²])` -/
def P9200424662407284658.Spec : Prop :=
  ∀ n, P9200424662407284658.a n = A136412 n

end A136412

/-! ## A136412.P11148321383368848834

`A136408(Δ[n²])`
-/

namespace A136412.P11148321383368848834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136412.P11148321383368848834

namespace A136412

/-- `A136408(Δ[n²])` -/
def P11148321383368848834.Spec : Prop :=
  ∀ n, P11148321383368848834.a n = A136412 n

end A136412

/-!
# A136413: a(1)=1. a(n+1) = a(n) + (number of terms of this sequence that are <= (1/n)sum{k=1 to n} a(k)).

The programs for A136413, there is no canonical definition to state claims against.
-/

/-! ## A136413.P13130747216785543861

`∑[∑[and(1, A095785(n+3))]]`
-/

namespace A136413.P13130747216785543861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A095785 (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136413.P13130747216785543861

/-! ## A136413.P2941810619387591898

`∑[A070939(A279223(n²))]`
-/

namespace A136413.P2941810619387591898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A279223 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136413.P2941810619387591898

/-! ## A136413.P3416319879446791007

`∑[A070939(Δ[A329758(n+2)])]`
-/

namespace A136413.P3416319879446791007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329758 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136413.P3416319879446791007

/-! ## A136413.P5490159664415571600

`∑[A391992(n)%A392002(3*n+4)]`
-/

namespace A136413.P5490159664415571600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391992 n) (A392002 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136413.P5490159664415571600

/-! ## A136413.P2188758193766286152

`A003056(A053251(2*n+1)+A027927(n+2))`
-/

namespace A136413.P2188758193766286152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A053251 (2 * n + 1) + A027927 (n + 2)).toNat

end

end A136413.P2188758193766286152

/-!
# A136414: Put the natural numbers together without spaces and read them two at a time advancing one space each time.

The programs for A136414, there is no canonical definition to state claims against.
-/

/-! ## A136414.P6632154042583781738

`10*A007376(n+1)+A007376(n+2)`
-/

namespace A136414.P6632154042583781738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A007376 (n + 1) + A007376 (n + 2)

end

end A136414.P6632154042583781738

/-! ## A136414.P13526916869032059053

`A059995(A193431(n+1))`
-/

namespace A136414.P13526916869032059053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A193431 (n + 1)).toNat

end

end A136414.P13526916869032059053

/-! ## A136414.P1680791100993311387

`record[A367362(val(n+1, 2)+1)]`
-/

namespace A136414.P1680791100993311387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136414.P1680791100993311387

/-! ## A136414.P8133257803717940024

`record[A367362(A123864(n))]`
-/

namespace A136414.P8133257803717940024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A123864 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136414.P8133257803717940024

/-! ## A136414.P17933390884654605953

`A004151(A112131(n+1))`
-/

namespace A136414.P17933390884654605953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A112131 (n + 1)).toNat

end

end A136414.P17933390884654605953

/-!
# A136415: Numbers n such that a type-3 Gaussian normal basis over GF(2^n) exists.

The programs for A136415, there is no canonical definition to state claims against.
-/

/-! ## A136415.P14763071418444704534

`eq[n, A054709(or(1, 3*n+1))]`
-/

namespace A136415.P14763071418444704534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (Nat.lor 1 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136415.P14763071418444704534

/-! ## A136415.P4879529692797025457

`eq[n, A053451(A007494(n))]`
-/

namespace A136415.P4879529692797025457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A007494 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136415.P4879529692797025457

/-! ## A136415.P98168521661507693

`eq[n, A054709(A016777(n))]`
-/

namespace A136415.P98168521661507693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (A016777 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136415.P98168521661507693

/-! ## A136415.P11691167299462186944

`eq[n, A053451(A032766(n))]`
-/

namespace A136415.P11691167299462186944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (A032766 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136415.P11691167299462186944

/-! ## A136415.P2670047048233950661

`record[A007739(A002476(n+2))]`
-/

namespace A136415.P2670047048233950661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (A002476 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136415.P2670047048233950661

/-! ## A136415.P13577424295286986824

`eq[n, A007739(A007310(n+1))]`
-/

namespace A136415.P13577424295286986824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (A007310 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136415.P13577424295286986824

/-! ## A136415.P14362840393887665836

`A004396(eq[A004396(n), A053451(n)])`
-/

namespace A136415.P14362840393887665836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136415.P14362840393887665836

/-! ## A136415.P13937211495172969169

`A005843(eq[A005843(n), A053451(3*n)])`
-/

namespace A136415.P13937211495172969169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A136415.P13937211495172969169

/-!
# A136416: Numbers n such that 1+(x+1)^k+(x+1)^n is a primitive polynomial over GF(2) for some k where 0

The programs for A136416, there is no canonical definition to state claims against.
-/

/-! ## A136416.P2082134124458360620

`A073571(A048737(n+1))+A000007(A004394(n+1))`
-/

namespace A136416.P2082134124458360620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073571 (A048737 (n + 1)).toNat + A000007 (A004394 (n + 1)).toNat

end

end A136416.P2082134124458360620

/-!
# A136417: Number of squares <= 2^n.

The programs for A136417, the canonical program `A136417.P14890248830846296454` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136417 has offset 0).

The definition of A136417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136417.P14890248830846296454

`1+A017910(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136417

/-- `1+A017910(n)` -/
def P14890248830846296454.Spec : Prop :=
  ∀ n, P14890248830846296454.a n = A136417 n

theorem P14890248830846296454.correct : P14890248830846296454.Spec := by
  intro n
  simp only [A136417]

end A136417

/-! ## A136417.P14461974491307680574

`1+floor(sqrt(2^n))`
-/

namespace A136417.P14461974491307680574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.sqrt (2 ^ n)

end

end A136417.P14461974491307680574

namespace A136417

/-- `1+floor(sqrt(2^n))` -/
def P14461974491307680574.Spec : Prop :=
  ∀ n, (P14461974491307680574.a n : ℤ) = A136417 n

theorem P14461974491307680574.correct : P14461974491307680574.Spec := by
  intro n
  simp only [A136417, Nat.add_sub_cancel, A136417.P14461974491307680574.a, A136417.P14890248830846296454.a, A017910, A017910.P15542471758442603211.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136417

/-! ## A136417.P16605523634922602236

`ceil(A017912(n+1)/sqrt(2))`
-/

namespace A136417.P16605523634922602236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017912 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A136417.P16605523634922602236

namespace A136417

/-- `ceil(A017912(n+1)/sqrt(2))` -/
def P16605523634922602236.Spec : Prop :=
  ∀ n, P16605523634922602236.a n = A136417 n

end A136417

/-! ## A136417.P17369940732293033271

`ceil(sqrt(log2(gcd(2, n))+2^n))`
-/

namespace A136417.P17369940732293033271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.logb 2 (Nat.gcd 2 n : ℝ) + (2 ^ n : ℝ))⌉

end

end A136417.P17369940732293033271

namespace A136417

/-- `ceil(sqrt(log2(gcd(2, n))+2^n))` -/
def P17369940732293033271.Spec : Prop :=
  ∀ n, P17369940732293033271.a n = A136417 n

end A136417

/-! ## A136417.P13563229494846363221

`ceil(sqrt((n+1)%2+2^n))`
-/

namespace A136417.P13563229494846363221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((n + 1) % 2 + 2 ^ n : ℕ) : ℝ)⌉

end

end A136417.P13563229494846363221

namespace A136417

/-- `ceil(sqrt((n+1)%2+2^n))` -/
def P13563229494846363221.Spec : Prop :=
  ∀ n, P13563229494846363221.a n = A136417 n

end A136417

/-! ## A136417.P12896336565648704138

`ceil(sqrt(∑[ogf((-2+2x+x^2)/(-1+x+2x^2))]))`
-/

namespace A136417.P12896336565648704138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A136417.P12896336565648704138

namespace A136417

/-- `ceil(sqrt(∑[ogf((-2+2x+x^2)/(-1+x+2x^2))]))` -/
def P12896336565648704138.Spec : Prop :=
  ∀ n, P12896336565648704138.a n = A136417 n

end A136417

/-! ## A136417.P680850183784132318

`ceil(sqrt(A000051(n)))`
-/

namespace A136417.P680850183784132318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000051 n : ℝ)⌉

end

end A136417.P680850183784132318

namespace A136417

/-- `ceil(sqrt(A000051(n)))` -/
def P680850183784132318.Spec : Prop :=
  ∀ n, P680850183784132318.a n = A136417 n

end A136417

/-! ## A136417.P15823711005443994445

`ceil(sqrt(A052531(n)))`
-/

namespace A136417.P15823711005443994445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A052531 n : ℝ)⌉

end

end A136417.P15823711005443994445

namespace A136417

/-- `ceil(sqrt(A052531(n)))` -/
def P15823711005443994445.Spec : Prop :=
  ∀ n, P15823711005443994445.a n = A136417 n

end A136417

/-! ## A136417.P3196133776251851102

`ceil(sqrt(A052957(n)))`
-/

namespace A136417.P3196133776251851102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A052957 n : ℝ)⌉

end

end A136417.P3196133776251851102

namespace A136417

/-- `ceil(sqrt(A052957(n)))` -/
def P3196133776251851102.Spec : Prop :=
  ∀ n, P3196133776251851102.a n = A136417 n

end A136417

/-! ## A136417.P2969179581657492117

`ceil(sqrt(A357751(n)))`
-/

namespace A136417.P2969179581657492117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A357751 n : ℝ)⌉

end

end A136417.P2969179581657492117

namespace A136417

/-- `ceil(sqrt(A357751(n)))` -/
def P2969179581657492117.Spec : Prop :=
  ∀ n, P2969179581657492117.a n = A136417 n

end A136417

/-! ## A136417.P7967521608965311656

`ceil(sqrt(A094373(n+1)))`
-/

namespace A136417.P7967521608965311656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A094373 (n + 1) : ℝ)⌉

end

end A136417.P7967521608965311656

namespace A136417

/-- `ceil(sqrt(A094373(n+1)))` -/
def P7967521608965311656.Spec : Prop :=
  ∀ n, P7967521608965311656.a n = A136417 n

end A136417

/-! ## A136417.P921144042584510268

`ceil(sqrt(A185376(n+1)))`
-/

namespace A136417.P921144042584510268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A185376 (n + 1) : ℝ)⌉

end

end A136417.P921144042584510268

namespace A136417

/-- `ceil(sqrt(A185376(n+1)))` -/
def P921144042584510268.Spec : Prop :=
  ∀ n, P921144042584510268.a n = A136417 n

end A136417

/-! ## A136417.P10802351264526269889

`ceil(sqrt(A000225(n)+2))`
-/

namespace A136417.P10802351264526269889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000225 n + 2 : ℝ)⌉

end

end A136417.P10802351264526269889

namespace A136417

/-- `ceil(sqrt(A000225(n)+2))` -/
def P10802351264526269889.Spec : Prop :=
  ∀ n, P10802351264526269889.a n = A136417 n

end A136417

/-! ## A136417.P1947148195663468985

`ceil(sqrt(A085431(n+2)))`
-/

namespace A136417.P1947148195663468985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A085431 (n + 2) : ℝ)⌉

end

end A136417.P1947148195663468985

namespace A136417

/-- `ceil(sqrt(A085431(n+2)))` -/
def P1947148195663468985.Spec : Prop :=
  ∀ n, P1947148195663468985.a n = A136417 n

end A136417

/-! ## A136417.P8894371274271931493

`ceil(sqrt(A240277(n+2)))`
-/

namespace A136417.P8894371274271931493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A240277 (n + 2) : ℝ)⌉

end

end A136417.P8894371274271931493

namespace A136417

/-- `ceil(sqrt(A240277(n+2)))` -/
def P8894371274271931493.Spec : Prop :=
  ∀ n, P8894371274271931493.a n = A136417 n

end A136417

/-! ## A136417.P7218723380662967175

`ceil(sqrt(A255047(n)+2))`
-/

namespace A136417.P7218723380662967175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A255047 n + 2 : ℝ)⌉

end

end A136417.P7218723380662967175

namespace A136417

/-- `ceil(sqrt(A255047(n)+2))` -/
def P7218723380662967175.Spec : Prop :=
  ∀ n, P7218723380662967175.a n = A136417 n

end A136417

/-! ## A136417.P617562612866391997

`ceil(sqrt(A052552(2*n)))`
-/

namespace A136417.P617562612866391997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A052552 (2 * n) : ℝ)⌉

end

end A136417.P617562612866391997

namespace A136417

/-- `ceil(sqrt(A052552(2*n)))` -/
def P617562612866391997.Spec : Prop :=
  ∀ n, P617562612866391997.a n = A136417 n

end A136417

/-! ## A136417.P7348769639699184861

`ceil(sqrt(∑[A131577(n)]+2))`
-/

namespace A136417.P7348769639699184861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℝ)⌉

end

end A136417.P7348769639699184861

namespace A136417

/-- `ceil(sqrt(∑[A131577(n)]+2))` -/
def P7348769639699184861.Spec : Prop :=
  ∀ n, P7348769639699184861.a n = A136417 n

end A136417

/-! ## A136417.P3333720323627048791

`ceil(sqrt(A016116(2*n)+1))`
-/

namespace A136417.P3333720323627048791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016116 (2 * n) + 1 : ℝ)⌉

end

end A136417.P3333720323627048791

namespace A136417

/-- `ceil(sqrt(A016116(2*n)+1))` -/
def P3333720323627048791.Spec : Prop :=
  ∀ n, P3333720323627048791.a n = A136417 n

end A136417

/-! ## A136417.P17322812847038767739

`ceil(sqrt(A017912(2*n)+1))`
-/

namespace A136417.P17322812847038767739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A017912 (2 * n) + 1 : ℝ)⌉

end

end A136417.P17322812847038767739

namespace A136417

/-- `ceil(sqrt(A017912(2*n)+1))` -/
def P17322812847038767739.Spec : Prop :=
  ∀ n, P17322812847038767739.a n = A136417 n

end A136417

/-!
# A136419: a(n) = binomial((n+2)*(n+1),(n+1)*n).

The programs for A136419, the canonical program `A136419.P12612898023783896897` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136419 has offset 0).

The definition of A136419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+2)*(n+1), (n+1)*n)` (program `A136419.P12612898023783896897`, by `A136419.P12612898023783896897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136419.P12612898023783896897

`C((n+2)*(n+1), (n+1)*n)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136419

/-- `C((n+2)*(n+1), (n+1)*n)` -/
def P12612898023783896897.Spec : Prop :=
  ∀ n, (P12612898023783896897.a n : ℤ) = A136419 n

theorem P12612898023783896897.correct : P12612898023783896897.Spec := by
  intro n
  simp only [A136419]

end A136419

/-! ## A136419.P4285244924496893644

`record[C(A131174(n), n)]`
-/

namespace A136419.P4285244924496893644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131174 n).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136419.P4285244924496893644

namespace A136419

/-- `record[C(A131174(n), n)]` -/
def P4285244924496893644.Spec : Prop :=
  ∀ n, (P4285244924496893644.a n : ℤ) = A136419 n

end A136419

/-! ## A136419.P15707788273687396787

`record[C(A115880(n+1), n)]`
-/

namespace A136419.P15707788273687396787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115880 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136419.P15707788273687396787

namespace A136419

/-- `record[C(A115880(n+1), n)]` -/
def P15707788273687396787.Spec : Prop :=
  ∀ n, (P15707788273687396787.a n : ℤ) = A136419 n

end A136419

/-! ## A136419.P9262529756314898411

`A034839(A117717(n+2))`
-/

namespace A136419.P9262529756314898411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A117717 (n + 2)).toNat

end

end A136419.P9262529756314898411

namespace A136419

/-- `A034839(A117717(n+2))` -/
def P9262529756314898411.Spec : Prop :=
  ∀ n, P9262529756314898411.a n = A136419 n

end A136419

/-! ## A136419.P5205896102424754853

`A143858(A101374(n+1))`
-/

namespace A136419.P5205896102424754853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (A101374 (n + 1)).toNat

end

end A136419.P5205896102424754853

namespace A136419

/-- `A143858(A101374(n+1))` -/
def P5205896102424754853.Spec : Prop :=
  ∀ n, P5205896102424754853.a n = A136419 n

end A136419

/-!
# A136421: a(n) = floor((x^n - (1-x)^n)/sqrt(2)+ 1/2) where x = (sqrt(2)+1)/2.

The programs for A136421, the canonical program `A136421.P3590173856751398488` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136421 has offset 1).

The definition of A136421 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136421.P3590173856751398488

`floor(((1+sqrt(2))^(n+1)-(1-sqrt(2))^(n+1))/(2^(n+1)*sqrt(2))+1/2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136421

/-- `floor(((1+sqrt(2))^(n+1)-(1-sqrt(2))^(n+1))/(2^(n+1)*sqrt(2))+1/2)` -/
def P3590173856751398488.Spec : Prop :=
  ∀ n, P3590173856751398488.a n = A136421 (n + 1)

theorem P3590173856751398488.correct : P3590173856751398488.Spec := by
  intro n
  simp only [A136421, Nat.add_sub_cancel]

end A136421

/-! ## A136421.P11968398401948559083

`round(∑[A001333(n)]/A000079(n))`
-/

namespace A136421.P11968398401948559083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ))

end

end A136421.P11968398401948559083

namespace A136421

/-- `round(∑[A001333(n)]/A000079(n))` -/
def P11968398401948559083.Spec : Prop :=
  ∀ n, P11968398401948559083.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P1428330850942968571

`round(A000129(n+1)/A000079(n))`
-/

namespace A136421.P1428330850942968571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000129 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A136421.P1428330850942968571

namespace A136421

/-- `round(A000129(n+1)/A000079(n))` -/
def P1428330850942968571.Spec : Prop :=
  ∀ n, P1428330850942968571.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P1315689840745999876

`round(∑[A001333(n)]/A011782(n+1))`
-/

namespace A136421.P1315689840745999876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A011782 (n + 1) : ℚ))

end

end A136421.P1315689840745999876

namespace A136421

/-- `round(∑[A001333(n)]/A011782(n+1))` -/
def P1315689840745999876.Spec : Prop :=
  ∀ n, P1315689840745999876.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P17456399399550041841

`round((A000129(n+1)+n)/A000051(n))`
-/

namespace A136421.P17456399399550041841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000129 (n + 1) + (n : ℤ) : ℚ) / (A000051 n : ℚ))

end

end A136421.P17456399399550041841

namespace A136421

/-- `round((A000129(n+1)+n)/A000051(n))` -/
def P17456399399550041841.Spec : Prop :=
  ∀ n, P17456399399550041841.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P2643579832869657139

`round(Δ[A265278(n+1)]/2^(n+1))`
-/

namespace A136421.P2643579832869657139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (2 ^ (n + 1) : ℚ))

end

end A136421.P2643579832869657139

namespace A136421

/-- `round(Δ[A265278(n+1)]/2^(n+1))` -/
def P2643579832869657139.Spec : Prop :=
  ∀ n, P2643579832869657139.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P7127261368715045007

`round(Δ[A024537(n)]/A000079(n))`
-/

namespace A136421.P7127261368715045007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A000079 n : ℚ))

end

end A136421.P7127261368715045007

namespace A136421

/-- `round(Δ[A024537(n)]/A000079(n))` -/
def P7127261368715045007.Spec : Prop :=
  ∀ n, P7127261368715045007.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P11045490752062368026

`round((A052542(n+1)+2)/A000051(n+1))`
-/

namespace A136421.P11045490752062368026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052542 (n + 1) + 2 : ℚ) / (A000051 (n + 1) : ℚ))

end

end A136421.P11045490752062368026

namespace A136421

/-- `round((A052542(n+1)+2)/A000051(n+1))` -/
def P11045490752062368026.Spec : Prop :=
  ∀ n, P11045490752062368026.a n = A136421 (n + 1)

end A136421

/-! ## A136421.P1308825036539173034

`round(A000129(n+1)/A054582(∑[n]))`
-/

namespace A136421.P1308825036539173034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000129 (n + 1) : ℚ) / (A054582 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))

end

end A136421.P1308825036539173034

namespace A136421

/-- `round(A000129(n+1)/A054582(∑[n]))` -/
def P1308825036539173034.Spec : Prop :=
  ∀ n, P1308825036539173034.a n = A136421 (n + 1)

end A136421

/-!
# A136422: Floor((x^n - (1-x)^n)/sqrt(3)+.5) where x = (sqrt(3)+1)/2.

The programs for A136422, the canonical program `A136422.P2914212242137417225` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136422 has offset 1).

The definition of A136422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136422.P2914212242137417225

`round(A002530(n+1)/A016116(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136422

/-- `round(A002530(n+1)/A016116(n))` -/
def P2914212242137417225.Spec : Prop :=
  ∀ n, P2914212242137417225.a n = A136422 (n + 1)

theorem P2914212242137417225.correct : P2914212242137417225.Spec := by
  intro n
  simp only [A136422, Nat.add_sub_cancel]

end A136422

/-! ## A136422.P14009075947756923432

`round(A155020(n)/A011782(n))`
-/

namespace A136422.P14009075947756923432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155020 n : ℚ) / (A011782 n : ℚ))

end

end A136422.P14009075947756923432

namespace A136422

/-- `round(A155020(n)/A011782(n))` -/
def P14009075947756923432.Spec : Prop :=
  ∀ n, P14009075947756923432.a n = A136422 (n + 1)

end A136422

/-! ## A136422.P17066047203470989521

`round(A002605(n+1)/2^n)`
-/

namespace A136422.P17066047203470989521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002605 (n + 1) : ℚ) / (2 ^ n : ℚ))

end

end A136422.P17066047203470989521

namespace A136422

/-- `round(A002605(n+1)/2^n)` -/
def P17066047203470989521.Spec : Prop :=
  ∀ n, P17066047203470989521.a n = A136422 (n + 1)

end A136422

/-! ## A136422.P10381525566836599514

`round(∑[A026150(n)]/A000079(n))`
-/

namespace A136422.P10381525566836599514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ))

end

end A136422.P10381525566836599514

namespace A136422

/-- `round(∑[A026150(n)]/A000079(n))` -/
def P10381525566836599514.Spec : Prop :=
  ∀ n, P10381525566836599514.a n = A136422 (n + 1)

end A136422

/-! ## A136422.P6206192244156006622

`round(A121907(n)/A003945(n))`
-/

namespace A136422.P6206192244156006622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121907 n : ℚ) / (A003945 n : ℚ))

end

end A136422.P6206192244156006622

namespace A136422

/-- `round(A121907(n)/A003945(n))` -/
def P6206192244156006622.Spec : Prop :=
  ∀ n, P6206192244156006622.a n = A136422 (n + 1)

end A136422

/-! ## A136422.P215286472382076211

`round(A080599(n)/A000142(n))`
-/

namespace A136422.P215286472382076211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A080599 n : ℚ) / (A000142 n : ℚ))

end

end A136422.P215286472382076211

namespace A136422

/-- `round(A080599(n)/A000142(n))` -/
def P215286472382076211.Spec : Prop :=
  ∀ n, P215286472382076211.a n = A136422 (n + 1)

end A136422

/-!
# A136423: Floor((x^n - (1-x)^n)/2 +.5) where x = (sqrt(4)+1)/2 = 3/2.

The programs for A136423, the canonical program `A136423.P10098519423750497427` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136423 has offset 1).

The definition of A136423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136423.P10098519423750497427

`round((3/2)^(n+1)/2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136423

/-- `round((3/2)^(n+1)/2)` -/
def P10098519423750497427.Spec : Prop :=
  ∀ n, P10098519423750497427.a n = A136423 (n + 1)

theorem P10098519423750497427.correct : P10098519423750497427.Spec := by
  intro n
  simp only [A136423, Nat.add_sub_cancel]

end A136423

/-! ## A136423.P3167172598406844456

`ceil(A002379(n+1)/2)`
-/

namespace A136423.P3167172598406844456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002379 (n + 1) : ℚ) / 2⌉

end

end A136423.P3167172598406844456

namespace A136423

/-- `ceil(A002379(n+1)/2)` -/
def P3167172598406844456.Spec : Prop :=
  ∀ n, P3167172598406844456.a n = A136423 (n + 1)

end A136423

/-! ## A136423.P13606815099003194131

`floor((A259796(n+1)-1)/2)`
-/

namespace A136423.P13606815099003194131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259796 (n + 1) - 1 : ℚ) / 2⌋

end

end A136423.P13606815099003194131

namespace A136423

/-- `floor((A259796(n+1)-1)/2)` -/
def P13606815099003194131.Spec : Prop :=
  ∀ n, P13606815099003194131.a n = A136423 (n + 1)

end A136423

/-! ## A136423.P10988600047136148792

`ceil(2^A008683(A006450(n+1))*A002379(n+1))`
-/

namespace A136423.P10988600047136148792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A002379 (n + 1) : ℚ)⌉

end

end A136423.P10988600047136148792

namespace A136423

/-- `ceil(2^A008683(A006450(n+1))*A002379(n+1))` -/
def P10988600047136148792.Spec : Prop :=
  ∀ n, P10988600047136148792.a n = A136423 (n + 1)

end A136423

/-! ## A136423.P16256635416781785474

`ceil(A018886(n+1)/A020737(n))`
-/

namespace A136423.P16256635416781785474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018886 (n + 1) : ℚ) / (A020737 n : ℚ)⌉

end

end A136423.P16256635416781785474

namespace A136423

/-- `ceil(A018886(n+1)/A020737(n))` -/
def P16256635416781785474.Spec : Prop :=
  ∀ n, P16256635416781785474.a n = A136423 (n + 1)

end A136423

/-! ## A136423.P7197001676216043010

`ceil(A304973(2*n+3)/A132753(n+1))`
-/

namespace A136423.P7197001676216043010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304973 (2 * n + 3) : ℚ) / (A132753 (n + 1) : ℚ)⌉

end

end A136423.P7197001676216043010

namespace A136423

/-- `ceil(A304973(2*n+3)/A132753(n+1))` -/
def P7197001676216043010.Spec : Prop :=
  ∀ n, P7197001676216043010.a n = A136423 (n + 1)

end A136423

/-!
# A136424: a(n) = floor((x^n - (1-x)^n) / (2x-1) +.5) where x = (sqrt(6)+1)/2 (and hence 2x-1 = sqrt(6)).

The programs for A136424, the canonical program `A136424.P6325635514495236307` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136424 has offset 1).

The definition of A136424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136424.P6325635514495236307

`round(∑[A002533(n)]/A000079(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136424

/-- `round(∑[A002533(n)]/A000079(n))` -/
def P6325635514495236307.Spec : Prop :=
  ∀ n, P6325635514495236307.a n = A136424 (n + 1)

theorem P6325635514495236307.correct : P6325635514495236307.Spec := by
  intro n
  simp only [A136424, Nat.add_sub_cancel]

end A136424

/-! ## A136424.P9559852149644055041

`round(A002532(n+1)/A000079(n))`
-/

namespace A136424.P9559852149644055041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002532 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A136424.P9559852149644055041

namespace A136424

/-- `round(A002532(n+1)/A000079(n))` -/
def P9559852149644055041.Spec : Prop :=
  ∀ n, P9559852149644055041.a n = A136424 (n + 1)

end A136424

/-! ## A136424.P16519377919053897121

`round(A002532(n+1)/A077957(2*n))`
-/

namespace A136424.P16519377919053897121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002532 (n + 1) : ℚ) / (A077957 (2 * n) : ℚ))

end

end A136424.P16519377919053897121

namespace A136424

/-- `round(A002532(n+1)/A077957(2*n))` -/
def P16519377919053897121.Spec : Prop :=
  ∀ n, P16519377919053897121.a n = A136424 (n + 1)

end A136424

/-! ## A136424.P7529449949501523670

`round(A002532(n+1)/A143095(2*n))`
-/

namespace A136424.P7529449949501523670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002532 (n + 1) : ℚ) / (A143095 (2 * n) : ℚ))

end

end A136424.P7529449949501523670

namespace A136424

/-- `round(A002532(n+1)/A143095(2*n))` -/
def P7529449949501523670.Spec : Prop :=
  ∀ n, P7529449949501523670.a n = A136424 (n + 1)

end A136424

/-! ## A136424.P7383118280188480424

`round(∑[2*A002533(n)]/A166920(n+1))`
-/

namespace A136424.P7383118280188480424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A166920 (n + 1) : ℚ))

end

end A136424.P7383118280188480424

namespace A136424

/-- `round(∑[2*A002533(n)]/A166920(n+1))` -/
def P7383118280188480424.Spec : Prop :=
  ∀ n, P7383118280188480424.a n = A136424 (n + 1)

end A136424

/-!
# A136425: a(n) = floor((x^n-(1-x)^n)/sqrt(7)+1/2) where x = (sqrt(7)+1)/2.

The programs for A136425, the canonical program `A136425.P6286989724802641672` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136425 has offset 1).

The definition of A136425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136425.P6286989724802641672

`round(A002536(n+1)/A016116(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136425

/-- `round(A002536(n+1)/A016116(n))` -/
def P6286989724802641672.Spec : Prop :=
  ∀ n, P6286989724802641672.a n = A136425 (n + 1)

theorem P6286989724802641672.correct : P6286989724802641672.Spec := by
  intro n
  simp only [A136425, Nat.add_sub_cancel]

end A136425

/-! ## A136425.P3519602464388130815

`round(∑[A083098(n)]/A000079(n))`
-/

namespace A136425.P3519602464388130815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ))

end

end A136425.P3519602464388130815

namespace A136425

/-- `round(∑[A083098(n)]/A000079(n))` -/
def P3519602464388130815.Spec : Prop :=
  ∀ n, P3519602464388130815.a n = A136425 (n + 1)

end A136425

/-! ## A136425.P3742514116870746249

`round(A083099(n+1)/A000079(n))`
-/

namespace A136425.P3742514116870746249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083099 (n + 1) : ℚ) / (A000079 n : ℚ))

end

end A136425.P3742514116870746249

namespace A136425

/-- `round(A083099(n+1)/A000079(n))` -/
def P3742514116870746249.Spec : Prop :=
  ∀ n, P3742514116870746249.a n = A136425 (n + 1)

end A136425

/-! ## A136425.P10276287048923031170

`round(A083099(n+1)/A011782(n+1))`
-/

namespace A136425.P10276287048923031170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083099 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ))

end

end A136425.P10276287048923031170

namespace A136425

/-- `round(A083099(n+1)/A011782(n+1))` -/
def P10276287048923031170.Spec : Prop :=
  ∀ n, P10276287048923031170.a n = A136425 (n + 1)

end A136425

/-! ## A136425.P5979604311108174836

`round(A274520(n+1)/A000079(n+1))`
-/

namespace A136425.P5979604311108174836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A274520 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ))

end

end A136425.P5979604311108174836

namespace A136425

/-- `round(A274520(n+1)/A000079(n+1))` -/
def P5979604311108174836.Spec : Prop :=
  ∀ n, P5979604311108174836.a n = A136425 (n + 1)

end A136425

/-!
# A136426: Triangle T(n,0)=0 and T(n,k) = -A028421(n-1,k-1), 0

The programs for A136426, there is no canonical definition to state claims against.
-/

/-! ## A136426.P15741886095190847726

`-((n-C(∑[char[∑[n]]], 2))*A132393(n))`
-/

namespace A136426.P15741886095190847726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) * A132393 n)

end

end A136426.P15741886095190847726

/-! ## A136426.P8719120615041751820

`-(A002262(n)*A132393(n))`
-/

namespace A136426.P8719120615041751820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A002262 n * A132393 n)

end

end A136426.P8719120615041751820

/-! ## A136426.P17249843191504009147

`-(A132393(n)*A329221(n))`
-/

namespace A136426.P17249843191504009147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A132393 n * A329221 n)

end

end A136426.P17249843191504009147

/-! ## A136426.P3785093284777139990

`(A057944(n)-n)*A132393(n)`
-/

namespace A136426.P3785093284777139990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057944 n - (n : ℤ)) * A132393 n

end

end A136426.P3785093284777139990

/-! ## A136426.P11422711856545244430

`-(A025668(n+1)*A132393(n))`
-/

namespace A136426.P11422711856545244430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A025668 (n + 1) * A132393 n)

end

end A136426.P11422711856545244430

/-! ## A136426.P3794166032035577710

`-(A025675(n+1)*A132393(n))`
-/

namespace A136426.P3794166032035577710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A025675 (n + 1) * A132393 n)

end

end A136426.P3794166032035577710

/-! ## A136426.P1696265102772063336

`-(A025690(n+1)*A132393(n))`
-/

namespace A136426.P1696265102772063336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A025690 (n + 1) * A132393 n)

end

end A136426.P1696265102772063336

/-! ## A136426.P18404330615923709925

`log2(1/A059268(n))*A132393(n)`
-/

namespace A136426.P18404330615923709925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (1 / (A059268 n : ℚ) : ℝ) * (A132393 n : ℝ)

end

end A136426.P18404330615923709925

/-! ## A136426.P16912552801782869858

`(1-A002260(n+1))*A132393(n)`
-/

namespace A136426.P16912552801782869858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A002260 (n + 1)) * A132393 n

end

end A136426.P16912552801782869858

/-!
# A136427: a(n) = 3*a(n-1) - 4*a(n-2) + 6*a(n-3) - 4*a(n-4), with initial terms 0,1,2,4.

The programs for A136427, the canonical program `A136427.P3367358770194513689` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136427 has offset 0).

The definition of A136427 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` (program `A136427.P3367358770194513689`, by `A136427.P3367358770194513689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A136427.P3367358770194513689

`3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=10, a(5)=24`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136427

/-- `3*a(n-1)-4*a(n-2)+6*a(n-3)-4*a(n-4)` -/
def P3367358770194513689.Spec : Prop :=
  ∀ n, P3367358770194513689.a n = A136427 n

theorem P3367358770194513689.correct : P3367358770194513689.Spec := by
  intro n
  simp only [A136427]

end A136427

/-!
# A136428: First differences of A064770.

The programs for A136428, there is no canonical definition to state claims against.
-/

/-! ## A136428.P11250936593801291000

`Δ[A064770(n)]`
-/

namespace A136428.P11250936593801291000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136428.P11250936593801291000

/-! ## A136428.P9842932655048735694

`A064770(n+1)-A064770(n)`
-/

namespace A136428.P9842932655048735694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (n + 1) - A064770 n

end

end A136428.P9842932655048735694

/-! ## A136428.P9764522385784005351

`A064770(A000027(n+1))+A001489(A064770(n))`
-/

namespace A136428.P9764522385784005351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A000027 (n + 1)).toNat + A001489 (A064770 n).toNat

end

end A136428.P9764522385784005351

/-! ## A136428.P1378628699633013724

`A305565(A062505(n+1)+49)`
-/

namespace A136428.P1378628699633013724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305565 (A062505 (n + 1) + 49).toNat

end

end A136428.P1378628699633013724

/-! ## A136428.P15778142443983998826

`7%gcd(A179125(n+1), A179130(n+1))`
-/

namespace A136428.P15778142443983998826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % Int.gcd (A179125 (n + 1)) (A179130 (n + 1))

end

end A136428.P15778142443983998826

/-!
# A136429: a(n) = Sum_{k=0..n} F(k+1)^2*F(n-k+1)^2 where F = Fibonacci numbers (A000045).

The programs for A136429, the canonical program `A136429.P4842593081704791646` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136429 has offset 0).

The definition of A136429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136429.P4842593081704791646

`Δ[A350787(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136429

/-- `Δ[A350787(n+1)]` -/
def P4842593081704791646.Spec : Prop :=
  ∀ n, P4842593081704791646.a n = A136429 n

theorem P4842593081704791646.correct : P4842593081704791646.Spec := by
  intro n
  simp only [A136429]

end A136429

/-! ## A136429.P9263534677550052566

`A238419(n)+Δ[A180665(n)]`
-/

namespace A136429.P9263534677550052566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 n + (f1 (n + 1) - f1 n)

end

end A136429.P9263534677550052566

namespace A136429

/-- `A238419(n)+Δ[A180665(n)]` -/
def P9263534677550052566.Spec : Prop :=
  ∀ n, P9263534677550052566.a n = A136429 n

end A136429

/-! ## A136429.P5244994087144650319

`A350787(n+2)-A350787(n+1)`
-/

namespace A136429.P5244994087144650319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350787 (n + 2) - A350787 (n + 1)

end

end A136429.P5244994087144650319

namespace A136429

/-- `A350787(n+2)-A350787(n+1)` -/
def P5244994087144650319.Spec : Prop :=
  ∀ n, P5244994087144650319.a n = A136429 n

theorem P5244994087144650319.correct : P5244994087144650319.Spec := by
  intro n
  simp only [A136429, Nat.add_sub_cancel, A136429.P5244994087144650319.a, A136429.P4842593081704791646.f1, A136429.P4842593081704791646.a, SequenceMachineLib.memo_apply]

end A136429

/-! ## A136429.P17042583760036965642

`Δ[Δ[A238419(A289207(n+1))]]`
-/

namespace A136429.P17042583760036965642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 (A289207 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136429.P17042583760036965642

namespace A136429

/-- `Δ[Δ[A238419(A289207(n+1))]]` -/
def P17042583760036965642.Spec : Prop :=
  ∀ n, P17042583760036965642.a n = A136429 n

end A136429

/-! ## A136429.P3117228646867185928

`Δ[Δ[A238419(A028310(n)-1)]]`
-/

namespace A136429.P3117228646867185928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136429.P3117228646867185928

namespace A136429

/-- `Δ[Δ[A238419(A028310(n)-1)]]` -/
def P3117228646867185928.Spec : Prop :=
  ∀ n, P3117228646867185928.a n = A136429 n

end A136429

/-! ## A136429.P16469327681416295980

`Δ[Δ[A238419(A004273(n)-n)]]`
-/

namespace A136429.P16469327681416295980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238419 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A136429.P16469327681416295980

namespace A136429

/-- `Δ[Δ[A238419(A004273(n)-n)]]` -/
def P16469327681416295980.Spec : Prop :=
  ∀ n, P16469327681416295980.a n = A136429 n

end A136429

/-! ## A136429.P5874594350524537153

`(A238420(n+2)-A238419(n))/4`
-/

namespace A136429.P5874594350524537153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238420 (n + 2) - A238419 n : ℚ) / 4

end

end A136429.P5874594350524537153

namespace A136429

/-- `(A238420(n+2)-A238419(n))/4` -/
def P5874594350524537153.Spec : Prop :=
  ∀ n, P5874594350524537153.a n = (A136429 n : ℚ)

end A136429

/-!
# A136431: Hyperfibonacci square number array a(k,n) = F(n)^(k), read by ascending antidiagonals (k, n >= 0).

The programs for A136431, there is no canonical definition to state claims against.
-/

/-! ## A136431.P5608628864521247328

`A105809(A056943(n))%A013609(n)`
-/

namespace A136431.P5608628864521247328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105809 (A056943 n).toNat) (A013609 n)

end

end A136431.P5608628864521247328

/-! ## A136431.P16414715921728155221

`char[A014132(n+1)]*A105809(A056943(n))`
-/

namespace A136431.P16414715921728155221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A105809 (A056943 n).toNat

end

end A136431.P16414715921728155221

/-! ## A136431.P13850750181069229888

`A023532(A061579(n))*A105809(A056943(n))`
-/

namespace A136431.P13850750181069229888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A061579 n).toNat * A105809 (A056943 n).toNat

end

end A136431.P13850750181069229888

/-! ## A136431.P3858350641497387172

`A108617(A007401(n+1))-A074829(n+1)`
-/

namespace A136431.P3858350641497387172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A007401 (n + 1)).toNat - A074829 (n + 1)

end

end A136431.P3858350641497387172

/-! ## A136431.P9524230129469970395

`A108617(A002024(n+1)+n)-A074829(n+1)`
-/

namespace A136431.P9524230129469970395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A002024 (n + 1) + (n : ℤ)).toNat - A074829 (n + 1)

end

end A136431.P9524230129469970395

/-! ## A136431.P15032147106808847901

`A108617(A007401(n+1))+A108617(n)-A316939(n)`
-/

namespace A136431.P15032147106808847901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108617 (A007401 (n + 1)).toNat + (A108617 n - A316939 n)

end

end A136431.P15032147106808847901

/-! ## A136431.P7852479952280046703

`A316939(n)-A108617(∑[A035214(n)])`
-/

namespace A136431.P7852479952280046703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n - A108617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A136431.P7852479952280046703

/-! ## A136431.P7358076620704898646

`A316939(n)-A108617(A014132(n+1))`
-/

namespace A136431.P7358076620704898646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n - A108617 (A014132 (n + 1)).toNat

end

end A136431.P7358076620704898646

/-! ## A136431.P5722643232274643236

`A316939(n)-A108617(A007401(n+1)+1)`
-/

namespace A136431.P5722643232274643236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316939 n - A108617 (A007401 (n + 1) + 1).toNat

end

end A136431.P5722643232274643236

/-!
# A136432: a(n)! is the smallest factorial bigger than n^n.

The programs for A136432, there is no canonical definition to state claims against.
-/

/-! ## A136432.P10573527201936316263

`A064318(n)+1`
-/

namespace A136432.P10573527201936316263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064318 n + 1

end

end A136432.P10573527201936316263

/-! ## A136432.P17899240968011128622

`A020725(A064318(n))`
-/

namespace A136432.P17899240968011128622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064318 n).toNat

end

end A136432.P17899240968011128622

/-! ## A136432.P14255088476575167090

`A008619(2*A064318(n))`
-/

namespace A136432.P14255088476575167090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A064318 n).toNat

end

end A136432.P14255088476575167090

/-! ## A136432.P12266682940477635860

`A027656(2*A064318(n))`
-/

namespace A136432.P12266682940477635860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A064318 n).toNat

end

end A136432.P12266682940477635860

/-! ## A136432.P14012557916421359625

`A008621(4*A064318(n))`
-/

namespace A136432.P14012557916421359625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A064318 n).toNat

end

end A136432.P14012557916421359625

/-! ## A136432.P353669596936051197

`A008624(4*A064318(n))`
-/

namespace A136432.P353669596936051197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A064318 n).toNat

end

end A136432.P353669596936051197

/-!
# A136433: a(n+2) = a(n+1)*(n mod 3 + 1) + (n mod 2 + 1), a(1) = 11.

The programs for A136433, the canonical program `A136433.P10406826739705640651` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136433 has offset 1).

The definition of A136433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136433.P10406826739705640651

`a(n-1)*((n-1)%3+1)+(n-1)%2+1` with `a(0)=11`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136433

/-- `a(n-1)*((n-1)%3+1)+(n-1)%2+1` -/
def P10406826739705640651.Spec : Prop :=
  ∀ n, P10406826739705640651.a n = A136433 (n + 1)

theorem P10406826739705640651.correct : P10406826739705640651.Spec := by
  intro n
  simp only [A136433, Nat.add_sub_cancel]

end A136433

/-! ## A136433.P2659728907297531131

`6*a(n-3)+a(n-6)-6*a(n-9)` with `a(0)=11, a(1)=12, a(2)=26, a(3)=79, a(4)=81, a(5)=163, a(6)=491, a(7)=492, a(8)=986`
-/

namespace A136433.P2659728907297531131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 12, 26, 79, 81, 163, 491, 492, 986] fun n a =>
  6 * a (n - 3) + a (n - 6) - 6 * a (n - 9)

end

end A136433.P2659728907297531131

namespace A136433

/-- `6*a(n-3)+a(n-6)-6*a(n-9)` -/
def P2659728907297531131.Spec : Prop :=
  ∀ n, P2659728907297531131.a n = A136433 (n + 1)

end A136433

/-!
# A136435: Primes in A137242.

The programs for A136435, there is no canonical definition to state claims against.
-/

/-! ## A136435.P14594163282829539487

`p?[n*A002266(A076368(n+1))]`
-/

namespace A136435.P14594163282829539487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002266 (A076368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P14594163282829539487

/-! ## A136435.P14519934246386432815

`p?[n*A161912(A054541(n+1))]`
-/

namespace A136435.P14519934246386432815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A161912 (A054541 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P14519934246386432815

/-! ## A136435.P14804016596754537304

`p?[(n+1)*A006141(A001223(n+1))]`
-/

namespace A136435.P14804016596754537304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006141 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P14804016596754537304

/-! ## A136435.P15356676960034054092

`p?[A004525((n+1)*A116127(n+1))]`
-/

namespace A136435.P15356676960034054092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A116127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P15356676960034054092

/-! ## A136435.P9610529096701998303

`p?[n*A059995(2*A076368(n+1))]`
-/

namespace A136435.P9610529096701998303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059995 (2 * A076368 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P9610529096701998303

/-! ## A136435.P15351445359218089377

`p?[(n+1)*A002266(A001223(n+1)+1)]`
-/

namespace A136435.P15351445359218089377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002266 (A001223 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136435.P15351445359218089377

/-!
# A136436: Concatenation of subsequences: for each i the sequence of integers such that (1) they can be grouped into terms having the sums 1,2,3,...,i; (2) they can be grouped into terms having the sums i,...,3,2,1; (3) they are as large as possible.

The programs for A136436, there is no canonical definition to state claims against.
-/

/-! ## A136436.P10091650925566314476

`A257993(A197602(n+1)-A174135(n+2))`
-/

namespace A136436.P10091650925566314476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A197602 (n + 1) - A174135 (n + 2)).toNat

end

end A136436.P10091650925566314476

/-! ## A136436.P4130450538636088160

`∑{p}[xor(27, A285437(n+1)), A001221(#)]`
-/

namespace A136436.P4130450538636088160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 27 (A285437 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A136436.P4130450538636088160

/-! ## A136436.P204850550652210681

`∑{p}[xor(27, A285437(n+1)), A001222(#)]`
-/

namespace A136436.P204850550652210681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 27 (A285437 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A136436.P204850550652210681

/-! ## A136436.P17761157237841735944

`A001221(A103775(2*n+3)+A010461(n+1))`
-/

namespace A136436.P17761157237841735944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103775 (2 * n + 3) + A010461 (n + 1)).toNat

end

end A136436.P17761157237841735944

/-!
# A136437: a(n) = prime(n) - k! where k is the greatest number such that k! <= prime(n).

The programs for A136437, the canonical program `A136437.P3343558122618861714` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136437 has offset 1).

The definition of A136437 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212598, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136437.P3343558122618861714

`A212598(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136437

/-- `A212598(A000040(n+1))` -/
def P3343558122618861714.Spec : Prop :=
  ∀ n, P3343558122618861714.a n = A136437 (n + 1)

theorem P3343558122618861714.correct : P3343558122618861714.Spec := by
  intro n
  simp only [A136437, Nat.add_sub_cancel]

end A136437

/-! ## A136437.P1029249907225205833

`A212598(p?[comp[n²]])`
-/

namespace A136437.P1029249907225205833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A136437.P1029249907225205833

namespace A136437

/-- `A212598(p?[comp[n²]])` -/
def P1029249907225205833.Spec : Prop :=
  ∀ n, P1029249907225205833.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P18307202166656347411

`A212598(A006005(n+1))`
-/

namespace A136437.P18307202166656347411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A006005 (n + 1)).toNat

end

end A136437.P18307202166656347411

namespace A136437

/-- `A212598(A006005(n+1))` -/
def P18307202166656347411.Spec : Prop :=
  ∀ n, P18307202166656347411.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P9890668510489491799

`A212598(A008578(n+2))`
-/

namespace A136437.P9890668510489491799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A008578 (n + 2)).toNat

end

end A136437.P9890668510489491799

namespace A136437

/-- `A212598(A008578(n+2))` -/
def P9890668510489491799.Spec : Prop :=
  ∀ n, P9890668510489491799.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P9774862671008003931

`A212598(A075643(n+2))`
-/

namespace A136437.P9774862671008003931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A075643 (n + 2)).toNat

end

end A136437.P9774862671008003931

namespace A136437

/-- `A212598(A075643(n+2))` -/
def P9774862671008003931.Spec : Prop :=
  ∀ n, P9774862671008003931.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P16399090970978454338

`A212598(A182986(n+2))`
-/

namespace A136437.P16399090970978454338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A182986 (n + 2)).toNat

end

end A136437.P16399090970978454338

namespace A136437

/-- `A212598(A182986(n+2))` -/
def P16399090970978454338.Spec : Prop :=
  ∀ n, P16399090970978454338.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P5067514884593314358

`A212598(A158611(n+3))`
-/

namespace A136437.P5067514884593314358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (A158611 (n + 3)).toNat

end

end A136437.P5067514884593314358

namespace A136437

/-- `A212598(A158611(n+3))` -/
def P5067514884593314358.Spec : Prop :=
  ∀ n, P5067514884593314358.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P7199081495549561884

`A212598(record[A006530(n+2)])`
-/

namespace A136437.P7199081495549561884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212598 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136437.P7199081495549561884

namespace A136437

/-- `A212598(record[A006530(n+2)])` -/
def P7199081495549561884.Spec : Prop :=
  ∀ n, P7199081495549561884.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P5767645088260420663

`Δ[A007504(n)]-A048764(A068499(n+2))`
-/

namespace A136437.P5767645088260420663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A048764 (A068499 (n + 2)).toNat

end

end A136437.P5767645088260420663

namespace A136437

/-- `Δ[A007504(n)]-A048764(A068499(n+2))` -/
def P5767645088260420663.Spec : Prop :=
  ∀ n, P5767645088260420663.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P3842103536881138629

`sqrt(A001248(n+1))-A048764(A068499(n+2))`
-/

namespace A136437.P3842103536881138629
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A048764 (A068499 (n + 2)).toNat : ℝ)

end

end A136437.P3842103536881138629

namespace A136437

/-- `sqrt(A001248(n+1))-A048764(A068499(n+2))` -/
def P3842103536881138629.Spec : Prop :=
  ∀ n, P3842103536881138629.a n = (A136437 (n + 1) : ℝ)

end A136437

/-! ## A136437.P9842960054289345080

`A086801(n+1)+3-A048764(Δ[A007504(n)])`
-/

namespace A136437.P9842960054289345080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A048764 (f1 (n + 1) - f1 n).toNat

end

end A136437.P9842960054289345080

namespace A136437

/-- `A086801(n+1)+3-A048764(Δ[A007504(n)])` -/
def P9842960054289345080.Spec : Prop :=
  ∀ n, P9842960054289345080.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P4981039597069702962

`A100484(n+1)/2-A048764(Δ[A007504(n)])`
-/

namespace A136437.P4981039597069702962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A048764 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A136437.P4981039597069702962

namespace A136437

/-- `A100484(n+1)/2-A048764(Δ[A007504(n)])` -/
def P4981039597069702962.Spec : Prop :=
  ∀ n, P4981039597069702962.a n = (A136437 (n + 1) : ℚ)

end A136437

/-! ## A136437.P15230600325044269964

`A001748(n+1)/3-A048764(Δ[A007504(n)])`
-/

namespace A136437.P15230600325044269964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3 - (A048764 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A136437.P15230600325044269964

namespace A136437

/-- `A001748(n+1)/3-A048764(Δ[A007504(n)])` -/
def P15230600325044269964.Spec : Prop :=
  ∀ n, P15230600325044269964.a n = (A136437 (n + 1) : ℚ)

end A136437

/-! ## A136437.P12293755391208347129

`A175225(n+1)-10-A048764(Δ[A007504(n)])`
-/

namespace A136437.P12293755391208347129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 10 - A048764 (f1 (n + 1) - f1 n).toNat

end

end A136437.P12293755391208347129

namespace A136437

/-- `A175225(n+1)-10-A048764(Δ[A007504(n)])` -/
def P12293755391208347129.Spec : Prop :=
  ∀ n, P12293755391208347129.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P16957262313239399660

`A086801(n+1)+3-A048764(A068499(n+2))`
-/

namespace A136437.P16957262313239399660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A048764 (A068499 (n + 2)).toNat

end

end A136437.P16957262313239399660

namespace A136437

/-- `A086801(n+1)+3-A048764(A068499(n+2))` -/
def P16957262313239399660.Spec : Prop :=
  ∀ n, P16957262313239399660.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P15470528802618369371

`A175225(n+1)-10-A048764(A068499(n+2))`
-/

namespace A136437.P15470528802618369371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 10 - A048764 (A068499 (n + 2)).toNat

end

end A136437.P15470528802618369371

namespace A136437

/-- `A175225(n+1)-10-A048764(A068499(n+2))` -/
def P15470528802618369371.Spec : Prop :=
  ∀ n, P15470528802618369371.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P53078338441453515

`A086801(n+1)+3-A048764(sqrt(A001248(n+1)))`
-/

namespace A136437.P53078338441453515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A048764 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A136437.P53078338441453515

namespace A136437

/-- `A086801(n+1)+3-A048764(sqrt(A001248(n+1)))` -/
def P53078338441453515.Spec : Prop :=
  ∀ n, P53078338441453515.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P10925190906103877306

`A175225(n+1)-10-A048764(sqrt(A001248(n+1)))`
-/

namespace A136437.P10925190906103877306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 10 - A048764 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A136437.P10925190906103877306

namespace A136437

/-- `A175225(n+1)-10-A048764(sqrt(A001248(n+1)))` -/
def P10925190906103877306.Spec : Prop :=
  ∀ n, P10925190906103877306.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P8810575506771486403

`A086801(n+1)+3-A048764(A086801(n+1)+3)`
-/

namespace A136437.P8810575506771486403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + 3 - A048764 (A086801 (n + 1) + 3).toNat

end

end A136437.P8810575506771486403

namespace A136437

/-- `A086801(n+1)+3-A048764(A086801(n+1)+3)` -/
def P8810575506771486403.Spec : Prop :=
  ∀ n, P8810575506771486403.a n = A136437 (n + 1)

end A136437

/-! ## A136437.P8718469175804163594

`A175225(n+1)-10-A048764(A001748(n+1)/3)`
-/

namespace A136437.P8718469175804163594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 10 - A048764 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat

end

end A136437.P8718469175804163594

namespace A136437

/-- `A175225(n+1)-10-A048764(A001748(n+1)/3)` -/
def P8718469175804163594.Spec : Prop :=
  ∀ n, P8718469175804163594.a n = A136437 (n + 1)

end A136437

/-!
# A136438: Hypertribonacci number array read by antidiagonals.

The programs for A136438, there is no canonical definition to state claims against.
-/

/-! ## A136438.P12643543843203134525

`A008616(A037213(A208523(n+1)²))`
-/

namespace A136438.P12643543843203134525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A037213 (A208523 (n + 1) ^ 2).toNat).toNat

end

end A136438.P12643543843203134525

/-! ## A136438.P6703664103937613894

`val(A319607(A208447(n)), 2)`
-/

namespace A136438.P6703664103937613894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319607 (A208447 n).toNat).toNat 2

end

end A136438.P6703664103937613894

/-! ## A136438.P8427387749505844004

`A335678(A335545(n))%6`
-/

namespace A136438.P8427387749505844004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335678 (A335545 n).toNat) 6

end

end A136438.P8427387749505844004

/-! ## A136438.P7675364457418095404

`A175267(A274293(n))`
-/

namespace A136438.P7675364457418095404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175267 (A274293 n).toNat

end

end A136438.P7675364457418095404

/-! ## A136438.P15200723551218937393

`A004218(A156953(n))`
-/

namespace A136438.P15200723551218937393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A156953 n).toNat

end

end A136438.P15200723551218937393

/-!
# A136439: Sum of heights of all 1-watermelons with wall of length 2*n.

The programs for A136439, there is no canonical definition to state claims against.
-/

/-! ## A136439.P8720350324947749963

`A261003(n+1)-record[A097331(n)]`
-/

namespace A136439.P8720350324947749963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261003 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136439.P8720350324947749963

/-! ## A136439.P4559539938140769051

`A261003(n+1)-A000108(n+1)`
-/

namespace A136439.P4559539938140769051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261003 (n + 1) - A000108 (n + 1)

end

end A136439.P4559539938140769051

/-! ## A136439.P6309888330679730727

`A346157(n+2)-A346158(n+1)`
-/

namespace A136439.P6309888330679730727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346157 (n + 2) - A346158 (n + 1)

end

end A136439.P6309888330679730727

/-! ## A136439.P6349893872163044102

`A291886(n+1)+A291886(n+1)-A132891(n+1)`
-/

namespace A136439.P6349893872163044102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291886 (n + 1) + (A291886 (n + 1) - A132891 (n + 1))

end

end A136439.P6349893872163044102

/-! ## A136439.P3294037884458225773

`A000758(n+1)+∑[A071724(n)]`
-/

namespace A136439.P3294037884458225773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000758 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136439.P3294037884458225773

/-!
# A136440: Sum of heights of all 2-watermelons with wall of length 2*n.

The programs for A136440, there is no canonical definition to state claims against.
-/

/-! ## A136440.P17879522672250091282

`A071742(n)+∑[A020725(A001711(n))]`
-/

namespace A136440.P17879522672250091282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A001711 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071742 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136440.P17879522672250091282

/-!
# A136441: Number of rotational symmetries in the binary expansion of a number with 0 appended to the front.

The programs for A136441, there is no canonical definition to state claims against.
-/

/-! ## A136441.P16090128946423957963

`floor(log2(root(n+2, A302291(2*n))))+1`
-/

namespace A136441.P16090128946423957963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((n + 2 : ℝ) ^ (1 / (A302291 (2 * n) : ℝ)))⌋ + 1

end

end A136441.P16090128946423957963

/-! ## A136441.P1530617016826075431

`(A070939(n)+1)/A302291(2*n)`
-/

namespace A136441.P1530617016826075431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n + 1 : ℚ) / (A302291 (2 * n) : ℚ)

end

end A136441.P1530617016826075431

/-! ## A136441.P16806969918491608147

`round(root(A002024(n+2), A302291(2*n)))`
-/

namespace A136441.P16806969918491608147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002024 (n + 2) : ℝ) ^ (1 / (A302291 (2 * n) : ℝ)))

end

end A136441.P16806969918491608147

/-! ## A136441.P1198502697184061108

`floor(root(A002024(2*(n+1)), A302291(2*n)))`
-/

namespace A136441.P1198502697184061108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002024 (2 * (n + 1)) : ℝ) ^ (1 / (A302291 (2 * n) : ℝ))⌋

end

end A136441.P1198502697184061108

/-! ## A136441.P7421067955349569955

`A077168(A070939(n))/A302291(2*n)`
-/

namespace A136441.P7421067955349569955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077168 (A070939 n).toNat : ℚ) / (A302291 (2 * n) : ℚ)

end

end A136441.P7421067955349569955

/-! ## A136441.P2973533346229203674

`A138904(A010078(n+1))+floor(1/(n+1))`
-/

namespace A136441.P2973533346229203674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A010078 (n + 1)).toNat + ⌊1 / (n + 1 : ℚ)⌋

end

end A136441.P2973533346229203674

/-! ## A136441.P4347698777458062035

`A138904(A010078(n+1)+A000038(n))`
-/

namespace A136441.P4347698777458062035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A010078 (n + 1) + A000038 n).toNat

end

end A136441.P4347698777458062035

/-! ## A136441.P13887633759261655848

`A054977(n)*A138904(A010078(n+1))`
-/

namespace A136441.P13887633759261655848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A138904 (A010078 (n + 1)).toNat

end

end A136441.P13887633759261655848

/-! ## A136441.P7511199888701460311

`A138904(or(A010078(n+1), A295335(n)))`
-/

namespace A136441.P7511199888701460311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (Int.lor (A010078 (n + 1)) (A295335 n)).toNat

end

end A136441.P7511199888701460311

/-! ## A136441.P6825722293261970978

`A007318(a(n-1))*A138904(A010078(n+1))` with `a(0)=2`
-/

namespace A136441.P6825722293261970978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007318 (a (n - 1)).toNat * A138904 (A010078 (n + 1)).toNat

end

end A136441.P6825722293261970978

/-!
# A136442: a(3n) = 1, a(3n-1) = 0 and a(3n+1) = a(n).

The programs for A136442, the canonical program `A136442.P17525253815938409840` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136442 has offset 0).

The definition of A136442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136442.P17525253815938409840

`C(a(floor(n/3)), n%3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136442

/-- `C(a(floor(n/3)), n%3)` -/
def P17525253815938409840.Spec : Prop :=
  ∀ n, (P17525253815938409840.a n : ℤ) = A136442 n

theorem P17525253815938409840.correct : P17525253815938409840.Spec := by
  intro n
  simp only [A136442]

end A136442

/-! ## A136442.P16997959304487953656

`∑{d}[Δ[n²]², #%3]%2`
-/

namespace A136442.P16997959304487953656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d % 3) % 2

end

end A136442.P16997959304487953656

namespace A136442

/-- `∑{d}[Δ[n²]², #%3]%2` -/
def P16997959304487953656.Spec : Prop :=
  ∀ n, (P16997959304487953656.a n : ℤ) = A136442 n

end A136442

/-! ## A136442.P10446600225627706544

`dr((a(floor(n/3))+n)%3+3*n)%2` with `a(0)=1`
-/

namespace A136442.P10446600225627706544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot (((a ⌊(n : ℚ) / 3⌋.toNat + n) % 3 + 3 * n : ℕ) : ℤ) % 2

end

end A136442.P10446600225627706544

namespace A136442

/-- `dr((a(floor(n/3))+n)%3+3*n)%2` -/
def P10446600225627706544.Spec : Prop :=
  ∀ n, (P10446600225627706544.a n : ℤ) = A136442 n

end A136442

/-! ## A136442.P16268075849886982275

`(a(floor(n/3))-a(n-1)*a(n-2))^(n²%3)` with `a(0)=1, a(1)=1`
-/

namespace A136442.P16268075849886982275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat - a (n - 1) * a (n - 2)) ^ (n ^ 2 % 3)

end

end A136442.P16268075849886982275

namespace A136442

/-- `(a(floor(n/3))-a(n-1)*a(n-2))^(n²%3)` -/
def P16268075849886982275.Spec : Prop :=
  ∀ n, P16268075849886982275.a n = A136442 n

end A136442

/-! ## A136442.P15939903526159790203

`char[A138670(n)]`
-/

namespace A136442.P15939903526159790203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A136442.P15939903526159790203

namespace A136442

/-- `char[A138670(n)]` -/
def P15939903526159790203.Spec : Prop :=
  ∀ n, (P15939903526159790203.a n : ℤ) = A136442 n

end A136442

/-! ## A136442.P9681823006351270313

`1-A116178(n)`
-/

namespace A136442.P9681823006351270313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A116178 n

end

end A136442.P9681823006351270313

namespace A136442

/-- `1-A116178(n)` -/
def P9681823006351270313.Spec : Prop :=
  ∀ n, P9681823006351270313.a n = A136442 n

end A136442

/-! ## A136442.P18360281808243717353

`A137893(Δ[n²])`
-/

namespace A136442.P18360281808243717353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136442.P18360281808243717353

namespace A136442

/-- `A137893(Δ[n²])` -/
def P18360281808243717353.Spec : Prop :=
  ∀ n, P18360281808243717353.a n = A136442 n

end A136442

/-! ## A136442.P7585067273547632472

`char[comp[A138671(n)]]`
-/

namespace A136442.P7585067273547632472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A136442.P7585067273547632472

namespace A136442

/-- `char[comp[A138671(n)]]` -/
def P7585067273547632472.Spec : Prop :=
  ∀ n, (P7585067273547632472.a n : ℤ) = A136442 n

end A136442

/-! ## A136442.P15214635026954938053

`3-p?[A106036(n)]`
-/

namespace A136442.P15214635026954938053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A136442.P15214635026954938053

namespace A136442

/-- `3-p?[A106036(n)]` -/
def P15214635026954938053.Spec : Prop :=
  ∀ n, P15214635026954938053.a n = A136442 n

end A136442

/-! ## A136442.P9945986096731285310

`ceil(Δ[sqrt(A005812(n))])`
-/

namespace A136442.P9945986096731285310
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005812 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A136442.P9945986096731285310

namespace A136442

/-- `ceil(Δ[sqrt(A005812(n))])` -/
def P9945986096731285310.Spec : Prop :=
  ∀ n, P9945986096731285310.a n = A136442 n

end A136442

/-! ## A136442.P4833674459714124206

`ceil(Δ[sqrt(A061295(n))])`
-/

namespace A136442.P4833674459714124206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061295 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A136442.P4833674459714124206

namespace A136442

/-- `ceil(Δ[sqrt(A061295(n))])` -/
def P4833674459714124206.Spec : Prop :=
  ∀ n, P4833674459714124206.a n = A136442 n

end A136442

/-! ## A136442.P9145655025905386359

`ceil(acot(Δ[A343231(n)]))`
-/

namespace A136442.P9145655025905386359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌉

end

end A136442.P9145655025905386359

namespace A136442

/-- `ceil(acot(Δ[A343231(n)]))` -/
def P9145655025905386359.Spec : Prop :=
  ∀ n, P9145655025905386359.a n = A136442 n

end A136442

/-! ## A136442.P5148890176350267077

`A189673(2*(n+1))`
-/

namespace A136442.P5148890176350267077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (2 * (n + 1))

end

end A136442.P5148890176350267077

namespace A136442

/-- `A189673(2*(n+1))` -/
def P5148890176350267077.Spec : Prop :=
  ∀ n, P5148890176350267077.a n = A136442 n

end A136442

/-! ## A136442.P12082172114959259557

`A080846(4*n+2)`
-/

namespace A136442.P12082172114959259557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (4 * n + 2)

end

end A136442.P12082172114959259557

namespace A136442

/-- `A080846(4*n+2)` -/
def P12082172114959259557.Spec : Prop :=
  ∀ n, P12082172114959259557.a n = A136442 n

end A136442

/-! ## A136442.P16693180225192535812

`A253887(n+1)%2`
-/

namespace A136442.P16693180225192535812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253887 (n + 1)) 2

end

end A136442.P16693180225192535812

namespace A136442

/-- `A253887(n+1)%2` -/
def P16693180225192535812.Spec : Prop :=
  ∀ n, P16693180225192535812.a n = A136442 n

end A136442

/-! ## A136442.P17289826564742780015

`A305490(n+1)%2`
-/

namespace A136442.P17289826564742780015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305490 (n + 1)) 2

end

end A136442.P17289826564742780015

namespace A136442

/-- `A305490(n+1)%2` -/
def P17289826564742780015.Spec : Prop :=
  ∀ n, P17289826564742780015.a n = A136442 n

end A136442

/-! ## A136442.P5920434649205361925

`A286577(n+1)%3`
-/

namespace A136442.P5920434649205361925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286577 (n + 1)) 3

end

end A136442.P5920434649205361925

namespace A136442

/-- `A286577(n+1)%3` -/
def P5920434649205361925.Spec : Prop :=
  ∀ n, P5920434649205361925.a n = A136442 n

end A136442

/-! ## A136442.P6262449707111822618

`1-A080846(Δ[n²])`
-/

namespace A136442.P6262449707111822618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080846 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136442.P6262449707111822618

namespace A136442

/-- `1-A080846(Δ[n²])` -/
def P6262449707111822618.Spec : Prop :=
  ∀ n, P6262449707111822618.a n = A136442 n

end A136442

/-!
# A136443: Numbers m such that A102863(m) = 1.

The programs for A136443, there is no canonical definition to state claims against.
-/

/-! ## A136443.P9872435764592139539

`eq[1, A102863(n+1)]+1`
-/

namespace A136443.P9872435764592139539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136443.P9872435764592139539

/-! ## A136443.P10152009906454801906

`filter[A293226(n+1), A102863(#)]`
-/

namespace A136443.P10152009906454801906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P10152009906454801906

/-! ## A136443.P3947898565415659109

`filter[A293450(n+1), A102863(#)]`
-/

namespace A136443.P3947898565415659109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P3947898565415659109

/-! ## A136443.P8037347010102809341

`filter[A296073(n+1), A102863(#)]`
-/

namespace A136443.P8037347010102809341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P8037347010102809341

/-! ## A136443.P13993384721022607963

`filter[A305800(n+1), A102863(#)]`
-/

namespace A136443.P13993384721022607963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P13993384721022607963

/-! ## A136443.P14923744185410226209

`filter[A305811(n+1), A102863(#)]`
-/

namespace A136443.P14923744185410226209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P14923744185410226209

/-! ## A136443.P6377770961237933277

`filter[A305820(n+1), A102863(#)]`
-/

namespace A136443.P6377770961237933277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P6377770961237933277

/-! ## A136443.P5128186302683489947

`filter[A305894(n+1), A102863(#)]`
-/

namespace A136443.P5128186302683489947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P5128186302683489947

/-! ## A136443.P4322393688306192934

`filter[A305902(n+1), A102863(#)]`
-/

namespace A136443.P4322393688306192934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P4322393688306192934

/-! ## A136443.P4019125163928625477

`filter[A305979(n+1), A102863(#)]`
-/

namespace A136443.P4019125163928625477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102863 (f1 j).toNat = 1) n)

end

end A136443.P4019125163928625477

/-!
# A136444: a(n) = Sum_{k=0..n} k*binomial(n-k, 2*k).

The programs for A136444, the canonical program `A136444.P17468755045038828291` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136444 has offset 0).

The definition of A136444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136444.P2232787124091383215

`A275443(n)+Δ[A275443(n)/2]`
-/

namespace A136444.P2232787124091383215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275443 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275443 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A136444.P2232787124091383215

namespace A136444

/-- `A275443(n)+Δ[A275443(n)/2]` -/
def P2232787124091383215.Spec : Prop :=
  ∀ n, P2232787124091383215.a n = (A136444 n : ℚ)

end A136444

/-! ## A136444.P5507730356113232373

`(A275443(n+1)+A275443(n))/2`
-/

namespace A136444.P5507730356113232373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275443 (n + 1) + A275443 n : ℚ) / 2

end

end A136444.P5507730356113232373

namespace A136444

/-- `(A275443(n+1)+A275443(n))/2` -/
def P5507730356113232373.Spec : Prop :=
  ∀ n, P5507730356113232373.a n = (A136444 n : ℚ)

end A136444

/-! ## A136444.P17468755045038828291

`Δ[A118430(abs(1-n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136444

/-- `Δ[A118430(abs(1-n))]` -/
def P17468755045038828291.Spec : Prop :=
  ∀ n, P17468755045038828291.a n = A136444 n

theorem P17468755045038828291.correct : P17468755045038828291.Spec := by
  intro n
  simp only [A136444]

end A136444

/-! ## A136444.P5056550700599573815

`abs(Δ[A118430(A057428(n)+n)])`
-/

namespace A136444.P5056550700599573815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136444.P5056550700599573815

namespace A136444

/-- `abs(Δ[A118430(A057428(n)+n)])` -/
def P5056550700599573815.Spec : Prop :=
  ∀ n, P5056550700599573815.a n = A136444 n

end A136444

/-! ## A136444.P12692426710937483601

`A118430(n)-A118430(abs(1-n))`
-/

namespace A136444.P12692426710937483601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 n - A118430 |1 - (n : ℤ)|.toNat

end

end A136444.P12692426710937483601

namespace A136444

/-- `A118430(n)-A118430(abs(1-n))` -/
def P12692426710937483601.Spec : Prop :=
  ∀ n, P12692426710937483601.a n = A136444 n

theorem P12692426710937483601.correct : P12692426710937483601.Spec := by
  intro n
  simp only [A136444, Nat.add_sub_cancel, A136444.P12692426710937483601.a, A136444.P17468755045038828291.f1, A136444.P17468755045038828291.a, SequenceMachineLib.memo_apply]
  try simp

end A136444

/-!
# A136446: Numbers k such that some subset of the numbers { 1 < d < k : d divides k } adds up to k.

The programs for A136446, there is no canonical definition to state claims against.
-/

/-! ## A136446.P11473086358303227419

`lt[0, n*A293814(n)]`
-/

namespace A136446.P11473086358303227419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136446.P11473086358303227419

/-! ## A136446.P15997026199211251467

`lt[1, A211111(n)]`
-/

namespace A136446.P15997026199211251467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136446.P15997026199211251467

/-! ## A136446.P2955715517082906739

`lt[1, A331979(n)]`
-/

namespace A136446.P2955715517082906739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331979 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136446.P2955715517082906739

/-! ## A136446.P13683248265033555784

`lt[1/A028310(n), A293814(n)]`
-/

namespace A136446.P13683248265033555784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A028310 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A136446.P13683248265033555784

/-! ## A136446.P13439289425321649366

`eq[0, A000038(n)^A293814(n)]`
-/

namespace A136446.P13439289425321649366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A293814 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A136446.P13439289425321649366

/-! ## A136446.P1511836325153919713

`eq[0, A000038(n)^A331979(n)]`
-/

namespace A136446.P1511836325153919713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A331979 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A136446.P1511836325153919713

/-! ## A136446.P15814518042514204096

`eq[3, gcd(A001748(n+1), A331979(n))]`
-/

namespace A136446.P15814518042514204096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001748 (n + 1)) (A331979 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136446.P15814518042514204096

/-! ## A136446.P6911854206068252799

`lt[A293814(A032741(n)), A293814(n)]`
-/

namespace A136446.P6911854206068252799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136446.P6911854206068252799

/-! ## A136446.P16159306787110248128

`lt[A341620(n+1), A293814(A028310(n))]`
-/

namespace A136446.P16159306787110248128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136446.P16159306787110248128

/-! ## A136446.P10193902895531791844

`eq[0, A242457(n+1)^A293814(n)]`
-/

namespace A136446.P10193902895531791844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242457 (n + 1) : ℚ) ^ (A293814 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A136446.P10193902895531791844

/-! ## A136446.P11943324713901758337

`lt[A065205(n+2), A293814(n+1)]+1`
-/

namespace A136446.P11943324713901758337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A136446.P11943324713901758337

/-! ## A136446.P8844126276073215988

`lt[A210455(n+2), A293814(n+1)]+1`
-/

namespace A136446.P8844126276073215988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A136446.P8844126276073215988

/-! ## A136446.P2643721813552442060

`lt[A065205(n+1), A293814(A028310(n))]`
-/

namespace A136446.P2643721813552442060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136446.P2643721813552442060

/-! ## A136446.P10565378865075288321

`lt[A210455(n+1), A293814(A028310(n))]`
-/

namespace A136446.P10565378865075288321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136446.P10565378865075288321

/-! ## A136446.P6377376760817035336

`eq[A040002(n), A040002(A293814(n))]`
-/

namespace A136446.P6377376760817035336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 (A293814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136446.P6377376760817035336

/-! ## A136446.P4930126428188049820

`eq[A040056(n), A040056(A293814(n))]`
-/

namespace A136446.P4930126428188049820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 (A293814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136446.P4930126428188049820

/-!
# A136447: Numbers which are not pseudoperfect: Complement of A005835.

The programs for A136447, there is no canonical definition to state claims against.
-/

/-! ## A136447.P3357386803559733700

`eq[1, A074971(n+1)]+1`
-/

namespace A136447.P3357386803559733700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136447.P3357386803559733700

/-! ## A136447.P8578992112146284057

`comp[A005835(n+1)-1]+1`
-/

namespace A136447.P8578992112146284057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136447.P8578992112146284057

/-! ## A136447.P16208780585274492913

`record[A000027(n+1)/A074971(n+1)]`
-/

namespace A136447.P16208780585274492913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A074971 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136447.P16208780585274492913

/-! ## A136447.P11315452167244785307

`eq[0, A331928(n)]`
-/

namespace A136447.P11315452167244785307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136447.P11315452167244785307

/-! ## A136447.P5363251788915785500

`eq[0, A065205(n+1)]+1`
-/

namespace A136447.P5363251788915785500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136447.P5363251788915785500

/-! ## A136447.P11784855222469179853

`eq[1, A033630(n+1)]+1`
-/

namespace A136447.P11784855222469179853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136447.P11784855222469179853

/-! ## A136447.P2642560399434447791

`lt[A210455(n+1), 1]+1`
-/

namespace A136447.P2642560399434447791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210455 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A136447.P2642560399434447791

/-! ## A136447.P17941056316667885627

`eq[A033630(n), A054977(n)]`
-/

namespace A136447.P17941056316667885627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P17941056316667885627

/-! ## A136447.P4496127924299528190

`eq[A033630(n), A057427(n)]`
-/

namespace A136447.P4496127924299528190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P4496127924299528190

/-! ## A136447.P14976294834221371140

`eq[A033630(n), A097325(n)]`
-/

namespace A136447.P14976294834221371140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P14976294834221371140

/-! ## A136447.P17010577571174766662

`eq[A033630(n), A158388(n)]`
-/

namespace A136447.P17010577571174766662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P17010577571174766662

/-! ## A136447.P12668512985847103704

`eq[A033630(n), A168185(n)]`
-/

namespace A136447.P12668512985847103704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P12668512985847103704

/-! ## A136447.P15344920087187854172

`eq[A040534(n), A331927(n)]`
-/

namespace A136447.P15344920087187854172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P15344920087187854172

/-! ## A136447.P1929742602144929219

`eq[A054977(n), A331927(n)]`
-/

namespace A136447.P1929742602144929219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P1929742602144929219

/-! ## A136447.P16206581783802002561

`eq[A057427(n), A331927(n)]`
-/

namespace A136447.P16206581783802002561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P16206581783802002561

/-! ## A136447.P13055716193157060193

`eq[A097325(n), A331927(n)]`
-/

namespace A136447.P13055716193157060193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P13055716193157060193

/-! ## A136447.P894089446463899586

`eq[n, A219209(A214394(n))]`
-/

namespace A136447.P894089446463899586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 (A214394 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136447.P894089446463899586

/-! ## A136447.P15305955077946851164

`eq[A158388(n), A331927(n)]`
-/

namespace A136447.P15305955077946851164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P15305955077946851164

/-! ## A136447.P6482978268010306620

`eq[A168185(n), A331927(n)]`
-/

namespace A136447.P6482978268010306620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A136447.P6482978268010306620

/-! ## A136447.P6889452753815931044

`eq[1, A293814(n)+A033630(n)]`
-/

namespace A136447.P6889452753815931044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293814 n + A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136447.P6889452753815931044

/-!
# A136451: Triangle T(n,k) with the coefficient [x^k] of the characteristic polynomial of the following n X n matrix: 2 on the main antidiagonal, -1 on the adjacent sub-antidiagonals and 0 otherwise.

The programs for A136451, there is no canonical definition to state claims against.
-/

/-! ## A136451.P15828449542878126803

`A124018(n)-floor(acot(n))`
-/

namespace A136451.P15828449542878126803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A136451.P15828449542878126803

/-! ## A136451.P3541302750795509638

`A124018(n)-A000007(n)`
-/

namespace A136451.P3541302750795509638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - A000007 n

end

end A136451.P3541302750795509638

/-! ## A136451.P1624458419943246722

`A124018(n)-A151878(n)`
-/

namespace A136451.P1624458419943246722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - A151878 n

end

end A136451.P1624458419943246722

/-! ## A136451.P2080119363989414307

`A124018(n)-A151909(n)`
-/

namespace A136451.P2080119363989414307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - A151909 n

end

end A136451.P2080119363989414307

/-! ## A136451.P2752184810096125783

`A124018(n)-A151933(n)`
-/

namespace A136451.P2752184810096125783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - A151933 n

end

end A136451.P2752184810096125783

/-! ## A136451.P6512511340390965015

`A124018(n)/A054977(n)`
-/

namespace A136451.P6512511340390965015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124018 n : ℚ) / (A054977 n : ℚ)

end

end A136451.P6512511340390965015

/-! ## A136451.P5547005948498151036

`A124018(n)-A000010(n+2)%2`
-/

namespace A136451.P5547005948498151036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n - Int.tmod (A000010 (n + 2)) 2

end

end A136451.P5547005948498151036

/-! ## A136451.P8704409397792779483

`A124018(n)/gcd(2, A000040(n+1))`
-/

namespace A136451.P8704409397792779483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124018 n : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A136451.P8704409397792779483

/-! ## A136451.P10687507105627436401

`A124018(n)+A008683(2*(n+1)²)`
-/

namespace A136451.P10687507105627436401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124018 n + A008683 (2 * (n + 1) ^ 2)

end

end A136451.P10687507105627436401

/-!
# A136457: Triangle read by rows: coefficients of polynomials defined by recursion p(x,n)=(x-Gamma(n))*p(x,n-1).

The programs for A136457, there is no canonical definition to state claims against.
-/

/-! ## A136457.P13499691000810340089

`A355540(∑[2*n]%comp[∑[n]])`
-/

namespace A136457.P13499691000810340089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A136457.P13499691000810340089

/-! ## A136457.P12837334114618812511

`A355540(∑[char[∑[n]]]²-n-1)`
-/

namespace A136457.P12837334114618812511
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A136457.P12837334114618812511

/-! ## A136457.P18250745315797663607

`and(-1, A355540(A061579(n)))`
-/

namespace A136457.P18250745315797663607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A355540 (A061579 n).toNat)

end

end A136457.P18250745315797663607

/-! ## A136457.P1694297212645304560

`A355540(A061579(n))+A185246(n)`
-/

namespace A136457.P1694297212645304560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355540 (A061579 n).toNat + A185246 n

end

end A136457.P1694297212645304560

/-! ## A136457.P6007844179393035058

`or(A000007(n), A355540(A061579(n)))`
-/

namespace A136457.P6007844179393035058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A355540 (A061579 n).toNat)

end

end A136457.P6007844179393035058

/-!
# A136461: Expansion of e.g.f.: A(x) = -(1 + LambertW(-log(1+x))/log(1+x))/x.

The programs for A136461, there is no canonical definition to state claims against.
-/

/-! ## A136461.P14400763727595702949

`A033917(n+1)/(n+1)`
-/

namespace A136461.P14400763727595702949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033917 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A136461.P14400763727595702949

/-! ## A136461.P8075554694623858341

`(ratio[n+1]-1)*A033917(A000027(n+1))`
-/

namespace A136461.P8075554694623858341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) - 1) * (A033917 (A000027 (n + 1)).toNat : ℚ)

end

end A136461.P8075554694623858341

/-! ## A136461.P857890688496470630

`A295028(2*(n+1)²)`
-/

namespace A136461.P857890688496470630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295028 (2 * (n + 1) ^ 2)

end

end A136461.P857890688496470630

/-! ## A136461.P8431335134583455930

`abs(A295028(∑[2*(2*n+1)]))`
-/

namespace A136461.P8431335134583455930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295028 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A136461.P8431335134583455930

/-! ## A136461.P3865194222585643663

`A216349(A087803(n+1))/(n+1)`
-/

namespace A136461.P3865194222585643663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216349 (A087803 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A136461.P3865194222585643663

/-!
# A136462: Square table, read by antidiagonals, where T(n,k) = C((n+1)*2^(k-1), k) for n>=0, k>=0.

The programs for A136462, the canonical program `A136462.P13145340659209256192` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136462 has offset 0).

The definition of A136462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136462.P2469871965420278718

`C(A296612(∑[2*n]%comp[∑[n]]), n-C(∑[char[∑[n]]], 2))`
-/

namespace A136462.P2469871965420278718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296612 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat

end

end A136462.P2469871965420278718

namespace A136462

/-- `C(A296612(∑[2*n]%comp[∑[n]]), n-C(∑[char[∑[n]]], 2))` -/
def P2469871965420278718.Spec : Prop :=
  ∀ n, (P2469871965420278718.a n : ℤ) = A136462 n

end A136462

/-! ## A136462.P13145340659209256192

`C(A296612(A061579(n)), A002262(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136462

/-- `C(A296612(A061579(n)), A002262(n))` -/
def P13145340659209256192.Spec : Prop :=
  ∀ n, (P13145340659209256192.a n : ℤ) = A136462 n

theorem P13145340659209256192.correct : P13145340659209256192.Spec := by
  intro n
  simp only [A136462]

end A136462

/-! ## A136462.P8631967985681139066

`C(A025480((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))), n-C(∑[char[∑[n]]], 2))`
-/

namespace A136462.P8631967985681139066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025480 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat

end

end A136462.P8631967985681139066

namespace A136462

/-- `C(A025480((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))), n-C(∑[char[∑[n]]], 2))` -/
def P8631967985681139066.Spec : Prop :=
  ∀ n, (P8631967985681139066.a n : ℤ) = A136462 n

end A136462

/-! ## A136462.P11583042800769715783

`C(A026741((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))), n-C(∑[char[∑[n]]], 2))`
-/

namespace A136462.P11583042800769715783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026741 (SequenceMachineLib.roundAway (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ))).toNat).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat

end

end A136462.P11583042800769715783

namespace A136462

/-- `C(A026741((C(comp[∑[n]]-n, 2)-n)*2^(n-C(∑[char[∑[n]]], 2))), n-C(∑[char[∑[n]]], 2))` -/
def P11583042800769715783.Spec : Prop :=
  ∀ n, (P11583042800769715783.a n : ℤ) = A136462 n

end A136462

/-! ## A136462.P14146005747199786919

`C(A026741(A130128(n+1)), A002262(n))`
-/

namespace A136462.P14146005747199786919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026741 (A130128 (n + 1)).toNat).toNat (A002262 n).toNat

end

end A136462.P14146005747199786919

namespace A136462

/-- `C(A026741(A130128(n+1)), A002262(n))` -/
def P14146005747199786919.Spec : Prop :=
  ∀ n, (P14146005747199786919.a n : ℤ) = A136462 n

end A136462

/-!
# A136463: Diagonal of square array A136462: a(n) = C((n+1)*2^(n-1), n) for n>=0.

The programs for A136463, there is no canonical definition to state claims against.
-/

/-! ## A136463.P17223539140888666204

`(n+1)*A136464(n)`
-/

namespace A136463.P17223539140888666204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A136464 n

end

end A136463.P17223539140888666204

/-! ## A136463.P7660609863810149385

`C((n+1)*2^abs(1-n), n)`
-/

namespace A136463.P7660609863810149385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat n

end

end A136463.P7660609863810149385

/-! ## A136463.P7109781480089196059

`lcm(n+1, C(A129952(n+1), n))`
-/

namespace A136463.P7109781480089196059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (Nat.choose (A129952 (n + 1)).toNat n)

end

end A136463.P7109781480089196059

/-! ## A136463.P10514392520754882884

`record[C(A062355(n+1), A007814(n+1))]`
-/

namespace A136463.P10514392520754882884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062355 (n + 1)).toNat (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136463.P10514392520754882884

/-! ## A136463.P14197342499803280804

`record[C(A079535(n+1)+1+n, A007814(n+1))]`
-/

namespace A136463.P14197342499803280804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079535 (n + 1) + 1 + (n : ℤ)).toNat (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136463.P14197342499803280804

/-!
# A136464: C((n+1)*2^(n-1),n)/(n+1).

The programs for A136464, there is no canonical definition to state claims against.
-/

/-! ## A136464.P12661365929366617542

`A136463(n)/(n+1)`
-/

namespace A136464.P12661365929366617542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136463 n : ℚ) / (n + 1 : ℚ)

end

end A136464.P12661365929366617542

/-! ## A136464.P15384427625927673528

`C(A057711(n+1), n)/(n+1)`
-/

namespace A136464.P15384427625927673528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A057711 (n + 1)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A136464.P15384427625927673528

/-! ## A136464.P16984115320458993986

`C(A129952(n+1), n)/(n+1)`
-/

namespace A136464.P16984115320458993986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A129952 (n + 1)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A136464.P16984115320458993986

/-! ## A136464.P10691488352658444878

`C((n+1)*A131577(n), n)/(n+1)`
-/

namespace A136464.P10691488352658444878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1 : ℤ) * A131577 n).toNat n : ℚ) / (n + 1 : ℚ)

end

end A136464.P10691488352658444878

/-! ## A136464.P13122276606845045303

`C((n+1)*round(A000079(n)/2), n)/(n+1)`
-/

namespace A136464.P13122276606845045303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1 : ℤ) * SequenceMachineLib.roundAway ((A000079 n : ℚ) / 2)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A136464.P13122276606845045303

/-!
# A136465: Row 0 of square array A136462: a(n) = C(2^(n-1), n) for n>=0.

The programs for A136465, there is no canonical definition to state claims against.
-/

/-! ## A136465.P18031584831308900018

`C(2^abs(1-n), n)`
-/

namespace A136465.P18031584831308900018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat n

end

end A136465.P18031584831308900018

/-! ## A136465.P14990235819569769132

`lcm(1-and(2, n), C(ceil(2^(n-1)), n))`
-/

namespace A136465.P14990235819569769132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat n : ℤ)

end

end A136465.P14990235819569769132

/-! ## A136465.P4815773014791777189

`A136467(∑[n])`
-/

namespace A136465.P4815773014791777189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136465.P4815773014791777189

/-! ## A136465.P13317740033596988279

`A136462(∑[n]+n)`
-/

namespace A136465.P13317740033596988279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136462 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A136465.P13317740033596988279

/-!
# A136466: Row 2 of square array A136462: a(n) = C(3*2^(n-1), n) for n>=0.

The programs for A136466, there is no canonical definition to state claims against.
-/

/-! ## A136466.P14806050456257054831

`C(3*2^abs(1-n), n)`
-/

namespace A136466.P14806050456257054831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (3 * (2 : ℚ) ^ (|1 - (n : ℤ)| : ℤ))).toNat n

end

end A136466.P14806050456257054831

/-! ## A136466.P12356759270940706771

`A136462(∑[n+3])`
-/

namespace A136466.P12356759270940706771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136466.P12356759270940706771

/-! ## A136466.P4126456896169700399

`record[C(A074323(n), floor(n/2))]`
-/

namespace A136466.P4126456896169700399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074323 n).toNat ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136466.P4126456896169700399

/-! ## A136466.P12082969630151202221

`record[C(A114119(n), val(n+1, 2))]`
-/

namespace A136466.P12082969630151202221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A114119 n).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136466.P12082969630151202221

/-! ## A136466.P9571945412351096395

`record[C(A071044(n), A000120(n))]`
-/

namespace A136466.P9571945412351096395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071044 n).toNat (A000120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136466.P9571945412351096395

/-!
# A136468: Column 1 of triangle A136467 (scaled): a(n) = A136467(n+1,1)/2^n.

The programs for A136468, there is no canonical definition to state claims against.
-/

/-! ## A136468.P15178699891778730202

`A004277(record[A296439(n)])`
-/

namespace A136468.P15178699891778730202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A136468.P15178699891778730202

/-!
# A136474: Primes that divide 2^(3^n)+1 for some n.

The programs for A136474, there is no canonical definition to state claims against.
-/

/-! ## A136474.P2409689866813651514

`A289258(∑[(n-gcd(n, ∑[n]))!])`
-/

namespace A136474.P2409689866813651514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289258 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136474.P2409689866813651514

/-! ## A136474.P16468773239516813149

`A289258(A240303(n)+1)`
-/

namespace A136474.P16468773239516813149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289258 (A240303 n + 1).toNat

end

end A136474.P16468773239516813149

/-!
# A136475: Irregular triangle read by rows: row n gives prime factors of (2^(3^(n+1))+1)/(2^(3^n)+1).

The programs for A136475, there is no canonical definition to state claims against.
-/

/-! ## A136475.P11952842416903733702

`A242715(xor(5, n!))`
-/

namespace A136475.P11952842416903733702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242715 (Nat.xor 5 (Nat.factorial n))

end

end A136475.P11952842416903733702

/-!
# A136477: Numbers x such that for some y < sqrt(2x), x^2 + x + y^2 is an odd primitive abundant number, A136476(n).

The programs for A136477, there is no canonical definition to state claims against.
-/

/-! ## A136477.P13262152232479545382

`round(sqrt(A136476(n+1)))-1`
-/

namespace A136477.P13262152232479545382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A136476 (n + 1) : ℝ)) - 1

end

end A136477.P13262152232479545382

/-! ## A136477.P17727592095608223588

`A023443(round(sqrt(A136476(n+1))))`
-/

namespace A136477.P17727592095608223588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (Real.sqrt (A136476 (n + 1) : ℝ))).toNat

end

end A136477.P17727592095608223588

/-! ## A136477.P2761502495303403493

`A118830(2*n+1)+round(sqrt(A136476(n+1)))`
-/

namespace A136477.P2761502495303403493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + SequenceMachineLib.roundAway (Real.sqrt (A136476 (n + 1) : ℝ))

end

end A136477.P2761502495303403493

/-! ## A136477.P17603148466663777254

`A233583(round(sqrt(A136476(n+1))))`
-/

namespace A136477.P17603148466663777254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway (Real.sqrt (A136476 (n + 1) : ℝ))).toNat

end

end A136477.P17603148466663777254

/-!
# A136478: Smallest y such that for x = A136477(n), x^2 + x + y^2 is an odd primitive abundant number, A136476(n).

The programs for A136478, there is no canonical definition to state claims against.
-/

/-! ## A136478.P8928793532899128125

`sqrt(A136476(n+1)-A136477(n+1)²-A136477(n+1))`
-/

namespace A136478.P8928793532899128125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A136476 (n + 1) - A136477 (n + 1) ^ 2 - A136477 (n + 1) : ℝ)

end

end A136478.P8928793532899128125

/-!
# A136480: Number of trailing equal digits in binary representation of n.

The programs for A136480, the canonical program `A136480.P7576671635047894259` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136480 has offset 0).

The definition of A136480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136480.P7576671635047894259

`∏{e}[and(n+1, -n), #]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A136480

/-- `∏{e}[and(n+1, -n), #]` -/
def P7576671635047894259.Spec : Prop :=
  ∀ n, (P7576671635047894259.a n : ℤ) = A136480 n

theorem P7576671635047894259.correct : P7576671635047894259.Spec := by
  intro n
  simp only [A136480]

end A136480

/-! ## A136480.P11217916779943665012

`∏{e}[xor(∑[-n], ∑[n]), #]`
-/

namespace A136480.P11217916779943665012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f2 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136480.P11217916779943665012

namespace A136480

/-- `∏{e}[xor(∑[-n], ∑[n]), #]` -/
def P11217916779943665012.Spec : Prop :=
  ∀ n, (P11217916779943665012.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P11194803777410114675

`val(or(1, abs(1-n))+1, 2)`
-/

namespace A136480.P11194803777410114675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.lor 1 |1 - (n : ℤ)| + 1).toNat 2

end

end A136480.P11194803777410114675

namespace A136480

/-- `val(or(1, abs(1-n))+1, 2)` -/
def P11194803777410114675.Spec : Prop :=
  ∀ n, (P11194803777410114675.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P7250347995406197802

`floor(log2(abs(xor(n+1, n-1))))`
-/

namespace A136480.P7250347995406197802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 |Int.xor (n + 1 : ℤ) ((n : ℤ) - 1)|.toNat

end

end A136480.P7250347995406197802

namespace A136480

/-- `floor(log2(abs(xor(n+1, n-1))))` -/
def P7250347995406197802.Spec : Prop :=
  ∀ n, (P7250347995406197802.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P15762955403059042490

`∏{e}[1-or(n+1, -n), #]`
-/

namespace A136480.P15762955403059042490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor (n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136480.P15762955403059042490

namespace A136480

/-- `∏{e}[1-or(n+1, -n), #]` -/
def P15762955403059042490.Spec : Prop :=
  ∀ n, (P15762955403059042490.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P7179950203214747088

`val(n+1-(n-1)%2, 2)`
-/

namespace A136480.P7179950203214747088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 2).toNat 2

end

end A136480.P7179950203214747088

namespace A136480

/-- `val(n+1-(n-1)%2, 2)` -/
def P7179950203214747088.Spec : Prop :=
  ∀ n, (P7179950203214747088.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P2097554025212352336

`val(abs(∑[2*n]-1)+1, 2)`
-/

namespace A136480.P2097554025212352336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1| + 1).toNat 2

end

end A136480.P2097554025212352336

namespace A136480

/-- `val(abs(∑[2*n]-1)+1, 2)` -/
def P2097554025212352336.Spec : Prop :=
  ∀ n, (P2097554025212352336.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P2345133860172930466

`val(∑[2*n], 2)^a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A136480.P2345133860172930466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 ^ a (n - 2)

end

end A136480.P2345133860172930466

namespace A136480

/-- `val(∑[2*n], 2)^a(n-2)` -/
def P2345133860172930466.Spec : Prop :=
  ∀ n, (P2345133860172930466.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P17951899499403252549

`∏{e}[n+1-and(n+1, n-1), #]`
-/

namespace A136480.P17951899499403252549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136480.P17951899499403252549

namespace A136480

/-- `∏{e}[n+1-and(n+1, n-1), #]` -/
def P17951899499403252549.Spec : Prop :=
  ∀ n, (P17951899499403252549.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P17840147682355154192

`∏{e}[or(n+1, n-1)-(n-1), #]`
-/

namespace A136480.P17840147682355154192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136480.P17840147682355154192

namespace A136480

/-- `∏{e}[or(n+1, n-1)-(n-1), #]` -/
def P17840147682355154192.Spec : Prop :=
  ∀ n, (P17840147682355154192.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P590479564699224899

`abs(Δ[A088705(n)])`
-/

namespace A136480.P590479564699224899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136480.P590479564699224899

namespace A136480

/-- `abs(Δ[A088705(n)])` -/
def P590479564699224899.Spec : Prop :=
  ∀ n, P590479564699224899.a n = A136480 n

end A136480

/-! ## A136480.P7945544633870893770

`A050603(abs(1-n))`
-/

namespace A136480.P7945544633870893770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 |1 - (n : ℤ)|.toNat

end

end A136480.P7945544633870893770

namespace A136480

/-- `A050603(abs(1-n))` -/
def P7945544633870893770.Spec : Prop :=
  ∀ n, P7945544633870893770.a n = A136480 n

end A136480

/-! ## A136480.P15752221519729594937

`abs(Δ[abs(A123725(n))])`
-/

namespace A136480.P15752221519729594937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136480.P15752221519729594937

namespace A136480

/-- `abs(Δ[abs(A123725(n))])` -/
def P15752221519729594937.Spec : Prop :=
  ∀ n, P15752221519729594937.a n = A136480 n

end A136480

/-! ## A136480.P4689115151502586111

`val(A065033(n), 2)+1`
-/

namespace A136480.P4689115151502586111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065033 n).toNat 2 + 1

end

end A136480.P4689115151502586111

namespace A136480

/-- `val(A065033(n), 2)+1` -/
def P4689115151502586111.Spec : Prop :=
  ∀ n, (P4689115151502586111.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P9292944464291351822

`abs(A094267(abs(1-n)))`
-/

namespace A136480.P9292944464291351822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A094267 |1 - (n : ℤ)|.toNat)|

end

end A136480.P9292944464291351822

namespace A136480

/-- `abs(A094267(abs(1-n)))` -/
def P9292944464291351822.Spec : Prop :=
  ∀ n, P9292944464291351822.a n = A136480 n

end A136480

/-! ## A136480.P1293707931698021248

`abs(Δ[A089080(n+1)])`
-/

namespace A136480.P1293707931698021248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136480.P1293707931698021248

namespace A136480

/-- `abs(Δ[A089080(n+1)])` -/
def P1293707931698021248.Spec : Prop :=
  ∀ n, P1293707931698021248.a n = A136480 n

end A136480

/-! ## A136480.P3449137549189226787

`abs(Δ[A089263(3*n)])`
-/

namespace A136480.P3449137549189226787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A136480.P3449137549189226787

namespace A136480

/-- `abs(Δ[A089263(3*n)])` -/
def P3449137549189226787.Spec : Prop :=
  ∀ n, P3449137549189226787.a n = A136480 n

end A136480

/-! ## A136480.P4679439661217127823

`∏{e}[A065176(n+1), #]`
-/

namespace A136480.P4679439661217127823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A136480.P4679439661217127823

namespace A136480

/-- `∏{e}[A065176(n+1), #]` -/
def P4679439661217127823.Spec : Prop :=
  ∀ n, (P4679439661217127823.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P18216731201353380516

`val(A179865(n+1), 2)+1`
-/

namespace A136480.P18216731201353380516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A179865 (n + 1)).toNat 2 + 1

end

end A136480.P18216731201353380516

namespace A136480

/-- `val(A179865(n+1), 2)+1` -/
def P18216731201353380516.Spec : Prop :=
  ∀ n, (P18216731201353380516.a n : ℤ) = A136480 n

end A136480

/-! ## A136480.P5452943092911633906

`val(A085622(n+1), 2)-1`
-/

namespace A136480.P5452943092911633906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A085622 (n + 1)).toNat 2 : ℤ) - 1

end

end A136480.P5452943092911633906

namespace A136480

/-- `val(A085622(n+1), 2)-1` -/
def P5452943092911633906.Spec : Prop :=
  ∀ n, P5452943092911633906.a n = A136480 n

end A136480

/-!
# A136481: Triangle: h(n,m)=If[m == 1, n, If[n - m + 1 == 0, 1, If[n - m == 0, 1, If[n - m > 0, 1, 0]]]],n,m<=d.

The programs for A136481, there is no canonical definition to state claims against.
-/

/-! ## A136481.P10190084156895134800

`Δ[A010751(n)]*A100218(n)`
-/

namespace A136481.P10190084156895134800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A100218 n

end

end A136481.P10190084156895134800

/-! ## A136481.P16646908518581623562

`A015343(comp[∑[n]]-n)*A100218(n)`
-/

namespace A136481.P16646908518581623562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n) * A100218 n

end

end A136481.P16646908518581623562

/-! ## A136481.P17044171710855881534

`A087960((n-comp[∑[n]])²)*A100218(n)`
-/

namespace A136481.P17044171710855881534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2).toNat * A100218 n

end

end A136481.P17044171710855881534

/-! ## A136481.P5055928226821631668

`A014451(A002262(n))*A098599(n)`
-/

namespace A136481.P5055928226821631668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A002262 n).toNat * A098599 n

end

end A136481.P5055928226821631668

/-! ## A136481.P18059498701224512693

`A014451(A003056(n))*A100218(n)`
-/

namespace A136481.P18059498701224512693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003056 n).toNat * A100218 n

end

end A136481.P18059498701224512693

/-! ## A136481.P2491011910835699407

`A014451(A003987(n))*A100218(n)`
-/

namespace A136481.P2491011910835699407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003987 n).toNat * A100218 n

end

end A136481.P2491011910835699407

/-! ## A136481.P17923131128674726822

`A008836(A059268(n))*A098599(n)`
-/

namespace A136481.P17923131128674726822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A098599 n

end

end A136481.P17923131128674726822

/-! ## A136481.P653829732584059604

`A021010(A057944(n))*A100218(n)`
-/

namespace A136481.P653829732584059604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A057944 n).toNat * A100218 n

end

end A136481.P653829732584059604

/-! ## A136481.P18020700432851865635

`A033999(∑[A073423(n)])*A100218(n)`
-/

namespace A136481.P18020700432851865635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A100218 n

end

end A136481.P18020700432851865635

/-! ## A136481.P12430773533945281910

`A062157(A002024(n+1))*A100218(n)`
-/

namespace A136481.P12430773533945281910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A002024 (n + 1)).toNat * A100218 n

end

end A136481.P12430773533945281910

/-!
# A136482: Triangle read by rows: T(n,k) = 2*A007318(n,k) - A034851(n,k) (i.e., twice Pascal's triangle - the Losanitch triangle).

The programs for A136482, the canonical program `A136482.P12612554816507935657` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136482 has offset 0).

The definition of A136482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136482.P12612554816507935657

`A034852(n)+A007318(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A136482

/-- `A034852(n)+A007318(n)` -/
def P12612554816507935657.Spec : Prop :=
  ∀ n, P12612554816507935657.a n = A136482 n

theorem P12612554816507935657.correct : P12612554816507935657.Spec := by
  intro n
  simp only [A136482]

end A136482

/-! ## A136482.P13086476372320152246

`A028326(n)-A034851(n)`
-/

namespace A136482.P13086476372320152246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A034851 n

end

end A136482.P13086476372320152246

namespace A136482

/-- `A028326(n)-A034851(n)` -/
def P13086476372320152246.Spec : Prop :=
  ∀ n, P13086476372320152246.a n = A136482 n

theorem P13086476372320152246.correct : P13086476372320152246.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P13086476372320152246.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A034851, A034851.P18187616370549822586.a, A034852, A034852.P3004687004049579186.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P4283896761431104316

`A136489(n)-A034852(n)`
-/

namespace A136482.P4283896761431104316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136489 n - A034852 n

end

end A136482.P4283896761431104316

namespace A136482

/-- `A136489(n)-A034852(n)` -/
def P4283896761431104316.Spec : Prop :=
  ∀ n, P4283896761431104316.a n = A136482 n

end A136482

/-! ## A136482.P12952544661174637380

`A034852(n)+abs(A108086(n))`
-/

namespace A136482.P12952544661174637380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + |A108086 n|

end

end A136482.P12952544661174637380

namespace A136482

/-- `A034852(n)+abs(A108086(n))` -/
def P12952544661174637380.Spec : Prop :=
  ∀ n, P12952544661174637380.a n = A136482 n

end A136482

/-! ## A136482.P11553747503684008678

`A034852(n)+abs(A117440(n))`
-/

namespace A136482.P11553747503684008678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + |A117440 n|

end

end A136482.P11553747503684008678

namespace A136482

/-- `A034852(n)+abs(A117440(n))` -/
def P11553747503684008678.Spec : Prop :=
  ∀ n, P11553747503684008678.a n = A136482 n

end A136482

/-! ## A136482.P9208661350713382595

`A034852(n)+abs(A130595(n))`
-/

namespace A136482.P9208661350713382595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + |A130595 n|

end

end A136482.P9208661350713382595

namespace A136482

/-- `A034852(n)+abs(A130595(n))` -/
def P9208661350713382595.Spec : Prop :=
  ∀ n, P9208661350713382595.a n = A136482 n

end A136482

/-! ## A136482.P10002391985481149046

`A034852(n)+sqrt(A008459(n))`
-/

namespace A136482.P10002391985481149046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A034852 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A136482.P10002391985481149046

namespace A136482

/-- `A034852(n)+sqrt(A008459(n))` -/
def P10002391985481149046.Spec : Prop :=
  ∀ n, P10002391985481149046.a n = (A136482 n : ℝ)

end A136482

/-! ## A136482.P14892094194883347994

`A034852(n)+Δ[A102363(n)]`
-/

namespace A136482.P14892094194883347994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + (f1 (n + 1) - f1 n)

end

end A136482.P14892094194883347994

namespace A136482

/-- `A034852(n)+Δ[A102363(n)]` -/
def P14892094194883347994.Spec : Prop :=
  ∀ n, P14892094194883347994.a n = A136482 n

end A136482

/-! ## A136482.P12952505204323139040

`A014473(n)+A034852(n)+1`
-/

namespace A136482.P12952505204323139040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (A034852 n + 1)

end

end A136482.P12952505204323139040

namespace A136482

/-- `A014473(n)+A034852(n)+1` -/
def P12952505204323139040.Spec : Prop :=
  ∀ n, P12952505204323139040.a n = A136482 n

theorem P12952505204323139040.correct : P12952505204323139040.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P12952505204323139040.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A034852, A034852.P3004687004049579186.a, A034851, A034851.P18187616370549822586.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P4873902483722807629

`A034851(n)+2*A034852(n)`
-/

namespace A136482.P4873902483722807629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n + 2 * A034852 n

end

end A136482.P4873902483722807629

namespace A136482

/-- `A034851(n)+2*A034852(n)` -/
def P4873902483722807629.Spec : Prop :=
  ∀ n, P4873902483722807629.a n = A136482 n

theorem P4873902483722807629.correct : P4873902483722807629.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P4873902483722807629.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P18187616370549822586.a, A034852, A034852.P3004687004049579186.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P4385580545773362885

`2*A007318(n)-A034851(n)`
-/

namespace A136482.P4385580545773362885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A034851 n

end

end A136482.P4385580545773362885

namespace A136482

/-- `2*A007318(n)-A034851(n)` -/
def P4385580545773362885.Spec : Prop :=
  ∀ n, P4385580545773362885.a n = A136482 n

theorem P4385580545773362885.correct : P4385580545773362885.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P4385580545773362885.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P18187616370549822586.a, A034852, A034852.P3004687004049579186.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P9722537112197752059

`A034852(n)+A028326(n)/2`
-/

namespace A136482.P9722537112197752059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034852 n : ℚ) + (A028326 n : ℚ) / 2

end

end A136482.P9722537112197752059

namespace A136482

/-- `A034852(n)+A028326(n)/2` -/
def P9722537112197752059.Spec : Prop :=
  ∀ n, P9722537112197752059.a n = (A136482 n : ℚ)

theorem P9722537112197752059.correct : P9722537112197752059.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P9722537112197752059.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A034852, A034852.P3004687004049579186.a, A034851, A034851.P18187616370549822586.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P10770717087506953775

`(A136489(n)+A007318(n))/2`
-/

namespace A136482.P10770717087506953775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136489 n + A007318 n : ℚ) / 2

end

end A136482.P10770717087506953775

namespace A136482

/-- `(A136489(n)+A007318(n))/2` -/
def P10770717087506953775.Spec : Prop :=
  ∀ n, P10770717087506953775.a n = (A136482 n : ℚ)

end A136482

/-! ## A136482.P15334973248333920806

`A051159(n)+A136489(n)-A034851(n)`
-/

namespace A136482.P15334973248333920806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n + (A136489 n - A034851 n)

end

end A136482.P15334973248333920806

namespace A136482

/-- `A051159(n)+A136489(n)-A034851(n)` -/
def P15334973248333920806.Spec : Prop :=
  ∀ n, P15334973248333920806.a n = A136482 n

theorem P15334973248333920806.correct : P15334973248333920806.Spec := by
  intro n
  simp only [A136482, Nat.add_sub_cancel, A136482.P15334973248333920806.a, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A034851, A034851.P18187616370549822586.a, A034852, A034852.P3004687004049579186.a, A051159, A051159.P10036340686892014643.a, A136489, A136489.P5458054172949314838.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136482

/-! ## A136482.P6180718398912289320

`A007318(n)-(A051159(n)-A034851(n))`
-/

namespace A136482.P6180718398912289320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A051159 n - A034851 n)

end

end A136482.P6180718398912289320

namespace A136482

/-- `A007318(n)-(A051159(n)-A034851(n))` -/
def P6180718398912289320.Spec : Prop :=
  ∀ n, P6180718398912289320.a n = A136482 n

end A136482

/-! ## A136482.P14961935961091205846

`A034851(n)-(A007318(n)-A136489(n))`
-/

namespace A136482.P14961935961091205846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - (A007318 n - A136489 n)

end

end A136482.P14961935961091205846

namespace A136482

/-- `A034851(n)-(A007318(n)-A136489(n))` -/
def P14961935961091205846.Spec : Prop :=
  ∀ n, P14961935961091205846.a n = A136482 n

end A136482

/-! ## A136482.P760125230647988386

`A034852(n)+gcd(A124927(n), A124928(n))`
-/

namespace A136482.P760125230647988386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + (Int.gcd (A124927 n) (A124928 n) : ℤ)

end

end A136482.P760125230647988386

namespace A136482

/-- `A034852(n)+gcd(A124927(n), A124928(n))` -/
def P760125230647988386.Spec : Prop :=
  ∀ n, P760125230647988386.a n = A136482 n

end A136482

/-! ## A136482.P17866139145160929503

`A034852(n)+C(A003056(n), A103823(n))`
-/

namespace A136482.P17866139145160929503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + (Nat.choose (A003056 n).toNat (A103823 n).toNat : ℤ)

end

end A136482.P17866139145160929503

namespace A136482

/-- `A034852(n)+C(A003056(n), A103823(n))` -/
def P17866139145160929503.Spec : Prop :=
  ∀ n, P17866139145160929503.a n = A136482 n

end A136482

/-! ## A136482.P8133931072489844912

`A034852(n)+gcd(A091917(n), A176348(n))`
-/

namespace A136482.P8133931072489844912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034852 n + (Int.gcd (A091917 n) (A176348 n) : ℤ)

end

end A136482.P8133931072489844912

namespace A136482

/-- `A034852(n)+gcd(A091917(n), A176348(n))` -/
def P8133931072489844912.Spec : Prop :=
  ∀ n, P8133931072489844912.a n = A136482 n

end A136482

/-!
# A136483: Number of unit square lattice cells inside quadrant of origin-centered circle of diameter n.

The programs for A136483, there is no canonical definition to state claims against.
-/

/-! ## A136483.P3696864941986914523

`1/2*A136513(n+1)`
-/

namespace A136483.P3696864941986914523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A136513 (n + 1) : ℚ)

end

end A136483.P3696864941986914523

/-! ## A136483.P749844917804018931

`1/4*A136485(n+1)`
-/

namespace A136483.P749844917804018931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A136485 (n + 1) : ℚ)

end

end A136483.P749844917804018931

/-! ## A136483.P4247305104656311470

`A136513(n+1)/2`
-/

namespace A136483.P4247305104656311470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136513 (n + 1) : ℚ) / 2

end

end A136483.P4247305104656311470

/-! ## A136483.P9245256253704212208

`A136485(n+1)/4`
-/

namespace A136483.P9245256253704212208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 (n + 1) : ℚ) / 4

end

end A136483.P9245256253704212208

/-! ## A136483.P17613506326567083498

`∑[A333462(n+1)-n%2]`
-/

namespace A136483.P17613506326567083498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136483.P17613506326567083498

/-! ## A136483.P17657243877697509002

`∑[A333462(n+1)]-A110654(n)`
-/

namespace A136483.P17657243877697509002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110654 n

end

end A136483.P17657243877697509002

/-! ## A136483.P9581450482695103064

`∑[A333462(n+1)]+1-A080513(n)`
-/

namespace A136483.P9581450482695103064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A080513 n)

end

end A136483.P9581450482695103064

/-! ## A136483.P16959045470786946326

`ceil(∑[(Δ[A053411(n)]-2)/2]/2)`
-/

namespace A136483.P16959045470786946326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n - 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / 2⌉

end

end A136483.P16959045470786946326

/-! ## A136483.P11249646603829796090

`((-1)^n+A053411(n+1)-2*(n+1))/4`
-/

namespace A136483.P11249646603829796090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + (A053411 (n + 1) - (2 * (n + 1) : ℤ)) : ℚ) / 4

end

end A136483.P11249646603829796090

/-! ## A136483.P5156739914461051454

`floor(A053411(n+1)/4)-A110654(n)`
-/

namespace A136483.P5156739914461051454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053411 (n + 1) : ℚ) / 4⌋ - A110654 n

end

end A136483.P5156739914461051454

/-! ## A136483.P1663521459676741600

`A333573(n+1)-ceil(n/2)`
-/

namespace A136483.P1663521459676741600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (n + 1) - ⌈(n : ℚ) / 2⌉

end

end A136483.P1663521459676741600

/-! ## A136483.P11658241524016499103

`A333572(n+1)/4-A110654(n)`
-/

namespace A136483.P11658241524016499103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333572 (n + 1) : ℚ) / 4 - (A110654 n : ℚ)

end

end A136483.P11658241524016499103

/-! ## A136483.P4197459804236794797

`A237526(A002620(n+1))`
-/

namespace A136483.P4197459804236794797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (A002620 (n + 1)).toNat

end

end A136483.P4197459804236794797

/-! ## A136483.P7481675955082622721

`A237526(A076921(n+1))`
-/

namespace A136483.P7481675955082622721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (A076921 (n + 1)).toNat

end

end A136483.P7481675955082622721

/-! ## A136483.P17498086277873112477

`A237526(A182531(n+1))`
-/

namespace A136483.P17498086277873112477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (A182531 (n + 1)).toNat

end

end A136483.P17498086277873112477

/-! ## A136483.P17320619440891876815

`A014200(∑[ceil(n/2)])-A110654(n)`
-/

namespace A136483.P17320619440891876815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A110654 n

end

end A136483.P17320619440891876815

/-! ## A136483.P7290035620077405851

`A014200(∑[A004526(n+1)])-A004526(n+1)`
-/

namespace A136483.P7290035620077405851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A004526 (n + 1)

end

end A136483.P7290035620077405851

/-! ## A136483.P7014971280971131015

`A001281(A136513(n+1))`
-/

namespace A136483.P7014971280971131015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A136513 (n + 1)).toNat

end

end A136483.P7014971280971131015

/-! ## A136483.P12537212269348928998

`A110654(2*(A333573(n+1)-A110654(n)))`
-/

namespace A136483.P12537212269348928998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * (A333573 (n + 1) - A110654 n)).toNat

end

end A136483.P12537212269348928998

/-! ## A136483.P7536100274658179249

`A002265(A136485(n+1))`
-/

namespace A136483.P7536100274658179249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A136485 (n + 1)).toNat

end

end A136483.P7536100274658179249

/-!
# A136484: Number of unit square lattice cells inside quadrant of origin centered circle of diameter 2n+1.

The programs for A136484, the canonical program `A136484.P14615466940963320552` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136484 has offset 0).

The definition of A136484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136484.P10681846074872283583

`1/2*A136515(n)`
-/

namespace A136484.P10681846074872283583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A136515 n : ℚ)

end

end A136484.P10681846074872283583

namespace A136484

/-- `1/2*A136515(n)` -/
def P10681846074872283583.Spec : Prop :=
  ∀ n, P10681846074872283583.a n = (A136484 n : ℚ)

theorem P10681846074872283583.correct : P10681846074872283583.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P10681846074872283583.a, A136484.P14615466940963320552.a, A036704, A036704.P2788393936175939244.a, A136515, A136515.P2899484087255744926.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P9010549563559435914

`1/4*A136486(n)`
-/

namespace A136484.P9010549563559435914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A136486 n : ℚ)

end

end A136484.P9010549563559435914

namespace A136484

/-- `1/4*A136486(n)` -/
def P9010549563559435914.Spec : Prop :=
  ∀ n, P9010549563559435914.a n = (A136484 n : ℚ)

theorem P9010549563559435914.correct : P9010549563559435914.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P9010549563559435914.a, A136484.P14615466940963320552.a, A036704, A036704.P2788393936175939244.a, A136486, A136486.P13738774024279800787.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P8245490598374716672

`A136483(2*n+1)`
-/

namespace A136484.P8245490598374716672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (2 * n + 1)

end

end A136484.P8245490598374716672

namespace A136484

/-- `A136483(2*n+1)` -/
def P8245490598374716672.Spec : Prop :=
  ∀ n, P8245490598374716672.a n = A136484 n

end A136484

/-! ## A136484.P15746135151533354701

`A136515(n)/2`
-/

namespace A136484.P15746135151533354701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136515 n : ℚ) / 2

end

end A136484.P15746135151533354701

namespace A136484

/-- `A136515(n)/2` -/
def P15746135151533354701.Spec : Prop :=
  ∀ n, P15746135151533354701.a n = (A136484 n : ℚ)

theorem P15746135151533354701.correct : P15746135151533354701.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P15746135151533354701.a, A136484.P14615466940963320552.a, A036704, A036704.P2788393936175939244.a, A136515, A136515.P2899484087255744926.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P4062639472940465312

`A136486(n)/4`
-/

namespace A136484.P4062639472940465312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136486 n : ℚ) / 4

end

end A136484.P4062639472940465312

namespace A136484

/-- `A136486(n)/4` -/
def P4062639472940465312.Spec : Prop :=
  ∀ n, P4062639472940465312.a n = (A136484 n : ℚ)

theorem P4062639472940465312.correct : P4062639472940465312.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P4062639472940465312.a, A136484.P14615466940963320552.a, A036704, A036704.P2788393936175939244.a, A136486, A136486.P13738774024279800787.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P14615466940963320552

`floor(A036704(n)/4-n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A136484

/-- `floor(A036704(n)/4-n)` -/
def P14615466940963320552.Spec : Prop :=
  ∀ n, P14615466940963320552.a n = A136484 n

theorem P14615466940963320552.correct : P14615466940963320552.Spec := by
  intro n
  simp only [A136484]

end A136484

/-! ## A136484.P8787553718914305080

`∑[A036710(n)-2]+1`
-/

namespace A136484.P8787553718914305080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A136484.P8787553718914305080

namespace A136484

/-- `∑[A036710(n)-2]+1` -/
def P8787553718914305080.Spec : Prop :=
  ∀ n, P8787553718914305080.a n = A136484 n

end A136484

/-! ## A136484.P10281091268614439222

`A036709(n)-Δ[n²]`
-/

namespace A136484.P10281091268614439222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A136484.P10281091268614439222

namespace A136484

/-- `A036709(n)-Δ[n²]` -/
def P10281091268614439222.Spec : Prop :=
  ∀ n, P10281091268614439222.a n = A136484 n

theorem P10281091268614439222.correct : P10281091268614439222.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P10281091268614439222.f1, A136484.P10281091268614439222.a, A136484.P14615466940963320552.a, A036704, A036704.P2788393936175939244.a, A036709, A036709.P8581218697881049908.f1, A036709.P8581218697881049908.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P1137174288031728142

`A001478(n+1)+A036709(n)-n`
-/

namespace A136484.P1137174288031728142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A036709 n - (n : ℤ))

end

end A136484.P1137174288031728142

namespace A136484

/-- `A001478(n+1)+A036709(n)-n` -/
def P1137174288031728142.Spec : Prop :=
  ∀ n, P1137174288031728142.a n = A136484 n

theorem P1137174288031728142.correct : P1137174288031728142.Spec := by
  intro n
  simp only [A136484, Nat.add_sub_cancel, A136484.P1137174288031728142.a, A136484.P14615466940963320552.a, A001478, A001478.P11279598861711037921.a, A036704, A036704.P2788393936175939244.a, A036709, A036709.P8581218697881049908.f1, A036709.P8581218697881049908.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, A105673, A105673.P14538287794614071707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136484

/-! ## A136484.P15256012606660046123

`A036711(n)-n`
-/

namespace A136484.P15256012606660046123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n - (n : ℤ)

end

end A136484.P15256012606660046123

namespace A136484

/-- `A036711(n)-n` -/
def P15256012606660046123.Spec : Prop :=
  ∀ n, P15256012606660046123.a n = A136484 n

end A136484

/-! ## A136484.P14385662032564512989

`(A036707(n)-A016777(n))/2`
-/

namespace A136484.P14385662032564512989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036707 n - A016777 n : ℚ) / 2

end

end A136484.P14385662032564512989

namespace A136484

/-- `(A036707(n)-A016777(n))/2` -/
def P14385662032564512989.Spec : Prop :=
  ∀ n, P14385662032564512989.a n = (A136484 n : ℚ)

end A136484

/-! ## A136484.P17680357528556577196

`A036707(n)-(A036709(n)+n)`
-/

namespace A136484.P17680357528556577196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036707 n - (A036709 n + (n : ℤ))

end

end A136484.P17680357528556577196

namespace A136484

/-- `A036707(n)-(A036709(n)+n)` -/
def P17680357528556577196.Spec : Prop :=
  ∀ n, P17680357528556577196.a n = A136484 n

end A136484

/-! ## A136484.P532617000110306336

`∑[A036706(n)]-n`
-/

namespace A136484.P532617000110306336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A136484.P532617000110306336

namespace A136484

/-- `∑[A036706(n)]-n` -/
def P532617000110306336.Spec : Prop :=
  ∀ n, P532617000110306336.a n = A136484 n

end A136484

/-! ## A136484.P52914946454636570

`A136513(Δ[n²])/2`
-/

namespace A136484.P52914946454636570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A136484.P52914946454636570

namespace A136484

/-- `A136513(Δ[n²])/2` -/
def P52914946454636570.Spec : Prop :=
  ∀ n, P52914946454636570.a n = (A136484 n : ℚ)

end A136484

/-! ## A136484.P6595720479837160893

`A136485(2*n+1)/4`
-/

namespace A136484.P6595720479837160893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136485 (2 * n + 1) : ℚ) / 4

end

end A136484.P6595720479837160893

namespace A136484

/-- `A136485(2*n+1)/4` -/
def P6595720479837160893.Spec : Prop :=
  ∀ n, P6595720479837160893.a n = (A136484 n : ℚ)

end A136484

/-! ## A136484.P10549834876105435754

`A333573(Δ[n²])-n`
-/

namespace A136484.P10549834876105435754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A136484.P10549834876105435754

namespace A136484

/-- `A333573(Δ[n²])-n` -/
def P10549834876105435754.Spec : Prop :=
  ∀ n, P10549834876105435754.a n = A136484 n

end A136484

/-! ## A136484.P10342288155865784170

`A237526(∑[2*n])`
-/

namespace A136484.P10342288155865784170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136484.P10342288155865784170

namespace A136484

/-- `A237526(∑[2*n])` -/
def P10342288155865784170.Spec : Prop :=
  ∀ n, P10342288155865784170.a n = A136484 n

end A136484

/-! ## A136484.P16135954511629806317

`A014200(∑[2*n])-n`
-/

namespace A136484.P16135954511629806317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A136484.P16135954511629806317

namespace A136484

/-- `A014200(∑[2*n])-n` -/
def P16135954511629806317.Spec : Prop :=
  ∀ n, P16135954511629806317.a n = A136484 n

end A136484

/-! ## A136484.P15590528123055664191

`abs(n-A014200(n²+n))`
-/

namespace A136484.P15590528123055664191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A014200 (n ^ 2 + n)|

end

end A136484.P15590528123055664191

namespace A136484

/-- `abs(n-A014200(n²+n))` -/
def P15590528123055664191.Spec : Prop :=
  ∀ n, P15590528123055664191.a n = A136484 n

end A136484

/-!
# A136485: Number of unit square lattice cells enclosed by origin centered circle of diameter n.

The programs for A136485, there is no canonical definition to state claims against.
-/

/-! ## A136485.P10790638477456849997

`2*A136513(n+1)`
-/

namespace A136485.P10790638477456849997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136513 (n + 1)

end

end A136485.P10790638477456849997

/-! ## A136485.P8885834230539721879

`4*A136483(n+1)`
-/

namespace A136485.P8885834230539721879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136483 (n + 1)

end

end A136485.P8885834230539721879

/-! ## A136485.P9412893342065268647

`A136483(n+1)+A136513(n+1)+A136483(n+1)`
-/

namespace A136485.P9412893342065268647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (n + 1) + (A136513 (n + 1) + A136483 (n + 1))

end

end A136485.P9412893342065268647

/-! ## A136485.P17124006309597120387

`(-1)^n+A053411(n+1)-2*(n+1)`
-/

namespace A136485.P17124006309597120387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + (A053411 (n + 1) - (2 * (n + 1) : ℤ))

end

end A136485.P17124006309597120387

/-! ## A136485.P6614626458452997274

`4*(A333573(n+1)-ceil(n/2))`
-/

namespace A136485.P6614626458452997274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A333573 (n + 1) - ⌈(n : ℚ) / 2⌉)

end

end A136485.P6614626458452997274

/-! ## A136485.P13934765004612369278

`A333572(n+1)-A168273(n+1)`
-/

namespace A136485.P13934765004612369278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (n + 1) - A168273 (n + 1)

end

end A136485.P13934765004612369278

/-! ## A136485.P12417079335390149678

`A008586(A136483(n+1))`
-/

namespace A136485.P12417079335390149678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A136483 (n + 1)).toNat

end

end A136485.P12417079335390149678

/-! ## A136485.P9039476952540733806

`A008586(A136513(n+1)/2)`
-/

namespace A136485.P9039476952540733806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A136513 (n + 1) : ℚ) / 2)).toNat

end

end A136485.P9039476952540733806

/-! ## A136485.P11835420237145589597

`4*A237526(∑[∑[n%2]])`
-/

namespace A136485.P11835420237145589597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A136485.P11835420237145589597

/-! ## A136485.P3299849485835962019

`4*A237526(floor(cosh(log(n+1))²))`
-/

namespace A136485.P3299849485835962019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A237526 ⌊Real.cosh (Real.log (n + 1 : ℝ)) ^ 2⌋.toNat

end

end A136485.P3299849485835962019

/-! ## A136485.P14101099360146374653

`A005843(A136513(n+1))`
-/

namespace A136485.P14101099360146374653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A136513 (n + 1)).toNat

end

end A136485.P14101099360146374653

/-! ## A136485.P17062507363099870159

`A004277(A136513(n+1)+1)-2`
-/

namespace A136485.P17062507363099870159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A136513 (n + 1) + 1).toNat - 2

end

end A136485.P17062507363099870159

/-!
# A136486: Number of unit square lattice cells enclosed by origin centered circle of diameter 2n+1.

The programs for A136486, the canonical program `A136486.P13738774024279800787` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136486 has offset 0).

The definition of A136486 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136484, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A136486.P6290467160985355078

`2*A136515(n)`
-/

namespace A136486.P6290467160985355078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136515 n

end

end A136486.P6290467160985355078

namespace A136486

/-- `2*A136515(n)` -/
def P6290467160985355078.Spec : Prop :=
  ∀ n, P6290467160985355078.a n = A136486 n

theorem P6290467160985355078.correct : P6290467160985355078.Spec := by
  intro n
  simp only [A136486, Nat.add_sub_cancel, A136486.P6290467160985355078.a, A136486.P13738774024279800787.a, A136484, A136484.P14615466940963320552.a, A136515, A136515.P2899484087255744926.a, A036704, A036704.P2788393936175939244.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136486

/-! ## A136486.P13738774024279800787

`4*A136484(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A136486

/-- `4*A136484(n)` -/
def P13738774024279800787.Spec : Prop :=
  ∀ n, P13738774024279800787.a n = A136486 n

theorem P13738774024279800787.correct : P13738774024279800787.Spec := by
  intro n
  simp only [A136486]

end A136486

/-! ## A136486.P6462970966826477085

`A136485(2*n+1)`
-/

namespace A136486.P6462970966826477085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136485 (2 * n + 1)

end

end A136486.P6462970966826477085

namespace A136486

/-- `A136485(2*n+1)` -/
def P6462970966826477085.Spec : Prop :=
  ∀ n, P6462970966826477085.a n = A136486 n

end A136486

/-! ## A136486.P1227369517016493030

`A036704(n)-A016813(n)`
-/

namespace A136486.P1227369517016493030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036704 n - A016813 n

end

end A136486.P1227369517016493030

namespace A136486

/-- `A036704(n)-A016813(n)` -/
def P1227369517016493030.Spec : Prop :=
  ∀ n, P1227369517016493030.a n = A136486 n

end A136486

/-! ## A136486.P9529156466021976548

`A136484(n)+A136515(n)+A136484(n)`
-/

namespace A136486.P9529156466021976548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136484 n + (A136515 n + A136484 n)

end

end A136486.P9529156466021976548

namespace A136486

/-- `A136484(n)+A136515(n)+A136484(n)` -/
def P9529156466021976548.Spec : Prop :=
  ∀ n, P9529156466021976548.a n = A136486 n

theorem P9529156466021976548.correct : P9529156466021976548.Spec := by
  intro n
  simp only [A136486, Nat.add_sub_cancel, A136486.P9529156466021976548.a, A136486.P13738774024279800787.a, A136484, A136484.P14615466940963320552.a, A136515, A136515.P2899484087255744926.a, A036704, A036704.P2788393936175939244.a, A057655, A057655.P8142405424443184292.a, A014198, A014198.P2354480518814049901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136486

/-! ## A136486.P17775386137278310027

`4*(A036711(n)-n)`
-/

namespace A136486.P17775386137278310027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A036711 n - (n : ℤ))

end

end A136486.P17775386137278310027

namespace A136486

/-- `4*(A036711(n)-n)` -/
def P17775386137278310027.Spec : Prop :=
  ∀ n, P17775386137278310027.a n = A136486 n

end A136486

/-! ## A136486.P14084063526960952105

`2*(A036707(n)-A016777(n))`
-/

namespace A136486.P14084063526960952105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036707 n - A016777 n)

end

end A136486.P14084063526960952105

namespace A136486

/-- `2*(A036707(n)-A016777(n))` -/
def P14084063526960952105.Spec : Prop :=
  ∀ n, P14084063526960952105.a n = A136486 n

end A136486

/-! ## A136486.P11913301089271498008

`2*A136513(Δ[n²])`
-/

namespace A136486.P11913301089271498008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136513 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136486.P11913301089271498008

namespace A136486

/-- `2*A136513(Δ[n²])` -/
def P11913301089271498008.Spec : Prop :=
  ∀ n, P11913301089271498008.a n = A136486 n

end A136486

/-! ## A136486.P12931477372101728650

`4*A136483(Δ[n²])`
-/

namespace A136486.P12931477372101728650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A136483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A136486.P12931477372101728650

namespace A136486

/-- `4*A136483(Δ[n²])` -/
def P12931477372101728650.Spec : Prop :=
  ∀ n, P12931477372101728650.a n = A136486 n

end A136486

/-! ## A136486.P18394743473073448638

`A053411(2*n+1)-A005408(2*n)`
-/

namespace A136486.P18394743473073448638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n + 1) - A005408 (2 * n)

end

end A136486.P18394743473073448638

namespace A136486

/-- `A053411(2*n+1)-A005408(2*n)` -/
def P18394743473073448638.Spec : Prop :=
  ∀ n, P18394743473073448638.a n = A136486 n

end A136486

/-! ## A136486.P3105495001764762230

`A053456(2*n+1)-A005408(2*n)`
-/

namespace A136486.P3105495001764762230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * n + 1) - A005408 (2 * n)

end

end A136486.P3105495001764762230

namespace A136486

/-- `A053456(2*n+1)-A005408(2*n)` -/
def P3105495001764762230.Spec : Prop :=
  ∀ n, P3105495001764762230.a n = A136486 n

end A136486

/-! ## A136486.P6683998669116491106

`A333572(2*n+1)-4*n`
-/

namespace A136486.P6683998669116491106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 (2 * n + 1) - (4 * n : ℤ)

end

end A136486.P6683998669116491106

namespace A136486

/-- `A333572(2*n+1)-4*n` -/
def P6683998669116491106.Spec : Prop :=
  ∀ n, P6683998669116491106.a n = A136486 n

end A136486

/-! ## A136486.P8712015356824120697

`A008586(A136484(n))`
-/

namespace A136486.P8712015356824120697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A136484 n).toNat

end

end A136486.P8712015356824120697

namespace A136486

/-- `A008586(A136484(n))` -/
def P8712015356824120697.Spec : Prop :=
  ∀ n, P8712015356824120697.a n = A136486 n

end A136486

/-! ## A136486.P10404587598016537158

`A008586(A136483(2*n+1))`
-/

namespace A136486.P10404587598016537158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A136483 (2 * n + 1)).toNat

end

end A136486.P10404587598016537158

namespace A136486

/-- `A008586(A136483(2*n+1))` -/
def P10404587598016537158.Spec : Prop :=
  ∀ n, P10404587598016537158.a n = A136486 n

end A136486

/-! ## A136486.P13322065155032771973

`A008586(A333573(2*n+1)-n)`
-/

namespace A136486.P13322065155032771973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A333573 (2 * n + 1) - (n : ℤ)).toNat

end

end A136486.P13322065155032771973

namespace A136486

/-- `A008586(A333573(2*n+1)-n)` -/
def P13322065155032771973.Spec : Prop :=
  ∀ n, P13322065155032771973.a n = A136486 n

end A136486

/-! ## A136486.P3390342120004078206

`A016813(A036711(n))-A016813(n)`
-/

namespace A136486.P3390342120004078206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A036711 n).toNat - A016813 n

end

end A136486.P3390342120004078206

namespace A136486

/-- `A016813(A036711(n))-A016813(n)` -/
def P3390342120004078206.Spec : Prop :=
  ∀ n, P3390342120004078206.a n = A136486 n

end A136486

/-!
# A136489: Triangle T(n, k) = 3*A007318(n, k) - 2*A034851(n, k).

The programs for A136489, the canonical program `A136489.P5458054172949314838` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136489 has offset 0).

The definition of A136489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A136489.P8644710960885058124

`A136482(n)+A034852(n)`
-/

namespace A136489.P8644710960885058124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136482 n + A034852 n

end

end A136489.P8644710960885058124

namespace A136489

/-- `A136482(n)+A034852(n)` -/
def P8644710960885058124.Spec : Prop :=
  ∀ n, P8644710960885058124.a n = A136489 n

end A136489

/-! ## A136489.P5458054172949314838

`A028326(n)-A051159(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136489

/-- `A028326(n)-A051159(n)` -/
def P5458054172949314838.Spec : Prop :=
  ∀ n, P5458054172949314838.a n = A136489 n

theorem P5458054172949314838.correct : P5458054172949314838.Spec := by
  intro n
  simp only [A136489]

end A136489

/-! ## A136489.P12143463581132189531

`A028326(n)-abs(A051160(n))`
-/

namespace A136489.P12143463581132189531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A051160 n|

end

end A136489.P12143463581132189531

namespace A136489

/-- `A028326(n)-abs(A051160(n))` -/
def P12143463581132189531.Spec : Prop :=
  ∀ n, P12143463581132189531.a n = A136489 n

end A136489

/-! ## A136489.P13811669347538606502

`A028326(n)-abs(A158020(n))`
-/

namespace A136489.P13811669347538606502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - |A158020 n|

end

end A136489.P13811669347538606502

namespace A136489

/-- `A028326(n)-abs(A158020(n))` -/
def P13811669347538606502.Spec : Prop :=
  ∀ n, P13811669347538606502.a n = A136489 n

end A136489

/-! ## A136489.P4257101994413312857

`A007318(n)+2*A034852(n)`
-/

namespace A136489.P4257101994413312857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 2 * A034852 n

end

end A136489.P4257101994413312857

namespace A136489

/-- `A007318(n)+2*A034852(n)` -/
def P4257101994413312857.Spec : Prop :=
  ∀ n, P4257101994413312857.a n = A136489 n

end A136489

/-! ## A136489.P3108272287052884336

`2*A007318(n)-A051159(n)`
-/

namespace A136489.P3108272287052884336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A051159 n

end

end A136489.P3108272287052884336

namespace A136489

/-- `2*A007318(n)-A051159(n)` -/
def P3108272287052884336.Spec : Prop :=
  ∀ n, P3108272287052884336.a n = A136489 n

theorem P3108272287052884336.correct : P3108272287052884336.Spec := by
  intro n
  simp only [A136489, Nat.add_sub_cancel, A136489.P3108272287052884336.a, A136489.P5458054172949314838.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A051159, A051159.P10036340686892014643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136489

/-! ## A136489.P15333730925832399889

`2*A136482(n)-A007318(n)`
-/

namespace A136489.P15333730925832399889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136482 n - A007318 n

end

end A136489.P15333730925832399889

namespace A136489

/-- `2*A136482(n)-A007318(n)` -/
def P15333730925832399889.Spec : Prop :=
  ∀ n, P15333730925832399889.a n = A136489 n

end A136489

/-! ## A136489.P1229673074356026831

`abs(A108086(n))+2*A034852(n)`
-/

namespace A136489.P1229673074356026831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| + 2 * A034852 n

end

end A136489.P1229673074356026831

namespace A136489

/-- `abs(A108086(n))+2*A034852(n)` -/
def P1229673074356026831.Spec : Prop :=
  ∀ n, P1229673074356026831.a n = A136489 n

end A136489

/-! ## A136489.P7548605964968778620

`abs(A117440(n))+2*A034852(n)`
-/

namespace A136489.P7548605964968778620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n| + 2 * A034852 n

end

end A136489.P7548605964968778620

namespace A136489

/-- `abs(A117440(n))+2*A034852(n)` -/
def P7548605964968778620.Spec : Prop :=
  ∀ n, P7548605964968778620.a n = A136489 n

end A136489

/-! ## A136489.P11115758979942434341

`abs(A130595(n))+2*A034852(n)`
-/

namespace A136489.P11115758979942434341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| + 2 * A034852 n

end

end A136489.P11115758979942434341

namespace A136489

/-- `abs(A130595(n))+2*A034852(n)` -/
def P11115758979942434341.Spec : Prop :=
  ∀ n, P11115758979942434341.a n = A136489 n

end A136489

/-! ## A136489.P14347299804333812868

`A007318(n)+A136482(n)-A034851(n)`
-/

namespace A136489.P14347299804333812868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A136482 n - A034851 n)

end

end A136489.P14347299804333812868

namespace A136489

/-- `A007318(n)+A136482(n)-A034851(n)` -/
def P14347299804333812868.Spec : Prop :=
  ∀ n, P14347299804333812868.a n = A136489 n

end A136489

/-! ## A136489.P6988373835041489470

`A034851(n)+A136482(n)-A051159(n)`
-/

namespace A136489.P6988373835041489470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n + (A136482 n - A051159 n)

end

end A136489.P6988373835041489470

namespace A136489

/-- `A034851(n)+A136482(n)-A051159(n)` -/
def P6988373835041489470.Spec : Prop :=
  ∀ n, P6988373835041489470.a n = A136489 n

theorem P6988373835041489470.correct : P6988373835041489470.Spec := by
  intro n
  simp only [A136489, Nat.add_sub_cancel, A136489.P6988373835041489470.a, A136489.P5458054172949314838.a, A028326, A028326.P7676793339942299677.a, A034851, A034851.P18187616370549822586.a, A051159, A051159.P10036340686892014643.a, A136482, A136482.P12612554816507935657.a, A007318, A007318.P11755526479805562006.a, A034852, A034852.P3004687004049579186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A136489

/-!
# A136490: Numbers whose binary representation is contained in that of their cubes.

The programs for A136490, there is no canonical definition to state claims against.
-/

/-! ## A136490.P3631615818258534788

`comp[A136491(n+1)]`
-/

namespace A136490.P3631615818258534788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136490.P3631615818258534788

/-! ## A136490.P17133478631843357682

`lt[0, A275237(A278222(n))]`
-/

namespace A136490.P17133478631843357682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275237 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136490.P17133478631843357682

/-! ## A136490.P10791782511095397050

`lt[A177776(A286622(n)), A105823(n+1)]`
-/

namespace A136490.P10791782511095397050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177776 (A286622 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105823 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136490.P10791782511095397050

/-! ## A136490.P17027751592885158618

`lt[A009585(A286622(n)), A095391(n)]`
-/

namespace A136490.P17027751592885158618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009585 (A286622 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136490.P17027751592885158618

/-! ## A136490.P5904712557893002653

`lt[A353779(A286622(n)), A220102(2*(n+2))]`
-/

namespace A136490.P5904712557893002653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353779 (A286622 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220102 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136490.P5904712557893002653

/-!
# A136491: Complement of A136490.

The programs for A136491, there is no canonical definition to state claims against.
-/

/-! ## A136491.P13572763839109207606

`comp[A136490(n+1)]`
-/

namespace A136491.P13572763839109207606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136491.P13572763839109207606

/-! ## A136491.P8545962081803726153

`comp[record[A136490(A305303(n))]]`
-/

namespace A136491.P8545962081803726153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (A305303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136491.P8545962081803726153

/-! ## A136491.P7696710481587912952

`comp[record[A136490(A324344(n))]]`
-/

namespace A136491.P7696710481587912952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136491.P7696710481587912952

/-! ## A136491.P15150399177475669059

`eq[char[A136490(n+1)], A281462(n+1)]`
-/

namespace A136491.P15150399177475669059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136490 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A136491.P15150399177475669059

/-! ## A136491.P14059011839929465475

`lt[A344606(2*(n+1)), A351234(A246029(n))²]`
-/

namespace A136491.P14059011839929465475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351234 (A246029 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136491.P14059011839929465475

/-!
# A136492: Complement of A018826.

The programs for A136492, there is no canonical definition to state claims against.
-/

/-! ## A136492.P5863501099079433537

`comp[A018826(n+1)]`
-/

namespace A136492.P5863501099079433537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A136492.P5863501099079433537

/-! ## A136492.P13058668149196712190

`eq[0, A076141(n)]`
-/

namespace A136492.P13058668149196712190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136492.P13058668149196712190

/-! ## A136492.P4348527540608049189

`lt[n*A076141(n), A083479(n)]`
-/

namespace A136492.P4348527540608049189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A076141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136492.P4348527540608049189

/-! ## A136492.P2042119286854375131

`lt[2, A086063(n)]`
-/

namespace A136492.P2042119286854375131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136492.P2042119286854375131

/-! ## A136492.P9870242622118135566

`eq[1, A013597(C(3, A086063(n)))]`
-/

namespace A136492.P9870242622118135566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (Nat.choose 3 (A086063 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136492.P9870242622118135566

/-! ## A136492.P9132260950573362413

`lt[A076141(n)*A193592(n), 1]`
-/

namespace A136492.P9132260950573362413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 n * A193592 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136492.P9132260950573362413

/-! ## A136492.P11480221339500684662

`eq[1, A000203(C(2, A086063(n))+1)]`
-/

namespace A136492.P11480221339500684662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose 2 (A086063 n).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A136492.P11480221339500684662

/-! ## A136492.P6361260423598969681

`lt[A076141(n), A136640(A151843(n)+1)]`
-/

namespace A136492.P6361260423598969681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136640 (A151843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A136492.P6361260423598969681

/-! ## A136492.P7797263629180601253

`lt[A076141(A233583(n+1)), 1]`
-/

namespace A136492.P7797263629180601253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076141 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A136492.P7797263629180601253

/-!
# A136493: Triangle of coefficients of characteristic polynomials of symmetrical pentadiagonal matrices of the type (1,-1,1,-1,1).

The programs for A136493, there is no canonical definition to state claims against.
-/

/-! ## A136493.P6821439247051293361

`A163945(A020485(n))%5`
-/

namespace A136493.P6821439247051293361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163945 (A020485 n).toNat) 5

end

end A136493.P6821439247051293361

/-! ## A136493.P10532832337806832050

`A163945(A004917(n+1))%5`
-/

namespace A136493.P10532832337806832050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163945 (A004917 (n + 1)).toNat) 5

end

end A136493.P10532832337806832050

/-! ## A136493.P15617374058135387809

`A010060(A237770(n))*A130595(n)`
-/

namespace A136493.P15617374058135387809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A237770 n).toNat * A130595 n

end

end A136493.P15617374058135387809

/-!
# A136494: Number of permutation symmetries in the binary expansion of n.

The programs for A136494, the canonical program `A136494.P13295662232037157937` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136494 has offset 0).

The definition of A136494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136494.P13295662232037157937

`A093659(n)*A139329(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A136494

/-- `A093659(n)*A139329(n)` -/
def P13295662232037157937.Spec : Prop :=
  ∀ n, P13295662232037157937.a n = A136494 n

theorem P13295662232037157937.correct : P13295662232037157937.Spec := by
  intro n
  simp only [A136494]

end A136494

/-! ## A136494.P5142554026272691122

`A000120(n)!*A080791(n)!`
-/

namespace A136494.P5142554026272691122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat * Nat.factorial (A080791 n).toNat

end

end A136494.P5142554026272691122

namespace A136494

/-- `A000120(n)!*A080791(n)!` -/
def P5142554026272691122.Spec : Prop :=
  ∀ n, (P5142554026272691122.a n : ℤ) = A136494 n

end A136494

/-! ## A136494.P12110947966314439064

`A000120(n)!*A023416(n)!`
-/

namespace A136494.P12110947966314439064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat * Nat.factorial (A023416 n).toNat

end

end A136494.P12110947966314439064

namespace A136494

/-- `A000120(n)!*A023416(n)!` -/
def P12110947966314439064.Spec : Prop :=
  ∀ n, (P12110947966314439064.a n : ℤ) = A136494 n

theorem P12110947966314439064.correct : P12110947966314439064.Spec := by
  intro n
  simp only [A136494, Nat.add_sub_cancel, A136494.P12110947966314439064.a, A136494.P13295662232037157937.a, A000120, A000120.P2816527436160941581.a, A023416, A023416.P8124303482289229133.a, A093659, A093659.P5890510302390266350.a, A139329, A139329.P7958588769808554264.a, A000142, A000142.P3272619076580183195.a, A005187, A005187.P3874015513960485494.a, A070939, A070939.P14677302147902843740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136494

/-! ## A136494.P17376179416596520216

`∑[A089263(n)]!*(A092391(n)-n)!`
-/

namespace A136494.P17376179416596520216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat * Nat.factorial (A092391 n - (n : ℤ)).toNat

end

end A136494.P17376179416596520216

namespace A136494

/-- `∑[A089263(n)]!*(A092391(n)-n)!` -/
def P17376179416596520216.Spec : Prop :=
  ∀ n, (P17376179416596520216.a n : ℤ) = A136494 n

end A136494

/-! ## A136494.P15652863480427145091

`Δ[A059015(abs(1-n))]!*(A092391(n)-n)!`
-/

namespace A136494.P15652863480427145091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059015 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f1 (n + 1) - f1 n).toNat * Nat.factorial (A092391 n - (n : ℤ)).toNat

end

end A136494.P15652863480427145091

namespace A136494

/-- `Δ[A059015(abs(1-n))]!*(A092391(n)-n)!` -/
def P15652863480427145091.Spec : Prop :=
  ∀ n, (P15652863480427145091.a n : ℤ) = A136494 n

end A136494

/-! ## A136494.P17855193013384803405

`A000142(A023416(n))*A093659(n)`
-/

namespace A136494.P17855193013384803405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A023416 n).toNat * A093659 n

end

end A136494.P17855193013384803405

namespace A136494

/-- `A000142(A023416(n))*A093659(n)` -/
def P17855193013384803405.Spec : Prop :=
  ∀ n, P17855193013384803405.a n = A136494 n

theorem P17855193013384803405.correct : P17855193013384803405.Spec := by
  intro n
  simp only [A136494, Nat.add_sub_cancel, A136494.P17855193013384803405.a, A136494.P13295662232037157937.a, A000142, A000142.P3272619076580183195.a, A023416, A023416.P8124303482289229133.a, A093659, A093659.P5890510302390266350.a, A139329, A139329.P7958588769808554264.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136494

/-! ## A136494.P6393559827000242993

`A000142(A000120(n))*A139329(n)`
-/

namespace A136494.P6393559827000242993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000120 n).toNat * A139329 n

end

end A136494.P6393559827000242993

namespace A136494

/-- `A000142(A000120(n))*A139329(n)` -/
def P6393559827000242993.Spec : Prop :=
  ∀ n, P6393559827000242993.a n = A136494 n

end A136494

/-! ## A136494.P10400618596011537230

`A000142(A080791(n))*A093659(n)`
-/

namespace A136494.P10400618596011537230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A080791 n).toNat * A093659 n

end

end A136494.P10400618596011537230

namespace A136494

/-- `A000142(A080791(n))*A093659(n)` -/
def P10400618596011537230.Spec : Prop :=
  ∀ n, P10400618596011537230.a n = A136494 n

end A136494

/-! ## A136494.P5881278232858490271

`A093659(A035327(n))*A093659(n)`
-/

namespace A136494.P5881278232858490271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A035327 n).toNat * A093659 n

end

end A136494.P5881278232858490271

namespace A136494

/-- `A093659(A035327(n))*A093659(n)` -/
def P5881278232858490271.Spec : Prop :=
  ∀ n, P5881278232858490271.a n = A136494 n

end A136494

/-! ## A136494.P16075597577547583085

`A093659(A080079(n+1))*A093659(n)`
-/

namespace A136494.P16075597577547583085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A080079 (n + 1)).toNat * A093659 n

end

end A136494.P16075597577547583085

namespace A136494

/-- `A093659(A080079(n+1))*A093659(n)` -/
def P16075597577547583085.Spec : Prop :=
  ∀ n, P16075597577547583085.a n = A136494 n

end A136494

/-! ## A136494.P1922825921596537158

`A093659(A036044(n))*A093659(n)`
-/

namespace A136494.P1922825921596537158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 (A036044 n).toNat * A093659 n

end

end A136494.P1922825921596537158

namespace A136494

/-- `A093659(A036044(n))*A093659(n)` -/
def P1922825921596537158.Spec : Prop :=
  ∀ n, P1922825921596537158.a n = A136494 n

end A136494

/-! ## A136494.P10366488078398720485

`∏{e}[A176893(n), #!]`
-/

namespace A136494.P10366488078398720485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A136494.P10366488078398720485

namespace A136494

/-- `∏{e}[A176893(n), #!]` -/
def P10366488078398720485.Spec : Prop :=
  ∀ n, (P10366488078398720485.a n : ℤ) = A136494 n

end A136494

/-! ## A136494.P15122928230411126274

`A246660(A073138(2*n+1)-1)`
-/

namespace A136494.P15122928230411126274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A073138 (2 * n + 1) - 1).toNat

end

end A136494.P15122928230411126274

namespace A136494

/-- `A246660(A073138(2*n+1)-1)` -/
def P15122928230411126274.Spec : Prop :=
  ∀ n, P15122928230411126274.a n = A136494 n

end A136494

/-! ## A136494.P5204272888416632629

`A112624(A176893(n))`
-/

namespace A136494.P5204272888416632629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A176893 n).toNat

end

end A136494.P5204272888416632629

namespace A136494

/-- `A112624(A176893(n))` -/
def P5204272888416632629.Spec : Prop :=
  ∀ n, P5204272888416632629.a n = A136494 n

end A136494

/-! ## A136494.P15567781224807383287

`A093659(n)*A093659(A335587(n))`
-/

namespace A136494.P15567781224807383287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n * A093659 (A335587 n).toNat

end

end A136494.P15567781224807383287

namespace A136494

/-- `A093659(n)*A093659(A335587(n))` -/
def P15567781224807383287.Spec : Prop :=
  ∀ n, P15567781224807383287.a n = A136494 n

end A136494

/-! ## A136494.P14875748954637388595

`A139329(n)*A139329(A196168(n))`
-/

namespace A136494.P14875748954637388595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139329 n * A139329 (A196168 n).toNat

end

end A136494.P14875748954637388595

namespace A136494

/-- `A139329(n)*A139329(A196168(n))` -/
def P14875748954637388595.Spec : Prop :=
  ∀ n, P14875748954637388595.a n = A136494 n

end A136494

/-!
# A136495: Solution of the complementary equation b(n)=a(a(n))+n.

The programs for A136495, the canonical program `A136495.P596664169401550958` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136495 has offset 1).

The definition of A136495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136495.P596664169401550958

`A005374(A005374(n))+n+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A136495

/-- `A005374(A005374(n))+n+1` -/
def P596664169401550958.Spec : Prop :=
  ∀ n, P596664169401550958.a n = A136495 (n + 1)

theorem P596664169401550958.correct : P596664169401550958.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel]

end A136495

/-! ## A136495.P6504061131792487693

`∑[A202340(n)]`
-/

namespace A136495.P6504061131792487693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136495.P6504061131792487693

namespace A136495

/-- `∑[A202340(n)]` -/
def P6504061131792487693.Spec : Prop :=
  ∀ n, P6504061131792487693.a n = A136495 (n + 1)

end A136495

/-! ## A136495.P18084193261268845960

`A372758(n+1)+n`
-/

namespace A136495.P18084193261268845960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (n + 1) + (n : ℤ)

end

end A136495.P18084193261268845960

namespace A136495

/-- `A372758(n+1)+n` -/
def P18084193261268845960.Spec : Prop :=
  ∀ n, P18084193261268845960.a n = A136495 (n + 1)

theorem P18084193261268845960.correct : P18084193261268845960.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P18084193261268845960.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A372758, A372758.P14293302057458379432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P1895888822858355545

`comp[A020942(n+1)]+1`
-/

namespace A136495.P1895888822858355545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136495.P1895888822858355545

namespace A136495

/-- `comp[A020942(n+1)]+1` -/
def P1895888822858355545.Spec : Prop :=
  ∀ n, (P1895888822858355545.a n : ℤ) = A136495 (n + 1)

end A136495

/-! ## A136495.P13024567285766299481

`∑[char[A202342(n+1)]+1]`
-/

namespace A136495.P13024567285766299481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136495.P13024567285766299481

namespace A136495

/-- `∑[char[A202342(n+1)]+1]` -/
def P13024567285766299481.Spec : Prop :=
  ∀ n, (P13024567285766299481.a n : ℤ) = A136495 (n + 1)

end A136495

/-! ## A136495.P13157896376321129578

`comp[comp[A202341(n+2)]+n]`
-/

namespace A136495.P13157896376321129578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A136495.P13157896376321129578

namespace A136495

/-- `comp[comp[A202341(n+2)]+n]` -/
def P13157896376321129578.Spec : Prop :=
  ∀ n, (P13157896376321129578.a n : ℤ) = A136495 (n + 1)

end A136495

/-! ## A136495.P2552667759371123719

`(A288695(n+1)+n+1)/2`
-/

namespace A136495.P2552667759371123719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288695 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A136495.P2552667759371123719

namespace A136495

/-- `(A288695(n+1)+n+1)/2` -/
def P2552667759371123719.Spec : Prop :=
  ∀ n, P2552667759371123719.a n = (A136495 (n + 1) : ℚ)

theorem P2552667759371123719.correct : P2552667759371123719.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P2552667759371123719.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A288695, A288695.P14736522224666781171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P13029362260506843493

`A064105(n+1)-A020942(n+1)`
-/

namespace A136495.P13029362260506843493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) - A020942 (n + 1)

end

end A136495.P13029362260506843493

namespace A136495

/-- `A064105(n+1)-A020942(n+1)` -/
def P13029362260506843493.Spec : Prop :=
  ∀ n, P13029362260506843493.a n = A136495 (n + 1)

theorem P13029362260506843493.correct : P13029362260506843493.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P13029362260506843493.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P15475116666412792939

`A381841(n+1)-A136496(n+1)`
-/

namespace A136495.P15475116666412792939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - A136496 (n + 1)

end

end A136495.P15475116666412792939

namespace A136495

/-- `A381841(n+1)-A136496(n+1)` -/
def P15475116666412792939.Spec : Prop :=
  ∀ n, P15475116666412792939.a n = A136495 (n + 1)

theorem P15475116666412792939.correct : P15475116666412792939.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P15475116666412792939.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P8898578019724898816

`A372752(n+1)%A372749(n+1)`
-/

namespace A136495.P8898578019724898816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372752 (n + 1)) (A372749 (n + 1))

end

end A136495.P8898578019724898816

namespace A136495

/-- `A372752(n+1)%A372749(n+1)` -/
def P8898578019724898816.Spec : Prop :=
  ∀ n, P8898578019724898816.a n = A136495 (n + 1)

end A136495

/-! ## A136495.P3364817309361870237

`A372756(n+1)%A372749(n+1)`
-/

namespace A136495.P3364817309361870237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372756 (n + 1)) (A372749 (n + 1))

end

end A136495.P3364817309361870237

namespace A136495

/-- `A372756(n+1)%A372749(n+1)` -/
def P3364817309361870237.Spec : Prop :=
  ∀ n, P3364817309361870237.a n = A136495 (n + 1)

end A136495

/-! ## A136495.P1646550006297217053

`∪[A202342(n+1), A381841(n+1)]`
-/

namespace A136495.P1646550006297217053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A136495.P1646550006297217053

namespace A136495

/-- `∪[A202342(n+1), A381841(n+1)]` -/
def P1646550006297217053.Spec : Prop :=
  ∀ n, (P1646550006297217053.a n : ℤ) = A136495 (n + 1)

end A136495

/-! ## A136495.P14758404620673859817

`A064105(n+1)-(A202342(n+1)+n)`
-/

namespace A136495.P14758404620673859817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) - (A202342 (n + 1) + (n : ℤ))

end

end A136495.P14758404620673859817

namespace A136495

/-- `A064105(n+1)-(A202342(n+1)+n)` -/
def P14758404620673859817.Spec : Prop :=
  ∀ n, P14758404620673859817.a n = A136495 (n + 1)

end A136495

/-! ## A136495.P3601623260050741641

`A064106(n+1)-(A202342(n+1)+A020942(n+1))`
-/

namespace A136495.P3601623260050741641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - (A202342 (n + 1) + A020942 (n + 1))

end

end A136495.P3601623260050741641

namespace A136495

/-- `A064106(n+1)-(A202342(n+1)+A020942(n+1))` -/
def P3601623260050741641.Spec : Prop :=
  ∀ n, P3601623260050741641.a n = A136495 (n + 1)

theorem P3601623260050741641.correct : P3601623260050741641.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P3601623260050741641.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A064106, A064106.P240912047226861259.a, A202342, A202342.P5796561117243952660.a, A064105, A064105.P10505817968738943948.a, A136496, A136496.P805941965056846939.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P10582085156831241973

`A064105(n+1)+A064106(n+1)-A372749(n+1)`
-/

namespace A136495.P10582085156831241973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064105 (n + 1) + (A064106 (n + 1) - A372749 (n + 1))

end

end A136495.P10582085156831241973

namespace A136495

/-- `A064105(n+1)+A064106(n+1)-A372749(n+1)` -/
def P10582085156831241973.Spec : Prop :=
  ∀ n, P10582085156831241973.a n = A136495 (n + 1)

theorem P10582085156831241973.correct : P10582085156831241973.Spec := by
  intro n
  simp only [A136495, Nat.add_sub_cancel, A136495.P10582085156831241973.a, A136495.P596664169401550958.a, A005374, A005374.P13862197180797613727.a, A064105, A064105.P10505817968738943948.a, A064106, A064106.P240912047226861259.a, A372749, A372749.P13035462491583893748.a, A136496, A136496.P805941965056846939.a, A202342, A202342.P5796561117243952660.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136495

/-! ## A136495.P17045158151969175274

`A105083(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A136495.P17045158151969175274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A105083 (a (n - 1)).toNat + a (n - 1)

end

end A136495.P17045158151969175274

namespace A136495

/-- `A105083(a(n-1))+a(n-1)` -/
def P17045158151969175274.Spec : Prop :=
  ∀ n, P17045158151969175274.a n = A136495 (n + 1)

end A136495

/-! ## A136495.P4136194799635411138

`A005374(A202342(n+1))`
-/

namespace A136495.P4136194799635411138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A202342 (n + 1)).toNat

end

end A136495.P4136194799635411138

namespace A136495

/-- `A005374(A202342(n+1))` -/
def P4136194799635411138.Spec : Prop :=
  ∀ n, P4136194799635411138.a n = A136495 (n + 1)

end A136495

/-!
# A136496: Solution of the complementary equation b(n)=a(a(n))+n; this is sequence b; sequence a is A136495.

The programs for A136496, the canonical program `A136496.P805941965056846939` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A136496 has offset 1).

The definition of A136496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A136496.P805941965056846939

`A136495(n+1)+A005374(n)+n+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A136496

/-- `A136495(n+1)+A005374(n)+n+1` -/
def P805941965056846939.Spec : Prop :=
  ∀ n, P805941965056846939.a n = A136496 (n + 1)

theorem P805941965056846939.correct : P805941965056846939.Spec := by
  intro n
  simp only [A136496, Nat.add_sub_cancel]

end A136496

/-! ## A136496.P10747948705396727743

`A020942(n+1)+1`
-/

namespace A136496.P10747948705396727743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + 1

end

end A136496.P10747948705396727743

namespace A136496

/-- `A020942(n+1)+1` -/
def P10747948705396727743.Spec : Prop :=
  ∀ n, P10747948705396727743.a n = A136496 (n + 1)

theorem P10747948705396727743.correct : P10747948705396727743.Spec := by
  intro n
  simp only [A136496, Nat.add_sub_cancel, A136496.P10747948705396727743.a, A136496.P805941965056846939.a, A005374, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A136495, A136495.P596664169401550958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136496

/-! ## A136496.P8951281285362879266

`n+1+A202342(n+1)`
-/

namespace A136496.P8951281285362879266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A202342 (n + 1)

end

end A136496.P8951281285362879266

namespace A136496

/-- `n+1+A202342(n+1)` -/
def P8951281285362879266.Spec : Prop :=
  ∀ n, P8951281285362879266.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P2380738291052649950

`A381841(n+1)-A136495(n+1)`
-/

namespace A136496.P2380738291052649950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381841 (n + 1) - A136495 (n + 1)

end

end A136496.P2380738291052649950

namespace A136496

/-- `A381841(n+1)-A136495(n+1)` -/
def P2380738291052649950.Spec : Prop :=
  ∀ n, P2380738291052649950.a n = A136496 (n + 1)

theorem P2380738291052649950.correct : P2380738291052649950.Spec := by
  intro n
  simp only [A136496, Nat.add_sub_cancel, A136496.P2380738291052649950.a, A136496.P805941965056846939.a, A005374, A005374.P13862197180797613727.a, A136495, A136495.P596664169401550958.a, A381841, A381841.P11592063328882471830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A136496

/-! ## A136496.P5017518818986897367

`A202342(A136495(n+1))+1`
-/

namespace A136496.P5017518818986897367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (A136495 (n + 1)).toNat + 1

end

end A136496.P5017518818986897367

namespace A136496

/-- `A202342(A136495(n+1))+1` -/
def P5017518818986897367.Spec : Prop :=
  ∀ n, P5017518818986897367.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P12488173542961786385

`A202341(A005374(n)+n+2)`
-/

namespace A136496.P12488173542961786385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A005374 n + (n + 2 : ℤ)).toNat

end

end A136496.P12488173542961786385

namespace A136496

/-- `A202341(A005374(n)+n+2)` -/
def P12488173542961786385.Spec : Prop :=
  ∀ n, P12488173542961786385.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P15972776352026109917

`A202341(A372758(A136495(n+1))+n+1)`
-/

namespace A136496.P15972776352026109917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202341 (A372758 (A136495 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A136496.P15972776352026109917

namespace A136496

/-- `A202341(A372758(A136495(n+1))+n+1)` -/
def P15972776352026109917.Spec : Prop :=
  ∀ n, P15972776352026109917.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P12437792775491013435

`A288696(Δ[n²])-n`
-/

namespace A136496.P12437792775491013435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288696 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A136496.P12437792775491013435

namespace A136496

/-- `A288696(Δ[n²])-n` -/
def P12437792775491013435.Spec : Prop :=
  ∀ n, P12437792775491013435.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P8059233495592487952

`abs(A288696(2*n+1)-n)`
-/

namespace A136496.P8059233495592487952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288696 (2 * n + 1) - (n : ℤ)|

end

end A136496.P8059233495592487952

namespace A136496

/-- `abs(A288696(2*n+1)-n)` -/
def P8059233495592487952.Spec : Prop :=
  ∀ n, P8059233495592487952.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P2621144976724821639

`eq[2, A105083(n)]+1`
-/

namespace A136496.P2621144976724821639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A136496.P2621144976724821639

namespace A136496

/-- `eq[2, A105083(n)]+1` -/
def P2621144976724821639.Spec : Prop :=
  ∀ n, (P2621144976724821639.a n : ℤ) = A136496 (n + 1)

end A136496

/-! ## A136496.P220689275261052783

`A020725(A020942(n+1))`
-/

namespace A136496.P220689275261052783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020942 (n + 1)).toNat

end

end A136496.P220689275261052783

namespace A136496

/-- `A020725(A020942(n+1))` -/
def P220689275261052783.Spec : Prop :=
  ∀ n, P220689275261052783.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P9976056032725617973

`A005374(A381841(n+1))`
-/

namespace A136496.P9976056032725617973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A381841 (n + 1)).toNat

end

end A136496.P9976056032725617973

namespace A136496

/-- `A005374(A381841(n+1))` -/
def P9976056032725617973.Spec : Prop :=
  ∀ n, P9976056032725617973.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P12078380236958129030

`A005374(A064105(n+1)+1)`
-/

namespace A136496.P12078380236958129030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A064105 (n + 1) + 1).toNat

end

end A136496.P12078380236958129030

namespace A136496

/-- `A005374(A064105(n+1)+1)` -/
def P12078380236958129030.Spec : Prop :=
  ∀ n, P12078380236958129030.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P5719808198626858560

`A372758(A064105(A372758(n+1)+n))`
-/

namespace A136496.P5719808198626858560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A064105 (A372758 (n + 1) + (n : ℤ)).toNat).toNat

end

end A136496.P5719808198626858560

namespace A136496

/-- `A372758(A064105(A372758(n+1)+n))` -/
def P5719808198626858560.Spec : Prop :=
  ∀ n, P5719808198626858560.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P8362563946394718247

`A372758(A064106(n+1))`
-/

namespace A136496.P8362563946394718247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A064106 (n + 1)).toNat

end

end A136496.P8362563946394718247

namespace A136496

/-- `A372758(A064106(n+1))` -/
def P8362563946394718247.Spec : Prop :=
  ∀ n, P8362563946394718247.a n = A136496 (n + 1)

end A136496

/-! ## A136496.P17788220435686123514

`A372758(A381841(A372758(n+1)+n))`
-/

namespace A136496.P17788220435686123514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372758 (A381841 (A372758 (n + 1) + (n : ℤ)).toNat).toNat

end

end A136496.P17788220435686123514

namespace A136496

/-- `A372758(A381841(A372758(n+1)+n))` -/
def P17788220435686123514.Spec : Prop :=
  ∀ n, P17788220435686123514.a n = A136496 (n + 1)

end A136496

/-!
# A136497: Solution of the complementary equation b(n)=a(a(n))+a(n).

The programs for A136497, there is no canonical definition to state claims against.
-/

/-! ## A136497.P2028981733127384437

`comp[A136498(n+1)-1]+1`
-/

namespace A136497.P2028981733127384437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136498 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136497.P2028981733127384437

/-! ## A136497.P13841437612916389984

`∑[A364349(val(A035112(3*n+2), 2))]`
-/

namespace A136497.P13841437612916389984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 (SequenceMachineLib.valuation (A035112 (3 * n + 2)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136497.P13841437612916389984

/-! ## A136497.P961459335736766433

`∑[A371794(val(A035112(3*n+2), 2))]`
-/

namespace A136497.P961459335736766433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371794 (SequenceMachineLib.valuation (A035112 (3 * n + 2)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136497.P961459335736766433

/-!
# A136498: Solution of the complementary equation b(n)=a(a(n))+a(n); this is the sequence b. Sequence a is A136497.

The programs for A136498, there is no canonical definition to state claims against.
-/

/-! ## A136498.P1028766850520061671

`A136497(n+1)+A136497(A136497(n+1))`
-/

namespace A136498.P1028766850520061671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136497 (n + 1) + A136497 (A136497 (n + 1)).toNat

end

end A136498.P1028766850520061671

/-! ## A136498.P5151963842964476243

`eq[char[A136497(n+1)], A151933(n)]`
-/

namespace A136498.P5151963842964476243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136497 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A136498.P5151963842964476243

/-! ## A136498.P3350703413742392024

`∑[A331383(A250469(3*n+5)+8)]`
-/

namespace A136498.P3350703413742392024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A250469 (3 * n + 5) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A136498.P3350703413742392024

/-! ## A136498.P4174979490086852045

`A049692(n+1)+record[A342731(A003601(n+1))]`
-/

namespace A136498.P4174979490086852045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342731 (A003601 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A136498.P4174979490086852045

/-!
# A136499: Solution of the complementary equation b(n)=a(a(n))+a(n)+1; this is the sequence a. Sequence b is A136500.

The programs for A136499, there is no canonical definition to state claims against.
-/

/-! ## A136499.P5918716972040322947

`comp[A136500(n+1)-1]+1`
-/

namespace A136499.P5918716972040322947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136500 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136499.P5918716972040322947

/-! ## A136499.P4132311170179551135

`comp[A233583(A136500(n+1))]+1`
-/

namespace A136499.P4132311170179551135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A136500 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A136499.P4132311170179551135

/-! ## A136499.P10664443901365571862

`lt[A000032(n)*char[A136500(n+1)], n]`
-/

namespace A136499.P10664443901365571862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136500 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A136499.P10664443901365571862

/-! ## A136499.P410245840305258656

`lt[char[A136500(n+1)]*A290414(n), n]`
-/

namespace A136499.P410245840305258656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136500 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A290414 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A136499.P410245840305258656

/-! ## A136499.P5176974321751136431

`eq[char[A136500(n+1)], A151933(n)]`
-/

namespace A136499.P5176974321751136431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A136499.P5176974321751136431

