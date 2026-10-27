import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A018500: Divisors of 524.

The programs for A018500, there is no canonical definition to state claims against.
-/

/-! ## A018500.P2902758803848160940

`A269171(A018455(n+1))`
-/

namespace A018500.P2902758803848160940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A018455 (n + 1)).toNat

end

end A018500.P2902758803848160940

/-!
# A018501: Divisors of 525.

The programs for A018501, there is no canonical definition to state claims against.
-/

/-! ## A018501.P8325862347818659621

`A014872(A036965(n+1))`
-/

namespace A018501.P8325862347818659621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014872 (A036965 (n + 1)).toNat

end

end A018501.P8325862347818659621

/-! ## A018501.P15963415000083688631

`A064614(A018406(n+1))`
-/

namespace A018501.P15963415000083688631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018406 (n + 1)).toNat

end

end A018501.P15963415000083688631

/-! ## A018501.P18162624999860641393

`A014872(A101170(n+1))`
-/

namespace A018501.P18162624999860641393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014872 (A101170 (n + 1)).toNat

end

end A018501.P18162624999860641393

/-!
# A018502: Divisors of 528.

The programs for A018502, there is no canonical definition to state claims against.
-/

/-! ## A018502.P15719375814604126427

`eq[66, lcm(66, A106609(n))]`
-/

namespace A018502.P15719375814604126427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 66 (A106609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018502.P15719375814604126427

/-! ## A018502.P15841248240986759644

`eq[gcd(48, n), A106612(n)]`
-/

namespace A018502.P15841248240986759644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 48 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018502.P15841248240986759644

/-! ## A018502.P11547823984521766757

`A397688(A317592(n+1))`
-/

namespace A018502.P11547823984521766757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397688 (A317592 (n + 1)).toNat

end

end A018502.P11547823984521766757

/-! ## A018502.P5478724407741604205

`record[gcd(A003602(n+1), A157447(n+1))]`
-/

namespace A018502.P5478724407741604205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A157447 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018502.P5478724407741604205

/-! ## A018502.P14222342315069682227

`∪[2*A018362(n+1), A018362(n+1)]`
-/

namespace A018502.P14222342315069682227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018502.P14222342315069682227

/-!
# A018503: Divisors of 530.

The programs for A018503, there is no canonical definition to state claims against.
-/

/-! ## A018503.P15340294908911659982

`record[gcd(floor(n/(xor(n, n+1)+1))+1, 23*23*(n+1)-1)]`
-/

namespace A018503.P15340294908911659982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1) ((23 * (23 * (n + 1)) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018503.P15340294908911659982

/-! ## A018503.P6588028943036769728

`A061898(A050614(n))`
-/

namespace A018503.P6588028943036769728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061898 (A050614 n).toNat

end

end A018503.P6588028943036769728

/-! ## A018503.P10399526458932437778

`A064614(A018650(n+1))`
-/

namespace A018503.P10399526458932437778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A018650 (n + 1)).toNat

end

end A018503.P10399526458932437778

/-! ## A018503.P4293623864124945692

`A235201(A018392(n+1))`
-/

namespace A018503.P4293623864124945692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018392 (n + 1)).toNat

end

end A018503.P4293623864124945692

/-!
# A018504: Divisors of 531.

The programs for A018504, there is no canonical definition to state claims against.
-/

/-! ## A018504.P8393499796527897587

`A102370(3*a(n-1))-2` with `a(0)=1`
-/

namespace A018504.P8393499796527897587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102370 (3 * a (n - 1)).toNat - 2

end

end A018504.P8393499796527897587

/-!
# A018505: Divisors of 532.

The programs for A018505, there is no canonical definition to state claims against.
-/

/-! ## A018505.P17695779393055772783

`A332213(A018360(n+1))`
-/

namespace A018505.P17695779393055772783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018360 (n + 1)).toNat

end

end A018505.P17695779393055772783

/-! ## A018505.P2710966252921546021

`A108738(7*A018424(n+1))`
-/

namespace A018505.P2710966252921546021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (7 * A018424 (n + 1)).toNat

end

end A018505.P2710966252921546021

/-! ## A018505.P15391541534462418008

`A108738(lcm(7, A018424(n+1)))`
-/

namespace A018505.P15391541534462418008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (Int.lcm 7 (A018424 (n + 1)))

end

end A018505.P15391541534462418008

/-! ## A018505.P5717818763464966694

`record[gcd(n, A051869(A181390(n+1)))]`
-/

namespace A018505.P5717818763464966694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A051869 (A181390 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018505.P5717818763464966694

/-! ## A018505.P11505230613390478210

`∩[A035261(n+1), A367266(n+1)]`
-/

namespace A018505.P11505230613390478210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018505.P11505230613390478210

/-!
# A018506: Divisors of 534.

The programs for A018506, there is no canonical definition to state claims against.
-/

/-! ## A018506.P17310551265513301672

`A325709(A325094(n))`
-/

namespace A018506.P17310551265513301672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325709 (A325094 n).toNat

end

end A018506.P17310551265513301672

/-! ## A018506.P5776016624841067039

`A003965(A018300(n+1))`
-/

namespace A018506.P5776016624841067039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A018300 (n + 1)).toNat

end

end A018506.P5776016624841067039

/-! ## A018506.P14485863252460264870

`A097248(A018605(n+1))`
-/

namespace A018506.P14485863252460264870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A018605 (n + 1)).toNat

end

end A018506.P14485863252460264870

/-! ## A018506.P17427295880752255184

`A235200(A018704(n+1))`
-/

namespace A018506.P17427295880752255184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A018704 (n + 1)).toNat

end

end A018506.P17427295880752255184

/-!
# A018507: Divisors of 536.

The programs for A018507, there is no canonical definition to state claims against.
-/

/-! ## A018507.P16838922811205349131

`eq[67, lcm(67, lcm(8, n)/8)]`
-/

namespace A018507.P16838922811205349131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  67

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 67 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018507.P16838922811205349131

/-! ## A018507.P10109449170641047498

`and(-round(4*2^n/5), A018523(n+1))`
-/

namespace A018507.P10109449170641047498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-SequenceMachineLib.roundAway (4 * ((2 ^ n : ℚ) / 5))) (A018523 (n + 1))

end

end A018507.P10109449170641047498

/-! ## A018507.P108745160556893174

`A057889(A018640(n+1))`
-/

namespace A018507.P108745160556893174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018640 (n + 1)).toNat

end

end A018507.P108745160556893174

/-! ## A018507.P11947909387846245304

`A235201(A018354(n+1))`
-/

namespace A018507.P11947909387846245304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018354 (n + 1)).toNat

end

end A018507.P11947909387846245304

/-!
# A018508: Divisors of 539.

The programs for A018508, there is no canonical definition to state claims against.
-/

/-! ## A018508.P13500070794398893755

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=7, a(2)=11, a(3)=49`
-/

namespace A018508.P13500070794398893755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 11, 49] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018508.P13500070794398893755

/-!
# A018509: Divisors of 540.

The programs for A018509, there is no canonical definition to state claims against.
-/

/-! ## A018509.P3472648428483552899

`A134950(n+1)+char[24]`
-/

namespace A018509.P3472648428483552899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A018509.P3472648428483552899

/-! ## A018509.P5875891013029481305

`A134950(A348553(n))`
-/

namespace A018509.P5875891013029481305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (A348553 n).toNat

end

end A018509.P5875891013029481305

/-! ## A018509.P11852530176435615521

`A134950(A387051(n))`
-/

namespace A018509.P11852530176435615521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (A387051 n).toNat

end

end A018509.P11852530176435615521

/-! ## A018509.P14504361557716260158

`A134950(A387108(n))`
-/

namespace A018509.P14504361557716260158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (A387108 n).toNat

end

end A018509.P14504361557716260158

/-! ## A018509.P7525233947031204424

`A134950(A387109(n))`
-/

namespace A018509.P7525233947031204424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134950 (A387109 n).toNat

end

end A018509.P7525233947031204424

/-!
# A018510: Divisors of 544.

The programs for A018510, there is no canonical definition to state claims against.
-/

/-! ## A018510.P6451832954018351979

`eq[68, lcm(68, A106609(n))]`
-/

namespace A018510.P6451832954018351979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  68

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 68 (A106609 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018510.P6451832954018351979

/-! ## A018510.P14650532119606852798

`A072010(A018547(n+1))`
-/

namespace A018510.P14650532119606852798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A018547 (n + 1)).toNat

end

end A018510.P14650532119606852798

/-! ## A018510.P4384883348061244829

`A231550(A018763(n+1))`
-/

namespace A018510.P4384883348061244829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A018763 (n + 1)).toNat

end

end A018510.P4384883348061244829

/-! ## A018510.P9759502612320663893

`eq[1, A227140(A106618(n))]`
-/

namespace A018510.P9759502612320663893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A106618 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018510.P9759502612320663893

/-! ## A018510.P5896177176757585992

`filter[A048718(n+1), A221641(#)]`
-/

namespace A018510.P5896177176757585992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A221641 (f1 j).toNat = 1) n)

end

end A018510.P5896177176757585992

/-!
# A018511: Divisors of 546.

The programs for A018511, there is no canonical definition to state claims against.
-/

/-! ## A018511.P1596293520190095044

`eq[gcd(3, n), A106614(lcm(14, n)/14)]`
-/

namespace A018511.P1596293520190095044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((Nat.lcm 14 n : ℚ) / 14)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018511.P1596293520190095044

/-! ## A018511.P12420487967294748809

`record[gcd((n^4+n)*(n²+1+n), A103391(n+1))]`
-/

namespace A018511.P12420487967294748809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 4 + n) * (n ^ 2 + 1 + n) : ℤ) (A103391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018511.P12420487967294748809

/-! ## A018511.P3648804172683205479

`A332808(A018468(n+1))`
-/

namespace A018511.P3648804172683205479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018468 (n + 1)).toNat

end

end A018511.P3648804172683205479

/-! ## A018511.P9139213087966310408

`∏{p}[A018468(n+1), A185660(#)]`
-/

namespace A018511.P9139213087966310408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A185660 p

end

end A018511.P9139213087966310408

/-! ## A018511.P12869813753923458617

`∏{p}[A018468(n+1), A265668(#)]`
-/

namespace A018511.P12869813753923458617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A265668 p

end

end A018511.P12869813753923458617

/-!
# A018512: Divisors of 548.

The programs for A018512, there is no canonical definition to state claims against.
-/

/-! ## A018512.P1615459601226475987

`A048678(A018304(n+1))`
-/

namespace A018512.P1615459601226475987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A018304 (n + 1)).toNat

end

end A018512.P1615459601226475987

/-!
# A018513: Divisors of 549.

The programs for A018513, there is no canonical definition to state claims against.
-/

/-! ## A018513.P894114770844711564

`or(1, A137823(2*n+1))`
-/

namespace A018513.P894114770844711564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A137823 (2 * n + 1))

end

end A018513.P894114770844711564

/-!
# A018514: Divisors of 550.

The programs for A018514, there is no canonical definition to state claims against.
-/

/-! ## A018514.P18391393889682559064

`record[gcd(A032742(n+1), A288920(n+1))]`
-/

namespace A018514.P18391393889682559064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (n + 1)) (A288920 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018514.P18391393889682559064

/-! ## A018514.P11329198870400219494

`record[gcd(55*A291510(n+1), A289440(n+6))]`
-/

namespace A018514.P11329198870400219494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (55 * A291510 (n + 1)) (A289440 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018514.P11329198870400219494

/-! ## A018514.P16777483957821050123

`eq[A106611(A106611(2*n)), A109014(n)]`
-/

namespace A018514.P16777483957821050123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A106611 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018514.P16777483957821050123

/-! ## A018514.P13767571461712795241

`∪[2*A018368(n+1), A018368(n+1)]`
-/

namespace A018514.P13767571461712795241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018514.P13767571461712795241

/-! ## A018514.P13244022559732105037

`∪[A018368(n+1), A005843(A018368(n+1))]`
-/

namespace A018514.P13244022559732105037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A018368 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018514.P13244022559732105037

/-!
# A018515: Divisors of 552.

The programs for A018515, there is no canonical definition to state claims against.
-/

/-! ## A018515.P2619076935549005081

`A332213(A018438(n+1))`
-/

namespace A018515.P2619076935549005081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018438 (n + 1)).toNat

end

end A018515.P2619076935549005081

/-! ## A018515.P12467122449754125866

`record[gcd(A158631(n), A338782(n+1))]`
-/

namespace A018515.P12467122449754125866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158631 n) (A338782 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018515.P12467122449754125866

/-! ## A018515.P9713381907977823976

`record[(n+1)/A106612(A046073(n+1))]`
-/

namespace A018515.P9713381907977823976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A106612 (A046073 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018515.P9713381907977823976

/-! ## A018515.P12184311464427037504

`∪[2*A018369(n+1), A018369(n+1)]`
-/

namespace A018515.P12184311464427037504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018515.P12184311464427037504

/-! ## A018515.P11126253314335132031

`∪[3*A018323(n+1), A018323(n+1)]`
-/

namespace A018515.P11126253314335132031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018515.P11126253314335132031

/-!
# A018516: Divisors of 555.

The programs for A018516, there is no canonical definition to state claims against.
-/

/-! ## A018516.P16586280669605949078

`record[gcd(n+6, A140152(n+1))]`
-/

namespace A018516.P16586280669605949078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A140152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018516.P16586280669605949078

/-! ## A018516.P7219689068438085974

`A087786(A371450(n))`
-/

namespace A018516.P7219689068438085974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087786 (A371450 n).toNat

end

end A018516.P7219689068438085974

/-! ## A018516.P7951563824439510903

`A001177(A018615(n+1))`
-/

namespace A018516.P7951563824439510903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A018615 (n + 1)).toNat

end

end A018516.P7951563824439510903

/-! ## A018516.P275235837415740325

`A003961(A018324(n+1))`
-/

namespace A018516.P275235837415740325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018324 (n + 1)).toNat

end

end A018516.P275235837415740325

/-!
# A018517: Divisors of 556.

The programs for A018517, there is no canonical definition to state claims against.
-/

/-! ## A018517.P3556778919207192677

`or(2^n, A018500(n+1))`
-/

namespace A018517.P3556778919207192677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018500 (n + 1))

end

end A018517.P3556778919207192677

/-!
# A018518: Divisors of 558.

The programs for A018518, there is no canonical definition to state claims against.
-/

/-! ## A018518.P8601589473106498639

`ogf((1+2x+4x^6+8x^7)/(1-3x^2))`
-/

namespace A018518.P8601589473106498639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 0, 0, 0, 4, 8] [1, 0, -3] n

end

end A018518.P8601589473106498639

/-! ## A018518.P13653051014353195655

`or(a(n-1)+a(n%2-2+n), A079207(n))` with `a(0)=1`
-/

namespace A018518.P13653051014353195655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1) + a (((n % 2 : ℕ) : ℤ) - 2 + (n : ℤ)).toNat) (A079207 n)

end

end A018518.P13653051014353195655

/-! ## A018518.P7129920224701658380

`eq[A106619(n), A288638(A106619(n))]`
-/

namespace A018518.P7129920224701658380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288638 (A106619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018518.P7129920224701658380

/-! ## A018518.P118887097552217098

`or(A007953(A245859(n+6)), A038754(n))`
-/

namespace A018518.P118887097552217098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007953 (A245859 (n + 6)).toNat) (A038754 n)

end

end A018518.P118887097552217098

/-!
# A018519: Divisors of 560.

The programs for A018519, there is no canonical definition to state claims against.
-/

/-! ## A018519.P4486384774290423130

`record[A038502(A178858(n+1))]`
-/

namespace A018519.P4486384774290423130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018519.P4486384774290423130

/-! ## A018519.P3975792293945771399

`record[A038502(A178861(n+1))]`
-/

namespace A018519.P3975792293945771399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A178861 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018519.P3975792293945771399

/-! ## A018519.P7031099782776818062

`record[A038502(A178878(n+1))]`
-/

namespace A018519.P7031099782776818062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A178878 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018519.P7031099782776818062

/-! ## A018519.P16053423388911710292

`record[A135997(A178878(n+2))]`
-/

namespace A018519.P16053423388911710292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A178878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018519.P16053423388911710292

/-! ## A018519.P9888436942001420783

`record[A175676(A178878(n+3))]`
-/

namespace A018519.P9888436942001420783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A178878 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018519.P9888436942001420783

/-!
# A018520: Divisors of 561.

The programs for A018520, there is no canonical definition to state claims against.
-/

/-! ## A018520.P8708065792218118035

`∏{p}[A018420(n+1), or(1, #)]`
-/

namespace A018520.P8708065792218118035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A018520.P8708065792218118035

/-! ## A018520.P9732206970838724954

`record[gcd(n²-ceil(n/2)², A136396(n))]`
-/

namespace A018520.P9732206970838724954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) - ⌈(n : ℚ) / 2⌉ ^ 2) (A136396 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018520.P9732206970838724954

/-! ## A018520.P16030779984145590747

`A003961(A018322(n+1))`
-/

namespace A018520.P16030779984145590747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018322 (n + 1)).toNat

end

end A018520.P16030779984145590747

/-! ## A018520.P4530825750445896241

`A186813(A018420(n+1))`
-/

namespace A018520.P4530825750445896241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186813 (A018420 (n + 1)).toNat

end

end A018520.P4530825750445896241

/-!
# A018521: Divisors of 564.

The programs for A018521, there is no canonical definition to state claims against.
-/

/-! ## A018521.P1298301822718824173

`eq[47, lcm(47, A051724(n))]`
-/

namespace A018521.P1298301822718824173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 47 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018521.P1298301822718824173

/-! ## A018521.P5805753119807856084

`A263272(A018602(n+1))`
-/

namespace A018521.P5805753119807856084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A018602 (n + 1)).toNat

end

end A018521.P5805753119807856084

/-! ## A018521.P8925625314476599415

`A332213(A018484(n+1))`
-/

namespace A018521.P8925625314476599415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018484 (n + 1)).toNat

end

end A018521.P8925625314476599415

/-! ## A018521.P4665029568214896039

`A332808(A018561(n+1))`
-/

namespace A018521.P4665029568214896039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018561 (n + 1)).toNat

end

end A018521.P4665029568214896039

/-! ## A018521.P10081823431898920082

`2*A018561(n+1)-A018602(n+1)`
-/

namespace A018521.P10081823431898920082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018561 (n + 1) - A018602 (n + 1)

end

end A018521.P10081823431898920082

/-!
# A018522: Divisors of 567.

The programs for A018522, there is no canonical definition to state claims against.
-/

/-! ## A018522.P14742843226516489731

`record[a(floor((n+1)/4))*a(n-2)]` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=7`
-/

namespace A018522.P14742843226516489731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 3, 7] fun n f1 =>
  f1 ⌊(n + 1 : ℚ) / 4⌋.toNat * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018522.P14742843226516489731

/-! ## A018522.P224015877269680601

`A133027(comp[10*n])`
-/

namespace A018522.P224015877269680601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A018522.P224015877269680601

/-! ## A018522.P13739777288855717415

`record[Δ[∑{digits}[n, #]]*A133027(n+1)]`
-/

namespace A018522.P13739777288855717415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A133027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018522.P13739777288855717415

/-! ## A018522.P16444317214953104833

`a(n-2)*a(A120186(n))` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9`
-/

namespace A018522.P16444317214953104833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7, 9] fun n a =>
  a (n - 2) * a (A120186 n).toNat

end

end A018522.P16444317214953104833

/-! ## A018522.P811983409429108599

`A057286(A086736(n+1))`
-/

namespace A018522.P811983409429108599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057286 (A086736 (n + 1)).toNat

end

end A018522.P811983409429108599

/-!
# A018523: Divisors of 568.

The programs for A018523, there is no canonical definition to state claims against.
-/

/-! ## A018523.P17331533919784693539

`record[gcd(C(n, 2)+1, A165678(n+1))]`
-/

namespace A018523.P17331533919784693539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n 2 + 1 : ℤ) (A165678 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018523.P17331533919784693539

/-! ## A018523.P14330924978191146037

`A071786(A083593(n))`
-/

namespace A018523.P14330924978191146037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A083593 n).toNat

end

end A018523.P14330924978191146037

/-! ## A018523.P1294818211101729829

`A057889(A018713(n+1))`
-/

namespace A018523.P1294818211101729829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018713 (n + 1)).toNat

end

end A018523.P1294818211101729829

/-! ## A018523.P7564066111801981128

`A235201(A018456(n+1))`
-/

namespace A018523.P7564066111801981128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018456 (n + 1)).toNat

end

end A018523.P7564066111801981128

/-!
# A018524: Divisors of 570.

The programs for A018524, there is no canonical definition to state claims against.
-/

/-! ## A018524.P7808306950060810472

`record[∏{p}[A133030(n+1), #]]`
-/

namespace A018524.P7808306950060810472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018524.P7808306950060810472

/-! ## A018524.P4550007827756276393

`filter[A133030(n+1), A008966(#)]`
-/

namespace A018524.P4550007827756276393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A018524.P4550007827756276393

/-! ## A018524.P3066809479775373956

`filter[A133030(n+1), A060584(#)]`
-/

namespace A018524.P3066809479775373956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A060584 (f1 j).toNat = 1) n)

end

end A018524.P3066809479775373956

/-! ## A018524.P11202420237279394579

`filter[A133030(n+1), A168182(#)]`
-/

namespace A018524.P11202420237279394579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A018524.P11202420237279394579

/-! ## A018524.P12235745459708328017

`filter[A133030(n+1), A323154(#)]`
-/

namespace A018524.P12235745459708328017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A018524.P12235745459708328017

/-!
# A018525: Divisors of 572.

The programs for A018525, there is no canonical definition to state claims against.
-/

/-! ## A018525.P14042777895428166379

`eq[gcd(44, n), A106614(n)]`
-/

namespace A018525.P14042777895428166379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 44 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018525.P14042777895428166379

/-! ## A018525.P10974787639722049929

`A051119(13*A018625(n+1))`
-/

namespace A018525.P10974787639722049929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (13 * A018625 (n + 1)).toNat

end

end A018525.P10974787639722049929

/-! ## A018525.P9245550706264769958

`A051119(lcm(13, A018625(n+1)))`
-/

namespace A018525.P9245550706264769958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lcm 13 (A018625 (n + 1)))

end

end A018525.P9245550706264769958

/-! ## A018525.P2214665091043548481

`∪[2*A018375(n+1), A018375(n+1)]`
-/

namespace A018525.P2214665091043548481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018525.P2214665091043548481

/-! ## A018525.P17933119660941227200

`∪[A018375(n+1), A257088(A018375(n+1))]`
-/

namespace A018525.P17933119660941227200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A018375 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018525.P17933119660941227200

/-!
# A018526: Divisors of 574.

The programs for A018526, there is no canonical definition to state claims against.
-/

/-! ## A018526.P14411752604743057956

`A160102(A026383(n))`
-/

namespace A018526.P14411752604743057956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A026383 n).toNat

end

end A018526.P14411752604743057956

/-! ## A018526.P10329513895605865642

`A116912(A018661(n+1))`
-/

namespace A018526.P10329513895605865642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018661 (n + 1)).toNat

end

end A018526.P10329513895605865642

/-! ## A018526.P12784180856497325664

`A235027(A018497(n+1))`
-/

namespace A018526.P12784180856497325664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018497 (n + 1)).toNat

end

end A018526.P12784180856497325664

/-! ## A018526.P9395100730428760306

`A235201(A018584(n+1))`
-/

namespace A018526.P9395100730428760306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018584 (n + 1)).toNat

end

end A018526.P9395100730428760306

/-!
# A018527: Divisors of 575.

The programs for A018527, there is no canonical definition to state claims against.
-/

/-! ## A018527.P15625371526874775333

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=25`
-/

namespace A018527.P15625371526874775333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 23, 25] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018527.P15625371526874775333

/-!
# A018528: Divisors of 576.

The programs for A018528, there is no canonical definition to state claims against.
-/

/-! ## A018528.P13862831896016092374

`eq[gcd(9, n), A106609(lcm(8, n)/8)]`
-/

namespace A018528.P13862831896016092374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((Nat.lcm 8 n : ℚ) / 8)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018528.P13862831896016092374

/-! ## A018528.P7140640655856152446

`eq[1, A227140(A106619(n))]`
-/

namespace A018528.P7140640655856152446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (A106619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018528.P7140640655856152446

/-! ## A018528.P10498703790611029085

`record[A065331(A178862(n+1))]`
-/

namespace A018528.P10498703790611029085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A178862 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018528.P10498703790611029085

/-! ## A018528.P6173639218034151889

`record[A065331(A245030(n+1))]`
-/

namespace A018528.P6173639218034151889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A245030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018528.P6173639218034151889

/-! ## A018528.P7509571832294920740

`filter[A114334(n+1), A075897(#)]`
-/

namespace A018528.P7509571832294920740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A018528.P7509571832294920740

/-!
# A018529: Divisors of 578.

The programs for A018529, there is no canonical definition to state claims against.
-/

/-! ## A018529.P1128336721167514303

`ogf((1+2x)/(1-17x^2))`
-/

namespace A018529.P1128336721167514303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -17] n

end

end A018529.P1128336721167514303

/-!
# A018531: Divisors of 582.

The programs for A018531, there is no canonical definition to state claims against.
-/

/-! ## A018531.P11899594436901918161

`A071786(A018474(n+1))`
-/

namespace A018531.P11899594436901918161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018474 (n + 1)).toNat

end

end A018531.P11899594436901918161

/-! ## A018531.P13111829408746202417

`A160102(A018448(n+1))`
-/

namespace A018531.P13111829408746202417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018448 (n + 1)).toNat

end

end A018531.P13111829408746202417

/-! ## A018531.P5513326568784299737

`A332808(A018546(n+1))`
-/

namespace A018531.P5513326568784299737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018546 (n + 1)).toNat

end

end A018531.P5513326568784299737

/-! ## A018531.P2353750105146218015

`∏{p}[A004729(n), A238003(#)]`
-/

namespace A018531.P2353750105146218015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A238003 p

end

end A018531.P2353750105146218015

/-!
# A018532: Divisors of 584.

The programs for A018532, there is no canonical definition to state claims against.
-/

/-! ## A018532.P11052309969498964521

`A292381(A007910(n))`
-/

namespace A018532.P11052309969498964521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292381 (A007910 n).toNat

end

end A018532.P11052309969498964521

/-! ## A018532.P7346669492863158182

`A231550(A018523(n+1))`
-/

namespace A018532.P7346669492863158182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A018523 (n + 1)).toNat

end

end A018532.P7346669492863158182

/-! ## A018532.P15959708568929273439

`A269172(A018605(n+1))`
-/

namespace A018532.P15959708568929273439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A018605 (n + 1)).toNat

end

end A018532.P15959708568929273439

/-! ## A018532.P9461710792202773352

`A332213(A018473(n+1))`
-/

namespace A018532.P9461710792202773352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018473 (n + 1)).toNat

end

end A018532.P9461710792202773352

/-!
# A018533: Divisors of 585.

The programs for A018533, there is no canonical definition to state claims against.
-/

/-! ## A018533.P5509991642345260854

`A332808(A018486(n+1))`
-/

namespace A018533.P5509991642345260854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018486 (n + 1)).toNat

end

end A018533.P5509991642345260854

/-! ## A018533.P6892348082817451232

`A332212(A261072(n+1))`
-/

namespace A018533.P6892348082817451232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A261072 (n + 1)).toNat

end

end A018533.P6892348082817451232

/-! ## A018533.P3184876557411802937

`A348746(A344826(n+1))`
-/

namespace A018533.P3184876557411802937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348746 (A344826 (n + 1)).toNat

end

end A018533.P3184876557411802937

/-! ## A018533.P7744982755488920199

`record[A242603(A003524(n+1))]`
-/

namespace A018533.P7744982755488920199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (A003524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018533.P7744982755488920199

/-!
# A018534: Divisors of 588.

The programs for A018534, there is no canonical definition to state claims against.
-/

/-! ## A018534.P12207711134847049219

`A235487(A018635(n+1))`
-/

namespace A018534.P12207711134847049219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A018635 (n + 1)).toNat

end

end A018534.P12207711134847049219

/-! ## A018534.P14081864739290036987

`A235487(A029744(comp[18*n]))`
-/

namespace A018534.P14081864739290036987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 (A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A018534.P14081864739290036987

/-! ## A018534.P11795750973215156876

`record[gcd(n+1, A135453(A017185(n)))]`
-/

namespace A018534.P11795750973215156876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A135453 (A017185 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018534.P11795750973215156876

/-! ## A018534.P10483840127105355410

`record[gcd(A003602(n+1), A158546(n))]`
-/

namespace A018534.P10483840127105355410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003602 (n + 1)) (A158546 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018534.P10483840127105355410

/-! ## A018534.P9878799618606545141

`record[gcd(A008619(n), A033428(7*n))]`
-/

namespace A018534.P9878799618606545141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A033428 (7 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018534.P9878799618606545141

/-!
# A018535: Divisors of 590.

The programs for A018535, there is no canonical definition to state claims against.
-/

/-! ## A018535.P12401937707197513909

`A332808(A018549(n+1))`
-/

namespace A018535.P12401937707197513909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018549 (n + 1)).toNat

end

end A018535.P12401937707197513909

/-! ## A018535.P14707927703406931549

`∏{p}[A019565(n), A084528(#)]`
-/

namespace A018535.P14707927703406931549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A084528 p

end

end A018535.P14707927703406931549

/-! ## A018535.P16789471352935153784

`∏{p}[A050614(n), A123499(#)]`
-/

namespace A018535.P16789471352935153784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A123499 p

end

end A018535.P16789471352935153784

/-! ## A018535.P5374672088143185006

`∏{p}[A001317(n), A327516(#)]`
-/

namespace A018535.P5374672088143185006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A327516 p

end

end A018535.P5374672088143185006

/-!
# A018536: Divisors of 592.

The programs for A018536, there is no canonical definition to state claims against.
-/

/-! ## A018536.P14672618347411155402

`ogf((1+5x^5)/(1-2x))`
-/

namespace A018536.P14672618347411155402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 5] [1, -2] n

end

end A018536.P14672618347411155402

/-! ## A018536.P11273570887636183069

`n*val(n, 5)+2*a(n-1)` with `a(0)=1`
-/

namespace A018536.P11273570887636183069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * SequenceMachineLib.valuation n 5 + 2 * a (n - 1)

end

end A018536.P11273570887636183069

/-! ## A018536.P4834985221887847037

`record[gcd(2^floor(log2(n+1))+n, 37*n)]`
-/

namespace A018536.P4834985221887847037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ Nat.log 2 (n + 1) + n) (37 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018536.P4834985221887847037

/-! ## A018536.P3838975384160525578

`A340978(n+7)+2*a(n-1)` with `a(0)=1`
-/

namespace A018536.P3838975384160525578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A340978 (n + 7) + 2 * a (n - 1)

end

end A018536.P3838975384160525578

/-!
# A018537: Divisors of 594.

The programs for A018537, there is no canonical definition to state claims against.
-/

/-! ## A018537.P2725367824875033033

`A235027(A018599(n+1))`
-/

namespace A018537.P2725367824875033033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018599 (n + 1)).toNat

end

end A018537.P2725367824875033033

/-! ## A018537.P4347130436895494968

`A052126(11*A018599(n+1))`
-/

namespace A018537.P4347130436895494968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (11 * A018599 (n + 1)).toNat

end

end A018537.P4347130436895494968

/-! ## A018537.P12631418915600538304

`A052126(lcm(11, A018599(n+1)))`
-/

namespace A018537.P12631418915600538304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.lcm 11 (A018599 (n + 1)))

end

end A018537.P12631418915600538304

/-! ## A018537.P6886705238698411479

`∏{p}[A018687(n+1), A005599(#)]`
-/

namespace A018537.P6886705238698411479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005599 p

end

end A018537.P6886705238698411479

/-! ## A018537.P4618293036879721412

`∏{p}[A018687(n+1), A066530(#)]`
-/

namespace A018537.P4618293036879721412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066530 p

end

end A018537.P4618293036879721412

/-!
# A018538: Divisors of 595.

The programs for A018538, there is no canonical definition to state claims against.
-/

/-! ## A018538.P13479799664188723466

`record[gcd(ceil(n*ϕ^17), A065330(n+1))]`
-/

namespace A018538.P13479799664188723466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈(n : ℝ) * Real.goldenRatio ^ 17⌉ (A065330 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018538.P13479799664188723466

/-! ## A018538.P14133532060374043479

`record[gcd(((2*n+1)*(n+1))²-C(2*n, 2)², A155883(3*n+1))]`
-/

namespace A018538.P14133532060374043479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((2 * n + 1) * (n + 1)) ^ 2 : ℤ) - (Nat.choose (2 * n) 2 ^ 2 : ℤ)) (A155883 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018538.P14133532060374043479

/-! ## A018538.P3019683508166941198

`∏{p}[A161715(n), A042988(#)]`
-/

namespace A018538.P3019683508166941198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A042988 p

end

end A018538.P3019683508166941198

/-! ## A018538.P11533989248321624336

`∏{p}[A161715(n), A065557(#)]`
-/

namespace A018538.P11533989248321624336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A065557 p

end

end A018538.P11533989248321624336

/-!
# A018539: Divisors of 596.

The programs for A018539, there is no canonical definition to state claims against.
-/

/-! ## A018539.P3610317097290218109

`record[gcd(9*n+5, A055417(n))]`
-/

namespace A018539.P3610317097290218109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * n + 5 : ℤ) (A055417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018539.P3610317097290218109

/-!
# A018540: Divisors of 598.

The programs for A018540, there is no canonical definition to state claims against.
-/

/-! ## A018540.P18006495981154665326

`A332213(A018420(n+1))`
-/

namespace A018540.P18006495981154665326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A018420 (n + 1)).toNat

end

end A018540.P18006495981154665326

/-! ## A018540.P737668043506756748

`∏{p}[A018459(n+1), A040039(#)]`
-/

namespace A018540.P737668043506756748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A040039 p

end

end A018540.P737668043506756748

/-! ## A018540.P9106519509590240920

`∏{p}[A018696(n+1), A057509(#)]`
-/

namespace A018540.P9106519509590240920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A057509 p

end

end A018540.P9106519509590240920

/-! ## A018540.P9246618044279734366

`∏{p}[A018630(n+1), A293869(#)]`
-/

namespace A018540.P9246618044279734366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A293869 p

end

end A018540.P9246618044279734366

/-!
# A018541: Divisors of 600.

The programs for A018541, there is no canonical definition to state claims against.
-/

/-! ## A018541.P13696852668241893631

`eq[50, lcm(50, A051724(n))]`
-/

namespace A018541.P13696852668241893631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 50 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018541.P13696852668241893631

/-! ## A018541.P3260301560343555129

`record[A305211(A329469(n+1))]`
-/

namespace A018541.P3260301560343555129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A329469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018541.P3260301560343555129

/-! ## A018541.P4277680407059419194

`filter[A329469(n+1), A168182(#)]`
-/

namespace A018541.P4277680407059419194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A018541.P4277680407059419194

/-! ## A018541.P3185914841930580238

`eq[gcd(30, A106621(n)), A106621(n)]`
-/

namespace A018541.P3185914841930580238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 30 (A106621 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018541.P3185914841930580238

/-! ## A018541.P11396628562788632771

`∩[A029461(n+1), A067936(n+1)]`
-/

namespace A018541.P11396628562788632771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018541.P11396628562788632771

/-!
# A018542: Divisors of 602.

The programs for A018542, there is no canonical definition to state claims against.
-/

/-! ## A018542.P13654665811594324834

`A191614(or(1, n)+n)`
-/

namespace A018542.P13654665811594324834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191614 (Nat.lor 1 n + n)

end

end A018542.P13654665811594324834

/-! ## A018542.P13001704383644395906

`∏{p}[A018526(n+1), or(2, #)]`
-/

namespace A018542.P13001704383644395906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018542.P13001704383644395906

/-! ## A018542.P6889523220290161675

`A191614(Δ[n²]-n%2)`
-/

namespace A018542.P6889523220290161675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191614 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A018542.P6889523220290161675

/-! ## A018542.P9435402461483228909

`A055653(7*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A018542.P9435402461483228909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A055653 (7 * a (n - 2)).toNat

end

end A018542.P9435402461483228909

/-!
# A018543: Divisors of 603.

The programs for A018543, there is no canonical definition to state claims against.
-/

/-! ## A018543.P8070228512503147115

`A113116(n+1)%(3^(n+1))`
-/

namespace A018543.P8070228512503147115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113116 (n + 1)) (3 ^ (n + 1) : ℤ)

end

end A018543.P8070228512503147115

/-!
# A018544: Divisors of 604.

The programs for A018544, there is no canonical definition to state claims against.
-/

/-! ## A018544.P10884571674854475484

`A269172(A018608(n+1))`
-/

namespace A018544.P10884571674854475484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A018608 (n + 1)).toNat

end

end A018544.P10884571674854475484

/-!
# A018545: Divisors of 605.

The programs for A018545, there is no canonical definition to state claims against.
-/

/-! ## A018545.P14880931699461510394

`ogf((1+5x)/(1-11x^2))`
-/

namespace A018545.P14880931699461510394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 0, -11] n

end

end A018545.P14880931699461510394

/-!
# A018546: Divisors of 606.

The programs for A018546, there is no canonical definition to state claims against.
-/

/-! ## A018546.P9720457950075597469

`A056142(A050291(n))`
-/

namespace A018546.P9720457950075597469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A050291 n).toNat

end

end A018546.P9720457950075597469

/-! ## A018546.P2630108132039304810

`A051022(A018613(n+1))`
-/

namespace A018546.P2630108132039304810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A018613 (n + 1)).toNat

end

end A018546.P2630108132039304810

/-! ## A018546.P1414472751396357302

`A003968(A085935(n+1))`
-/

namespace A018546.P1414472751396357302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A085935 (n + 1)).toNat

end

end A018546.P1414472751396357302

/-! ## A018546.P7839925227379367221

`A051022(A082616(n+1))`
-/

namespace A018546.P7839925227379367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A082616 (n + 1)).toNat

end

end A018546.P7839925227379367221

/-!
# A018547: Divisors of 608.

The programs for A018547, there is no canonical definition to state claims against.
-/

/-! ## A018547.P5382907466645287088

`eq[lcm(32, n)/32, A035382(lcm(32, n)/32)]`
-/

namespace A018547.P5382907466645287088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 32 n : ℚ) / 32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (SequenceMachineLib.roundAway ((Nat.lcm 32 n : ℚ) / 32)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A018547.P5382907466645287088

/-! ## A018547.P6995090963471891943

`A091203(A018763(n+1))`
-/

namespace A018547.P6995090963471891943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A018763 (n + 1)).toNat

end

end A018547.P6995090963471891943

/-! ## A018547.P5760221539686963182

`A231550(A018510(n+1))`
-/

namespace A018547.P5760221539686963182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A018510 (n + 1)).toNat

end

end A018547.P5760221539686963182

/-! ## A018547.P1787506373344573628

`A233511(A018618(n+1))`
-/

namespace A018547.P1787506373344573628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233511 (A018618 (n + 1)).toNat

end

end A018547.P1787506373344573628

/-! ## A018547.P3101712163312218754

`∪[A320425(n+1), A016793(n)]`
-/

namespace A018547.P3101712163312218754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018547.P3101712163312218754

/-!
# A018548: Divisors of 609.

The programs for A018548, there is no canonical definition to state claims against.
-/

/-! ## A018548.P14021528164205974083

`record[gcd(or(1, n), A294286(9*n+2))]`
-/

namespace A018548.P14021528164205974083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 1 n : ℤ) (A294286 (9 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018548.P14021528164205974083

/-! ## A018548.P12004534150075135273

`record[gcd((10*n+5)²-16, A246277(n+3))]`
-/

namespace A018548.P12004534150075135273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((10 * n + 5) ^ 2 : ℤ) - 16) (A246277 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018548.P12004534150075135273

/-! ## A018548.P16933254788132260895

`A160102(A001317(n))`
-/

namespace A018548.P16933254788132260895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A001317 n).toNat

end

end A018548.P16933254788132260895

/-! ## A018548.P17326814588668994980

`A160102(A004729(n))`
-/

namespace A018548.P17326814588668994980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A004729 n).toNat

end

end A018548.P17326814588668994980

/-!
# A018549: Divisors of 610.

The programs for A018549, there is no canonical definition to state claims against.
-/

/-! ## A018549.P12867048931506284637

`A133021(n+50)`
-/

namespace A018549.P12867048931506284637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 50)

end

end A018549.P12867048931506284637

/-! ## A018549.P4538265870572029321

`A160102(A018403(n+1))`
-/

namespace A018549.P4538265870572029321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018403 (n + 1)).toNat

end

end A018549.P4538265870572029321

/-! ## A018549.P7821096023331625079

`A186101(A018719(n+1))`
-/

namespace A018549.P7821096023331625079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A018719 (n + 1)).toNat

end

end A018549.P7821096023331625079

/-! ## A018549.P16090595297020999422

`A332808(A018535(n+1))`
-/

namespace A018549.P16090595297020999422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018535 (n + 1)).toNat

end

end A018549.P16090595297020999422

/-!
# A018550: Divisors of 612.

The programs for A018550, there is no canonical definition to state claims against.
-/

/-! ## A018550.P5268342643111714327

`eq[34, lcm(34, A106619(n))]`
-/

namespace A018550.P5268342643111714327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 34 (A106619 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018550.P5268342643111714327

/-! ## A018550.P14465250411673527698

`eq[51, lcm(51, A051724(n))]`
-/

namespace A018550.P14465250411673527698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 51 (A051724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018550.P14465250411673527698

/-! ## A018550.P6049498358071130661

`eq[gcd(36, n), A106618(n)]`
-/

namespace A018550.P6049498358071130661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 36 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018550.P6049498358071130661

/-! ## A018550.P15360450029271461216

`record[gcd(A233583(n+2), A269620(n+5))]`
-/

namespace A018550.P15360450029271461216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A233583 (n + 2)) (A269620 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018550.P15360450029271461216

/-! ## A018550.P12472087394676385863

`record[gcd(17*A016742(n), A003602(n+2))]`
-/

namespace A018550.P12472087394676385863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (17 * A016742 n) (A003602 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018550.P12472087394676385863

/-!
# A018551: Divisors of 615.

The programs for A018551, there is no canonical definition to state claims against.
-/

/-! ## A018551.P1738194988840701673

`∏{p}[A019565(n), A001775(#)]`
-/

namespace A018551.P1738194988840701673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001775 p

end

end A018551.P1738194988840701673

/-! ## A018551.P5186570479116420170

`∏{p}[A050614(n), A007015(#)]`
-/

namespace A018551.P5186570479116420170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007015 p

end

end A018551.P5186570479116420170

/-! ## A018551.P10631025218235581998

`∏{p}[A019565(n), A192241(#)]`
-/

namespace A018551.P10631025218235581998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A192241 p

end

end A018551.P10631025218235581998

/-! ## A018551.P593678914557558804

`∏{p}[A019565(n), A235395(#)]`
-/

namespace A018551.P593678914557558804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A235395 p

end

end A018551.P593678914557558804

/-!
# A018552: Divisors of 616.

The programs for A018552, there is no canonical definition to state claims against.
-/

/-! ## A018552.P5556136855947075843

`A235027(A018614(n+1))`
-/

namespace A018552.P5556136855947075843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018614 (n + 1)).toNat

end

end A018552.P5556136855947075843

/-! ## A018552.P12960407884389946659

`∏{p}[A194359(n), A039672(#)]`
-/

namespace A018552.P12960407884389946659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A039672 p

end

end A018552.P12960407884389946659

/-! ## A018552.P16836588256837346636

`∏{p}[A194359(n), A280741(#)]`
-/

namespace A018552.P16836588256837346636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A280741 p

end

end A018552.P16836588256837346636

/-! ## A018552.P5367868880079322737

`record[A106616(A178864(n+1))]`
-/

namespace A018552.P5367868880079322737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A178864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018552.P5367868880079322737

/-! ## A018552.P14513457380395871841

`record[gcd(A106466(n), A157369(n+1))]`
-/

namespace A018552.P14513457380395871841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106466 n) (A157369 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018552.P14513457380395871841

/-!
# A018553: Divisors of 618.

The programs for A018553, there is no canonical definition to state claims against.
-/

/-! ## A018553.P11345167314021600637

`record[∏{p}[n, A089132(#)]]`
-/

namespace A018553.P11345167314021600637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A089132 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018553.P11345167314021600637

/-! ## A018553.P10167829577789461027

`floor(A018506(n+1)/cot(4))`
-/

namespace A018553.P10167829577789461027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018506 (n + 1) : ℝ) / Real.cot (4 : ℝ)⌋

end

end A018553.P10167829577789461027

/-! ## A018553.P2416335024938128605

`A357978(A050614(n))`
-/

namespace A018553.P2416335024938128605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357978 (A050614 n).toNat

end

end A018553.P2416335024938128605

/-! ## A018553.P1607870499477494085

`A063659(A018666(n+1))`
-/

namespace A018553.P1607870499477494085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A018666 (n + 1)).toNat

end

end A018553.P1607870499477494085

/-!
# A018554: Divisors of 620.

The programs for A018554, there is no canonical definition to state claims against.
-/

/-! ## A018554.P9366930795865809851

`∩[A057762(n+1), A235028(n+1)]`
-/

namespace A018554.P9366930795865809851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018554.P9366930795865809851

/-! ## A018554.P8252260238182884709

`∩[A057762(n+1), A326669(n+1)]`
-/

namespace A018554.P8252260238182884709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018554.P8252260238182884709

/-!
# A018555: Divisors of 621.

The programs for A018555, there is no canonical definition to state claims against.
-/

/-! ## A018555.P9823820938126878094

`A263272(A018466(n+1))`
-/

namespace A018555.P9823820938126878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A018466 (n + 1)).toNat

end

end A018555.P9823820938126878094

/-! ## A018555.P15401954842872184901

`∪[A036215(n), A232757(n)]`
-/

namespace A018555.P15401954842872184901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232757 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018555.P15401954842872184901

/-! ## A018555.P10486231906728568770

`record[gcd(A060693(n), A094200(n))]`
-/

namespace A018555.P10486231906728568770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060693 n) (A094200 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018555.P10486231906728568770

/-! ## A018555.P14010850800246144316

`∏{p}[A018709(n+1), A003558(#)]`
-/

namespace A018555.P14010850800246144316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003558 p

end

end A018555.P14010850800246144316

/-!
# A018556: Divisors of 624.

The programs for A018556, there is no canonical definition to state claims against.
-/

/-! ## A018556.P12625037341912130114

`eq[gcd(48, n), A106614(n)]`
-/

namespace A018556.P12625037341912130114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 48 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018556.P12625037341912130114

/-! ## A018556.P13591074806264075447

`eq[1, A016972(n)%A008706(n)]`
-/

namespace A018556.P13591074806264075447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016972 n) (A008706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018556.P13591074806264075447

/-! ## A018556.P1969060723758470851

`record[gcd(A008620(n), A158383(n+1))]`
-/

namespace A018556.P1969060723758470851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008620 n) (A158383 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018556.P1969060723758470851

/-! ## A018556.P1972355921381547112

`record[gcd(A004151(n+1), A304837(n+1))]`
-/

namespace A018556.P1972355921381547112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004151 (n + 1)) (A304837 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018556.P1972355921381547112

/-! ## A018556.P12321414202234338075

`∪[lt[(48*n)%(n+1), 1]+1, A008595(lt[(48*n)%(n+1), 1]+1)]`
-/

namespace A018556.P12321414202234338075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n % (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n % (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 (SequenceMachineLib.nth (fun j => f5 j < f6 j) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A018556.P12321414202234338075

/-!
# A018557: Divisors of 627.

The programs for A018557, there is no canonical definition to state claims against.
-/

/-! ## A018557.P880458891281056386

`∏{p}[A018420(n+1), or(3, #)]`
-/

namespace A018557.P880458891281056386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018420 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 3 p

end

end A018557.P880458891281056386

/-! ## A018557.P11938239753026214584

`A143275(A018345(n+1))`
-/

namespace A018557.P11938239753026214584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143275 (A018345 (n + 1)).toNat

end

end A018557.P11938239753026214584

/-! ## A018557.P3604387782191924669

`A332808(A018621(n+1))`
-/

namespace A018557.P3604387782191924669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018621 (n + 1)).toNat

end

end A018557.P3604387782191924669

/-! ## A018557.P750420158028114198

`∏{p}[A161715(n), A229607(#)]`
-/

namespace A018557.P750420158028114198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A229607 p

end

end A018557.P750420158028114198

/-!
# A018558: Divisors of 628.

The programs for A018558, there is no canonical definition to state claims against.
-/

/-! ## A018558.P9947514817711344255

`or(2^n, A018539(n+1))`
-/

namespace A018558.P9947514817711344255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018539 (n + 1))

end

end A018558.P9947514817711344255

/-!
# A018559: Divisors of 630.

The programs for A018559, there is no canonical definition to state claims against.
-/

/-! ## A018559.P7321612948139488995

`eq[gcd(35, n), A106619(n)]`
-/

namespace A018559.P7321612948139488995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 35 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018559.P7321612948139488995

/-! ## A018559.P15700630647914542234

`record[A032742(A178877(n+1))]`
-/

namespace A018559.P15700630647914542234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A178877 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018559.P15700630647914542234

/-! ## A018559.P5239769668358882614

`record[A054576(A165412(n+1))]`
-/

namespace A018559.P5239769668358882614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A165412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018559.P5239769668358882614

/-! ## A018559.P3930407802477878392

`record[A065883(A178858(n+1))]`
-/

namespace A018559.P3930407802477878392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A178858 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018559.P3930407802477878392

/-! ## A018559.P4756296282929570116

`record[A065883(A178860(n+1))]`
-/

namespace A018559.P4756296282929570116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A178860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018559.P4756296282929570116

/-!
# A018560: Divisors of 632.

The programs for A018560, there is no canonical definition to state claims against.
-/

/-! ## A018560.P12066948043740199334

`record[gcd(13*n+5, A100182(n+1))]`
-/

namespace A018560.P12066948043740199334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (13 * n + 5 : ℤ) (A100182 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018560.P12066948043740199334

/-! ## A018560.P3939436053372522152

`A071786(A018640(n+1))`
-/

namespace A018560.P3939436053372522152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A018640 (n + 1)).toNat

end

end A018560.P3939436053372522152

/-! ## A018560.P7306240071689453943

`A235201(A018673(n+1))`
-/

namespace A018560.P7306240071689453943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018673 (n + 1)).toNat

end

end A018560.P7306240071689453943

/-! ## A018560.P17958707994418786368

`A257174(A018474(n+1))`
-/

namespace A018560.P17958707994418786368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A018474 (n + 1)).toNat

end

end A018560.P17958707994418786368

/-!
# A018561: Divisors of 636.

The programs for A018561, there is no canonical definition to state claims against.
-/

/-! ## A018561.P2616182119665625731

`A245453(A018369(n+1))`
-/

namespace A018561.P2616182119665625731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A018369 (n + 1)).toNat

end

end A018561.P2616182119665625731

/-! ## A018561.P9088936729567385784

`A332808(A018521(n+1))`
-/

namespace A018561.P9088936729567385784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018521 (n + 1)).toNat

end

end A018561.P9088936729567385784

/-! ## A018561.P4777863398921825208

`record[gcd(A008619(n), A157758(n+1))]`
-/

namespace A018561.P4777863398921825208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A157758 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018561.P4777863398921825208

/-! ## A018561.P14616422642158208442

`2*A018521(n+1)-A018484(n+1)`
-/

namespace A018561.P14616422642158208442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018521 (n + 1) - A018484 (n + 1)

end

end A018561.P14616422642158208442

/-! ## A018561.P15849600344127665654

`(A018602(n+1)+A018521(n+1))/2`
-/

namespace A018561.P15849600344127665654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018602 (n + 1) + A018521 (n + 1) : ℚ) / 2

end

end A018561.P15849600344127665654

/-!
# A018562: Divisors of 637.

The programs for A018562, there is no canonical definition to state claims against.
-/

/-! ## A018562.P7242627940502282410

`a(n-2)*a(n-3)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=49`
-/

namespace A018562.P7242627940502282410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 13, 49] fun n a =>
  a (n - 2) * a (n - 3)

end

end A018562.P7242627940502282410

/-!
# A018563: Divisors of 638.

The programs for A018563, there is no canonical definition to state claims against.
-/

/-! ## A018563.P6956249218031983050

`record[gcd(7*n+12, A168351(3*n+1))]`
-/

namespace A018563.P6956249218031983050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * n + 12 : ℤ) (A168351 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018563.P6956249218031983050

/-! ## A018563.P16330132220599019273

`record[A290099(A324653(n))]`
-/

namespace A018563.P16330132220599019273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (A324653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018563.P16330132220599019273

/-! ## A018563.P2143821588420368807

`A160102(A018349(n+1))`
-/

namespace A018563.P2143821588420368807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018349 (n + 1)).toNat

end

end A018563.P2143821588420368807

/-! ## A018563.P6402858255118023955

`A222266(A296907(n+2))`
-/

namespace A018563.P6402858255118023955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222266 (A296907 (n + 2)).toNat

end

end A018563.P6402858255118023955

/-!
# A018564: Divisors of 639.

The programs for A018564, there is no canonical definition to state claims against.
-/

/-! ## A018564.P284081544708647702

`record[gcd((10*n+7)², A017473(n+2))]`
-/

namespace A018564.P284081544708647702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((10 * n + 7) ^ 2 : ℤ) (A017473 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018564.P284081544708647702

/-!
# A018565: Divisors of 640.

The programs for A018565, there is no canonical definition to state claims against.
-/

/-! ## A018565.P18411984211929884509

`eq[1, A227140(lcm(20, n)/20)]`
-/

namespace A018565.P18411984211929884509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((Nat.lcm 20 n : ℚ) / 20)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018565.P18411984211929884509

/-! ## A018565.P10677605866255080496

`A094958(record[A194083(n)])`
-/

namespace A018565.P10677605866255080496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018565.P10677605866255080496

/-! ## A018565.P14116341195245453752

`A023717(A018338(n+1))`
-/

namespace A018565.P14116341195245453752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A018338 (n + 1)).toNat

end

end A018565.P14116341195245453752

/-! ## A018565.P18113726851079190052

`A072010(A018708(n+1))`
-/

namespace A018565.P18113726851079190052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A018708 (n + 1)).toNat

end

end A018565.P18113726851079190052

/-! ## A018565.P17418310295113631028

`A094958(A032964(n+1))`
-/

namespace A018565.P17418310295113631028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (A032964 (n + 1)).toNat

end

end A018565.P17418310295113631028

/-!
# A018566: Divisors of 642.

The programs for A018566, there is no canonical definition to state claims against.
-/

/-! ## A018566.P7008216966465121202

`A055643(A018434(n+1))`
-/

namespace A018566.P7008216966465121202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A018434 (n + 1)).toNat

end

end A018566.P7008216966465121202

/-! ## A018566.P5329443965023774520

`A116912(A018553(n+1))`
-/

namespace A018566.P5329443965023774520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116912 (A018553 (n + 1)).toNat

end

end A018566.P5329443965023774520

/-! ## A018566.P17935738408476222351

`A332808(record[∏{p}[n, A089132(#)]])`
-/

namespace A018566.P17935738408476222351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A089132 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A018566.P17935738408476222351

/-! ## A018566.P6883540369442591168

`∏{p}[A018474(n+1), A072774(#)]`
-/

namespace A018566.P6883540369442591168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072774 p

end

end A018566.P6883540369442591168

/-!
# A018567: Divisors of 644.

The programs for A018567, there is no canonical definition to state claims against.
-/

/-! ## A018567.P7809465664975255325

`eq[92, lcm(92, A106608(n))]`
-/

namespace A018567.P7809465664975255325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  92

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 92 (A106608 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018567.P7809465664975255325

/-! ## A018567.P7293060581952531286

`record[gcd(lcm(99, n+1)/99, A157960(n+5))]`
-/

namespace A018567.P7293060581952531286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.lcm 99 (n + 1) : ℚ) / 99)) (A157960 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018567.P7293060581952531286

/-! ## A018567.P16120016754731822651

`A254926(A018618(n+1))`
-/

namespace A018567.P16120016754731822651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254926 (A018618 (n + 1)).toNat

end

end A018567.P16120016754731822651

/-! ## A018567.P4348941309230396775

`∪[2*A018392(n+1), A018392(n+1)]`
-/

namespace A018567.P4348941309230396775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018567.P4348941309230396775

/-!
# A018568: Divisors of 645.

The programs for A018568, there is no canonical definition to state claims against.
-/

/-! ## A018568.P14175129289654228074

`A003536(A288784(n))`
-/

namespace A018568.P14175129289654228074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (A288784 n).toNat

end

end A018568.P14175129289654228074

/-! ## A018568.P7505653580846458370

`A003961(A018354(n+1))`
-/

namespace A018568.P7505653580846458370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018354 (n + 1)).toNat

end

end A018568.P7505653580846458370

/-! ## A018568.P6551440896064762998

`A003536(A181312(n+1))`
-/

namespace A018568.P6551440896064762998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (A181312 (n + 1)).toNat

end

end A018568.P6551440896064762998

/-! ## A018568.P16247159678071067865

`A003536(A249685(n+1))`
-/

namespace A018568.P16247159678071067865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003536 (A249685 (n + 1)).toNat

end

end A018568.P16247159678071067865

/-!
# A018569: Divisors of 646.

The programs for A018569, there is no canonical definition to state claims against.
-/

/-! ## A018569.P1390879160655839651

`A235201(A018375(n+1))`
-/

namespace A018569.P1390879160655839651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018375 (n + 1)).toNat

end

end A018569.P1390879160655839651

/-! ## A018569.P599602109640971732

`A075861(2*A018750(n+1))`
-/

namespace A018569.P599602109640971732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (2 * A018750 (n + 1)).toNat

end

end A018569.P599602109640971732

/-! ## A018569.P179966916288671213

`A075861(lcm(2, A018750(n+1)))`
-/

namespace A018569.P179966916288671213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075861 (Int.lcm 2 (A018750 (n + 1)))

end

end A018569.P179966916288671213

/-! ## A018569.P6925409424696005586

`∏{p}[A018375(n+1), A048680(#)]`
-/

namespace A018569.P6925409424696005586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A048680 p

end

end A018569.P6925409424696005586

/-!
# A018570: Divisors of 648.

The programs for A018570, there is no canonical definition to state claims against.
-/

/-! ## A018570.P2155515076671928521

`eq[gcd(81, n), A106609(n)]`
-/

namespace A018570.P2155515076671928521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 81 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018570.P2155515076671928521

/-! ## A018570.P7232369407941985232

`record[gcd((n+1)/10^val(n+1, 10), A045991(8*n+17))]`
-/

namespace A018570.P7232369407941985232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A045991 (8 * n + 17))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018570.P7232369407941985232

/-! ## A018570.P7264524030663933818

`record[A065331(A166535(n+1))]`
-/

namespace A018570.P7264524030663933818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A166535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018570.P7264524030663933818

/-! ## A018570.P10862407735903225157

`eq[2, lcm(2, A106619(A106619(n)))]`
-/

namespace A018570.P10862407735903225157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A106619 (A106619 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018570.P10862407735903225157

/-! ## A018570.P9946528302212214439

`filter[A166535(n+1), A065333(#)]`
-/

namespace A018570.P9946528302212214439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A018570.P9946528302212214439

/-!
# A018571: Divisors of 650.

The programs for A018571, there is no canonical definition to state claims against.
-/

/-! ## A018571.P18318020949441536122

`record[gcd(n+3, C(A167499(n+8), 2))]`
-/

namespace A018571.P18318020949441536122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.choose (A167499 (n + 8)).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018571.P18318020949441536122

/-! ## A018571.P3962597855079187927

`record[A267099(A018559(n+1))]`
-/

namespace A018571.P3962597855079187927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018571.P3962597855079187927

/-! ## A018571.P4564822503369017094

`record[A267099(A296762(n+1))]`
-/

namespace A018571.P4564822503369017094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A296762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018571.P4564822503369017094

/-! ## A018571.P6721262648511371459

`∩[A008784(n+1), A395852(n+1)]`
-/

namespace A018571.P6721262648511371459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018571.P6721262648511371459

/-! ## A018571.P1033237882427512542

`∩[A099477(n+1), A395852(n+1)]`
-/

namespace A018571.P1033237882427512542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018571.P1033237882427512542

/-!
# A018572: Divisors of 651.

The programs for A018572, there is no canonical definition to state claims against.
-/

/-! ## A018572.P8820773556583796382

`A391373(2^n)`
-/

namespace A018572.P8820773556583796382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391373 (2 ^ n)

end

end A018572.P8820773556583796382

/-! ## A018572.P233132051750865048

`A046528(∑[floor(n/3)!])`
-/

namespace A018572.P233132051750865048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018572.P233132051750865048

/-! ## A018572.P2777052170354008360

`A046528(∑[∑[char[6*n]]])`
-/

namespace A018572.P2777052170354008360
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A018572.P2777052170354008360

/-! ## A018572.P9433267828207976991

`∏{p}[A018470(n+1), or(2, #)]`
-/

namespace A018572.P9433267828207976991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 2 p

end

end A018572.P9433267828207976991

/-!
# A018573: Divisors of 652.

The programs for A018573, there is no canonical definition to state claims against.
-/

/-! ## A018573.P970878785363971542

`2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=163`
-/

namespace A018573.P970878785363971542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 163] fun n a =>
  2 * a (n - 1)

end

end A018573.P970878785363971542

/-!
# A018574: Divisors of 654.

The programs for A018574, there is no canonical definition to state claims against.
-/

/-! ## A018574.P5340557414011377332

`A063659(A018694(n+1))`
-/

namespace A018574.P5340557414011377332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A018694 (n + 1)).toNat

end

end A018574.P5340557414011377332

/-! ## A018574.P16198498223795235224

`A160102(A018488(n+1))`
-/

namespace A018574.P16198498223795235224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018488 (n + 1)).toNat

end

end A018574.P16198498223795235224

/-! ## A018574.P1838743505919085387

`A332808(A018588(n+1))`
-/

namespace A018574.P1838743505919085387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018588 (n + 1)).toNat

end

end A018574.P1838743505919085387

/-! ## A018574.P2026168944376761055

`∏{p}[A001317(n), A179492(#)]`
-/

namespace A018574.P2026168944376761055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A179492 p

end

end A018574.P2026168944376761055

/-!
# A018575: Divisors of 656.

The programs for A018575, there is no canonical definition to state claims against.
-/

/-! ## A018575.P4966586353575666528

`ogf((1+9x^5)/(1-2x))`
-/

namespace A018575.P4966586353575666528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 9] [1, -2] n

end

end A018575.P4966586353575666528

/-! ## A018575.P12502784810977779912

`2^n+9*A001949(n)`
-/

namespace A018575.P12502784810977779912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 9 * A001949 n

end

end A018575.P12502784810977779912

/-! ## A018575.P14771755449965608474

`2^(n+1)-A018416(n+1)`
-/

namespace A018575.P14771755449965608474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A018416 (n + 1)

end

end A018575.P14771755449965608474

/-! ## A018575.P10989325327024455353

`A193581(2*n)+2*a(n-1)` with `a(0)=1`
-/

namespace A018575.P10989325327024455353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193581 (2 * n) + 2 * a (n - 1)

end

end A018575.P10989325327024455353

/-! ## A018575.P16999336800263409004

`A163547(∑[A349842(n)])`
-/

namespace A018575.P16999336800263409004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018575.P16999336800263409004

/-!
# A018576: Divisors of 657.

The programs for A018576, there is no canonical definition to state claims against.
-/

/-! ## A018576.P10240221792867860276

`ceil(9^n/A004669(n))`
-/

namespace A018576.P10240221792867860276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(9 ^ n : ℚ) / (A004669 n : ℚ)⌉

end

end A018576.P10240221792867860276

/-!
# A018577: Divisors of 658.

The programs for A018577, there is no canonical definition to state claims against.
-/

/-! ## A018577.P15627001409489037879

`∏{p}[A245479(n+1), #²-2]`
-/

namespace A018577.P15627001409489037879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p ^ 2 : ℤ) - 2)

end

end A018577.P15627001409489037879

/-! ## A018577.P15757792954283139991

`A064614(A050614(n))`
-/

namespace A018577.P15757792954283139991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A050614 n).toNat

end

end A018577.P15757792954283139991

/-! ## A018577.P13837000557315969218

`A321322(A325094(n))`
-/

namespace A018577.P13837000557315969218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321322 (A325094 n).toNat

end

end A018577.P13837000557315969218

/-! ## A018577.P13794633262206847122

`A276465(∑[A070939(n)])`
-/

namespace A018577.P13794633262206847122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276465 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A018577.P13794633262206847122

/-!
# A018578: Divisors of 660.

The programs for A018578, there is no canonical definition to state claims against.
-/

/-! ## A018578.P4723343888987794692

`record[A106608(A245809(n+1))]`
-/

namespace A018578.P4723343888987794692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A245809 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018578.P4723343888987794692

/-! ## A018578.P4404874343173892684

`filter[A245809(n+1), A109720(#)]`
-/

namespace A018578.P4404874343173892684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A018578.P4404874343173892684

/-! ## A018578.P16890530623524607448

`record[gcd(n+1, A154518(A017353(n)))]`
-/

namespace A018578.P16890530623524607448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A154518 (A017353 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018578.P16890530623524607448

/-! ## A018578.P258967795956325663

`record[gcd(A028310(n), A157803(n+1))]`
-/

namespace A018578.P258967795956325663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A157803 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018578.P258967795956325663

/-! ## A018578.P6306420143119764307

`∩[A047304(n+1), A245809(n+1)]`
-/

namespace A018578.P6306420143119764307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018578.P6306420143119764307

/-!
# A018579: Divisors of 663.

The programs for A018579, there is no canonical definition to state claims against.
-/

/-! ## A018579.P664205080723018942

`record[gcd(A092286(n)+4, 1-4*n)]`
-/

namespace A018579.P664205080723018942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092286 n + 4) (1 - (4 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018579.P664205080723018942

/-! ## A018579.P2491327046505310835

`record[gcd(n*(9*n-8), A100155(n+1))]`
-/

namespace A018579.P2491327046505310835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((9 * n : ℤ) - 8)) (A100155 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018579.P2491327046505310835

/-! ## A018579.P18006213852768603531

`record[gcd(n*(12*n-2)-1, A022284(n+2))]`
-/

namespace A018579.P18006213852768603531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * ((12 * n : ℤ) - 2) - 1) (A022284 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018579.P18006213852768603531

/-! ## A018579.P17975364763103978430

`A003961(A018375(n+1))`
-/

namespace A018579.P17975364763103978430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A018375 (n + 1)).toNat

end

end A018579.P17975364763103978430

/-!
# A018580: Divisors of 664.

The programs for A018580, there is no canonical definition to state claims against.
-/

/-! ## A018580.P7663165022833010656

`or(2^n, A018507(n+1))`
-/

namespace A018580.P7663165022833010656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (A018507 (n + 1))

end

end A018580.P7663165022833010656

/-! ## A018580.P6529797501027490514

`A357975(A202907(n))`
-/

namespace A018580.P6529797501027490514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357975 (A202907 n).toNat

end

end A018580.P6529797501027490514

/-! ## A018580.P4672416493238392596

`A057889(A018658(n+1))`
-/

namespace A018580.P4672416493238392596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018658 (n + 1)).toNat

end

end A018580.P4672416493238392596

/-! ## A018580.P8769944362000885428

`A257174(A018488(n+1))`
-/

namespace A018580.P8769944362000885428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257174 (A018488 (n + 1)).toNat

end

end A018580.P8769944362000885428

/-!
# A018581: Divisors of 665.

The programs for A018581, there is no canonical definition to state claims against.
-/

/-! ## A018581.P896997323330180078

`∏{p}[A161715(n), A122853(#)]`
-/

namespace A018581.P896997323330180078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122853 p

end

end A018581.P896997323330180078

/-! ## A018581.P17507765906770284032

`∏{p}[A161715(n), A201088(#)]`
-/

namespace A018581.P17507765906770284032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A201088 p

end

end A018581.P17507765906770284032

/-! ## A018581.P13900505157440646979

`A032742(5*A018432(n+1))`
-/

namespace A018581.P13900505157440646979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (5 * A018432 (n + 1)).toNat

end

end A018581.P13900505157440646979

/-! ## A018581.P1976579594512818061

`A108738(5*A018432(n+1))`
-/

namespace A018581.P1976579594512818061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (5 * A018432 (n + 1)).toNat

end

end A018581.P1976579594512818061

/-!
# A018582: Divisors of 666.

The programs for A018582, there is no canonical definition to state claims against.
-/

/-! ## A018582.P1893171419655272217

`∪[2*A197309(n+1), A197309(n+1)]`
-/

namespace A018582.P1893171419655272217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018582.P1893171419655272217

/-!
# A018583: Divisors of 668.

The programs for A018583, there is no canonical definition to state claims against.
-/

/-! ## A018583.P16423837624140151059

`(A293877(n)-n)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018583.P16423837624140151059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (A293877 n - (n : ℤ)) * a (n - 3)

end

end A018583.P16423837624140151059

/-!
# A018584: Divisors of 670.

The programs for A018584, there is no canonical definition to state claims against.
-/

/-! ## A018584.P10929862690357816937

`A057889(A018751(n+1))`
-/

namespace A018584.P10929862690357816937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018751 (n + 1)).toNat

end

end A018584.P10929862690357816937

/-! ## A018584.P94061105383367651

`A235201(A018526(n+1))`
-/

namespace A018584.P94061105383367651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235201 (A018526 (n + 1)).toNat

end

end A018584.P94061105383367651

/-! ## A018584.P12329749117215312329

`A235486(A018453(n+1))`
-/

namespace A018584.P12329749117215312329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235486 (A018453 (n + 1)).toNat

end

end A018584.P12329749117215312329

/-! ## A018584.P1698889719290575071

`A332808(A018615(n+1))`
-/

namespace A018584.P1698889719290575071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018615 (n + 1)).toNat

end

end A018584.P1698889719290575071

/-!
# A018585: Divisors of 672.

The programs for A018585, there is no canonical definition to state claims against.
-/

/-! ## A018585.P17084372591484244847

`eq[42, lcm(42, A106617(n))]`
-/

namespace A018585.P17084372591484244847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 42 (A106617 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A018585.P17084372591484244847

/-! ## A018585.P3716108945623273451

`eq[gcd(21, n), A227140(n)]`
-/

namespace A018585.P3716108945623273451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 21 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018585.P3716108945623273451

/-! ## A018585.P11581475457504067690

`A235489(A018629(n+1))`
-/

namespace A018585.P11581475457504067690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235489 (A018629 (n + 1)).toNat

end

end A018585.P11581475457504067690

/-! ## A018585.P910706958293497732

`filter[A178860(n+1), A336923(#)]`
-/

namespace A018585.P910706958293497732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A018585.P910706958293497732

/-! ## A018585.P9540500405059624057

`record[gcd(n+1, A157363(A004768(n)))]`
-/

namespace A018585.P9540500405059624057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A157363 (A004768 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018585.P9540500405059624057

/-!
# A018586: Divisors of 675.

The programs for A018586, there is no canonical definition to state claims against.
-/

/-! ## A018586.P14110689805493714389

`A015965(A115569(n+1))`
-/

namespace A018586.P14110689805493714389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (A115569 (n + 1)).toNat

end

end A018586.P14110689805493714389

/-! ## A018586.P12979561689348232804

`A015965(A336580(n+1))`
-/

namespace A018586.P12979561689348232804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (A336580 (n + 1)).toNat

end

end A018586.P12979561689348232804

/-! ## A018586.P16543887846017388579

`A015965(A343682(n+1))`
-/

namespace A018586.P16543887846017388579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (A343682 (n + 1)).toNat

end

end A018586.P16543887846017388579

/-! ## A018586.P957601757685182409

`A015965(A343744(n+1))`
-/

namespace A018586.P957601757685182409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (A343744 (n + 1)).toNat

end

end A018586.P957601757685182409

/-! ## A018586.P10661414233596809885

`record[gcd(A003593(n+1), A013622(n))]`
-/

namespace A018586.P10661414233596809885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003593 (n + 1)) (A013622 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018586.P10661414233596809885

/-!
# A018587: Divisors of 676.

The programs for A018587, there is no canonical definition to state claims against.
-/

/-! ## A018587.P11061799648335287319

`13*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018587.P11061799648335287319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  13 * a (n - 3)

end

end A018587.P11061799648335287319

/-! ## A018587.P6819171935599069688

`eq[2, A033738(2*n)]`
-/

namespace A018587.P6819171935599069688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033738 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018587.P6819171935599069688

/-! ## A018587.P14434169898631219394

`A008595(a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A018587.P14434169898631219394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A008595 (a (n - 3)).toNat

end

end A018587.P14434169898631219394

/-! ## A018587.P15327206759604433052

`A094823(A004647(n))`
-/

namespace A018587.P15327206759604433052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A004647 n).toNat

end

end A018587.P15327206759604433052

/-! ## A018587.P14925866217310103028

`A245481(A039581(n+1))`
-/

namespace A018587.P14925866217310103028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245481 (A039581 (n + 1)).toNat

end

end A018587.P14925866217310103028

/-!
# A018588: Divisors of 678.

The programs for A018588, there is no canonical definition to state claims against.
-/

/-! ## A018588.P12017195965061585107

`record[gcd((n^3+n)/2, A000127(n+1))]`
-/

namespace A018588.P12017195965061585107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n ^ 3 + n : ℚ) / 2)) (A000127 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018588.P12017195965061585107

/-! ## A018588.P7658622876772504929

`A004185(A018646(n+1))`
-/

namespace A018588.P7658622876772504929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A018646 (n + 1)).toNat

end

end A018588.P7658622876772504929

/-! ## A018588.P2012014155572911544

`A064554(A018324(n+1))`
-/

namespace A018588.P2012014155572911544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (A018324 (n + 1)).toNat

end

end A018588.P2012014155572911544

/-! ## A018588.P1682255320299483622

`A160102(A018506(n+1))`
-/

namespace A018588.P1682255320299483622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018506 (n + 1)).toNat

end

end A018588.P1682255320299483622

/-!
# A018589: Divisors of 680.

The programs for A018589, there is no canonical definition to state claims against.
-/

/-! ## A018589.P6986492912989110418

`eq[gcd(34, A106621(n)), A106621(n)]`
-/

namespace A018589.P6986492912989110418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 34 (A106621 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018589.P6986492912989110418

/-! ## A018589.P1095770777755204684

`record[gcd(n+1, A053741(A008596(n)))]`
-/

namespace A018589.P1095770777755204684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053741 (A008596 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018589.P1095770777755204684

/-! ## A018589.P3323385327948426691

`record[gcd(A103391(n+1), A158218(n+1))]`
-/

namespace A018589.P3323385327948426691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103391 (n + 1)) (A158218 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018589.P3323385327948426691

/-! ## A018589.P4964995863679069298

`and(A018740(n+1), A239129(A018740(n+1)))`
-/

namespace A018589.P4964995863679069298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018740 (n + 1)) (A239129 (A018740 (n + 1)).toNat)

end

end A018589.P4964995863679069298

/-! ## A018589.P7346309727520619314

`or(A018565(n+1), A053165(A018565(n+1)))`
-/

namespace A018589.P7346309727520619314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018565 (n + 1)) (A053165 (A018565 (n + 1)).toNat)

end

end A018589.P7346309727520619314

/-!
# A018590: Divisors of 682.

The programs for A018590, there is no canonical definition to state claims against.
-/

/-! ## A018590.P9206545045206013717

`A072028(A018563(n+1))`
-/

namespace A018590.P9206545045206013717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072028 (A018563 (n + 1)).toNat

end

end A018590.P9206545045206013717

/-! ## A018590.P10813585163887193577

`A235027(A018657(n+1))`
-/

namespace A018590.P10813585163887193577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018657 (n + 1)).toNat

end

end A018590.P10813585163887193577

/-! ## A018590.P2801880946208179657

`A357983(A245480(n+1))`
-/

namespace A018590.P2801880946208179657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357983 (A245480 (n + 1)).toNat

end

end A018590.P2801880946208179657

/-! ## A018590.P3135458039417017948

`∏{p}[A018363(n+1), A020482(#)]`
-/

namespace A018590.P3135458039417017948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020482 p

end

end A018590.P3135458039417017948

/-!
# A018591: Divisors of 684.

The programs for A018591, there is no canonical definition to state claims against.
-/

/-! ## A018591.P11100762659482917987

`eq[gcd(76, n), A106610(n)]`
-/

namespace A018591.P11100762659482917987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 76 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018591.P11100762659482917987

/-! ## A018591.P13755345358262895798

`record[gcd((n+1)*C(4*n+2, 2), A054576(n+5))]`
-/

namespace A018591.P13755345358262895798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) * Nat.choose (4 * n + 2) 2 : ℤ) (A054576 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018591.P13755345358262895798

/-! ## A018591.P4736154214616007132

`eq[lcm(n, A344907(n+5)), A344907(n+5)]`
-/

namespace A018591.P4736154214616007132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A344907 (n + 5))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344907 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018591.P4736154214616007132

/-! ## A018591.P2116502792977041664

`∪[2*A018402(n+1), A018402(n+1)]`
-/

namespace A018591.P2116502792977041664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018591.P2116502792977041664

/-! ## A018591.P3702143802306313488

`∪[3*A018343(n+1), A018343(n+1)]`
-/

namespace A018591.P3702143802306313488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A018343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018591.P3702143802306313488

/-!
# A018592: Divisors of 686.

The programs for A018592, there is no canonical definition to state claims against.
-/

/-! ## A018592.P3285507739514013432

`or(7, n)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A018592.P3285507739514013432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 7 n * a (n - 2)

end

end A018592.P3285507739514013432

/-! ## A018592.P4512290112376721366

`(7-char[10])*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A018592.P4512290112376721366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (7 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 2)

end

end A018592.P4512290112376721366

/-! ## A018592.P16850726073453938902

`a(n-2)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=14, a(4)=49, a(5)=98, a(6)=343, a(7)=686`
-/

namespace A018592.P16850726073453938902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7, 14, 49, 98, 343, 686] fun n a =>
  a (n - 2)

end

end A018592.P16850726073453938902

/-! ## A018592.P14920595878708608401

`A123752(∑{digits}[n, #])`
-/

namespace A018592.P14920595878708608401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A018592.P14920595878708608401

/-!
# A018593: Divisors of 688.

The programs for A018593, there is no canonical definition to state claims against.
-/

/-! ## A018593.P6799627204546424199

`A091204(or(2^(n%5), 2^n))`
-/

namespace A018593.P6799627204546424199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091204 (Nat.lor (2 ^ (n % 5)) (2 ^ n))

end

end A018593.P6799627204546424199

/-! ## A018593.P6770247827548421808

`record[A364256(2^floor(log2(n+1))+n+1)]`
-/

namespace A018593.P6770247827548421808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (2 ^ Nat.log 2 (n + 1) + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018593.P6770247827548421808

/-! ## A018593.P2575879065848969665

`A140503(A025723(n))`
-/

namespace A018593.P2575879065848969665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140503 (A025723 n).toNat

end

end A018593.P2575879065848969665

/-! ## A018593.P7807696583215703840

`A191281(A084267(n))`
-/

namespace A018593.P7807696583215703840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191281 (A084267 n).toNat

end

end A018593.P7807696583215703840

/-! ## A018593.P9137906357574956760

`A263132(A025697(n))`
-/

namespace A018593.P9137906357574956760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263132 (A025697 n).toNat

end

end A018593.P9137906357574956760

/-!
# A018594: Divisors of 690.

The programs for A018594, there is no canonical definition to state claims against.
-/

/-! ## A018594.P10188393721980056911

`A235027(A018693(n+1))`
-/

namespace A018594.P10188393721980056911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018693 (n + 1)).toNat

end

end A018594.P10188393721980056911

/-! ## A018594.P4148209508985648548

`record[A160102(record[A054582(n)])]`
-/

namespace A018594.P4148209508985648548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018594.P4148209508985648548

/-! ## A018594.P6683520195740441970

`record[A160102(A018635(n+1))]`
-/

namespace A018594.P6683520195740441970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A018635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018594.P6683520195740441970

/-! ## A018594.P14620535609097000041

`record[A160102(A029744(n+1))]`
-/

namespace A018594.P14620535609097000041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A029744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018594.P14620535609097000041

/-! ## A018594.P3599679331365740577

`record[A160102(A257690(n+1))]`
-/

namespace A018594.P3599679331365740577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A257690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018594.P3599679331365740577

/-!
# A018595: Divisors of 692.

The programs for A018595, there is no canonical definition to state claims against.
-/

/-! ## A018595.P17616645103233920064

`A057889(A018611(n+1))`
-/

namespace A018595.P17616645103233920064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A018611 (n + 1)).toNat

end

end A018595.P17616645103233920064

/-!
# A018596: Divisors of 693.

The programs for A018596, there is no canonical definition to state claims against.
-/

/-! ## A018596.P4999978197684495559

`A332808(A018663(n+1))`
-/

namespace A018596.P4999978197684495559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332808 (A018663 (n + 1)).toNat

end

end A018596.P4999978197684495559

/-! ## A018596.P3363959217059061878

`A264974(A261072(n+1))`
-/

namespace A018596.P3363959217059061878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264974 (A261072 (n + 1)).toNat

end

end A018596.P3363959217059061878

/-! ## A018596.P9345406602415381102

`record[A078268(A178864(n+1))]`
-/

namespace A018596.P9345406602415381102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (A178864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018596.P9345406602415381102

/-! ## A018596.P11590306262529120207

`record[A284600(A027892(n+1))]`
-/

namespace A018596.P11590306262529120207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (A027892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018596.P11590306262529120207

/-! ## A018596.P4439715711186814783

`record[A284600(A027897(n+1))]`
-/

namespace A018596.P4439715711186814783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284600 (A027897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018596.P4439715711186814783

/-!
# A018598: Divisors of 700.

The programs for A018598, there is no canonical definition to state claims against.
-/

/-! ## A018598.P1242588863660364491

`record[gcd(A117910(n), A157363(n+1))]`
-/

namespace A018598.P1242588863660364491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117910 n) (A157363 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018598.P1242588863660364491

/-! ## A018598.P11289121019046665704

`eq[lcm(n, A027621(n+2)), A027621(n+2)]`
-/

namespace A018598.P11289121019046665704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A027621 (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027621 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A018598.P11289121019046665704

/-! ## A018598.P13742717718847848128

`record[gcd(2*A156711(n+1), A003602(n+1))]`
-/

namespace A018598.P13742717718847848128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A156711 (n + 1)) (A003602 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018598.P13742717718847848128

/-! ## A018598.P17258586287142973906

`∪[2*A018406(n+1), A018406(n+1)]`
-/

namespace A018598.P17258586287142973906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018598.P17258586287142973906

/-! ## A018598.P17976204377267738494

`∪[7*A018283(n+1), A018283(n+1)]`
-/

namespace A018598.P17976204377267738494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A018283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018598.P17976204377267738494

/-!
# A018599: Divisors of 702.

The programs for A018599, there is no canonical definition to state claims against.
-/

/-! ## A018599.P11853933885129621184

`A235027(A018537(n+1))`
-/

namespace A018599.P11853933885129621184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A018537 (n + 1)).toNat

end

end A018599.P11853933885129621184

/-! ## A018599.P15346510162456526353

`∏{p}[A018687(n+1), A343150(#)]`
-/

namespace A018599.P15346510162456526353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A343150 p

end

end A018599.P15346510162456526353

/-! ## A018599.P10896295731095930427

`record[gcd(A152271(n), A283902(n+1))]`
-/

namespace A018599.P10896295731095930427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152271 n) (A283902 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018599.P10896295731095930427

/-! ## A018599.P16193501279896622866

`record[gcd(A158643(n), A338782(n+1))]`
-/

namespace A018599.P16193501279896622866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158643 n) (A338782 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018599.P16193501279896622866

/-! ## A018599.P15349023362551396343

`∩[A062891(n+1), A395852(n+1)]`
-/

namespace A018599.P15349023362551396343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A018599.P15349023362551396343

