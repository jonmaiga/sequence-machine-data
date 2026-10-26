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
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A333600: a(n) is the greatest possible length of a list of pairwise coprime distinct positive integers in arithmetic progression with greatest element n.

The programs for A333600, there is no canonical definition to state claims against.
-/

/-! ## A333600.P11625397766138237259

`A038567(A055396(n+1)%A003865(n+1))`
-/

namespace A333600.P11625397766138237259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (Int.tmod (A055396 (n + 1)) (A003865 (n + 1))).toNat

end

end A333600.P11625397766138237259

/-! ## A333600.P2815675107461096662

`A070939(A117367(n+1)%A117332(3*n+2))`
-/

namespace A333600.P2815675107461096662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A117367 (n + 1)) (A117332 (3 * n + 2))).toNat

end

end A333600.P2815675107461096662

/-! ## A333600.P3779360310398069113

`A279048(A003961(n+1))+A200329(A000124(n))`
-/

namespace A333600.P3779360310398069113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (A003961 (n + 1)).toNat + A200329 (A000124 n).toNat

end

end A333600.P3779360310398069113

/-! ## A333600.P10452584211559530168

`A279048(A003961(n+1))+A152271(A273712(n))`
-/

namespace A333600.P10452584211559530168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (A003961 (n + 1)).toNat + A152271 (A273712 n).toNat

end

end A333600.P10452584211559530168

/-! ## A333600.P10271578052990603

`A279048(A003961(n+1))+A040365(A045533(n+1))`
-/

namespace A333600.P10271578052990603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (A003961 (n + 1)).toNat + A040365 (A045533 (n + 1)).toNat

end

end A333600.P10271578052990603

/-!
# A333601: Number of integers from 0 to the triangular number A000217(n) that cannot be represented as a difference of triangular numbers from 0 to n.

The programs for A333601, there is no canonical definition to state claims against.
-/

/-! ## A333601.P452985579091834927

`A000217(n)-A334821(n)+1`
-/

namespace A333601.P452985579091834927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A334821 n + 1

end

end A333601.P452985579091834927

/-! ## A333601.P13011079119365468661

`A000124(n)-A334821(n)`
-/

namespace A333601.P13011079119365468661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A334821 n

end

end A333601.P13011079119365468661

/-! ## A333601.P16518850299334353360

`∑[A028310(n)]-A334821(n)`
-/

namespace A333601.P16518850299334353360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A334821 n

end

end A333601.P16518850299334353360

/-! ## A333601.P11730100182699256883

`Δ[A000125(n)]-A334821(n)`
-/

namespace A333601.P11730100182699256883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A334821 n

end

end A333601.P11730100182699256883

/-! ## A333601.P14442699035374336358

`Δ[A004006(n)]-A334821(n)`
-/

namespace A333601.P14442699035374336358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A334821 n

end

end A333601.P14442699035374336358

/-! ## A333601.P14127790690107902554

`∑[A254667(n)]%A334821(n)`
-/

namespace A333601.P14127790690107902554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A334821 n)

end

end A333601.P14127790690107902554

/-! ## A333601.P11493690767494549025

`∑[A000007(n)+n]%A334821(n)`
-/

namespace A333601.P11493690767494549025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A334821 n)

end

end A333601.P11493690767494549025

/-! ## A333601.P12065471572333964939

`A007318(C(2, n))-(A334821(n)-∑[n])`
-/

namespace A333601.P12065471572333964939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) - (A334821 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A333601.P12065471572333964939

/-! ## A333601.P14188367400332170239

`A008619(A002378(n))-A334821(n)`
-/

namespace A333601.P14188367400332170239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A002378 n).toNat - A334821 n

end

end A333601.P14188367400332170239

/-!
# A333602: Number of directed Hamiltonian walks from NW to SW corners of a 6 X n grid.

The programs for A333602, there is no canonical definition to state claims against.
-/

/-! ## A333602.P18330418883218770799

`A271592(A000217(n+5)+6)`
-/

namespace A333602.P18330418883218770799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000217 (n + 5) + 6).toNat

end

end A333602.P18330418883218770799

/-! ## A333602.P6549988904579116623

`A271592(A016028(n+8)+3)`
-/

namespace A333602.P6549988904579116623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A016028 (n + 8) + 3).toNat

end

end A333602.P6549988904579116623

/-! ## A333602.P3296308356327919644

`A271592(A034856(n+4)+8)`
-/

namespace A333602.P3296308356327919644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A034856 (n + 4) + 8).toNat

end

end A333602.P3296308356327919644

/-! ## A333602.P1175033128925405276

`A271592(A046691(n+3)+10)`
-/

namespace A333602.P1175033128925405276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A046691 (n + 3) + 10).toNat

end

end A333602.P1175033128925405276

/-! ## A333602.P12653832688844491305

`A271592(A055999(n+4)-Δ[n²])`
-/

namespace A333602.P12653832688844491305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A055999 (n + 4) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A333602.P12653832688844491305

/-!
# A333603: Number of directed Hamiltonian walks from NW to SW corners of a 7 X (2*n+1) grid.

The programs for A333603, there is no canonical definition to state claims against.
-/

/-! ## A333603.P6395871896123561655

`A271592(A056119(2*n)+28)`
-/

namespace A333603.P6395871896123561655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A056119 (2 * n) + 28).toNat

end

end A333603.P6395871896123561655

/-! ## A333603.P246762193015885711

`record[Δ[A271592(A167487(n+1))]]`
-/

namespace A333603.P246762193015885711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167487 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333603.P246762193015885711

/-! ## A333603.P3788713381958690481

`record[A271592(A000217(n+4)+7)]`
-/

namespace A333603.P3788713381958690481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000217 (n + 4) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333603.P3788713381958690481

/-! ## A333603.P2632727864436447210

`A271592(A000217(2*(n+3))+7)`
-/

namespace A333603.P2632727864436447210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000217 (2 * (n + 3)) + 7).toNat

end

end A333603.P2632727864436447210

/-!
# A333604: Number of directed Hamiltonian walks from NW to SW corners of an 8 X n grid.

The programs for A333604, there is no canonical definition to state claims against.
-/

/-! ## A333604.P2931149212574716348

`A271592(eq[13, A066657(n)])`
-/

namespace A333604.P2931149212574716348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333604.P2931149212574716348

/-! ## A333604.P9659737735544015850

`A271592(A167487(n+6)+1)`
-/

namespace A333604.P9659737735544015850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167487 (n + 6) + 1).toNat

end

end A333604.P9659737735544015850

/-! ## A333604.P3421184643742757918

`A271592(A166136(n+6)+2)`
-/

namespace A333604.P3421184643742757918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A166136 (n + 6) + 2).toNat

end

end A333604.P3421184643742757918

/-! ## A333604.P112574592618001544

`A271592(A167614(n+6)+5)`
-/

namespace A333604.P112574592618001544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A167614 (n + 6) + 5).toNat

end

end A333604.P112574592618001544

/-! ## A333604.P15836664593781015656

`A271592(A161680(n+8)+8)`
-/

namespace A333604.P15836664593781015656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A161680 (n + 8) + 8).toNat

end

end A333604.P15836664593781015656

/-!
# A333606: Number of directed Hamiltonian walks from NW to SW corners of a 10 X n grid.

The programs for A333606, there is no canonical definition to state claims against.
-/

/-! ## A333606.P17681691258382187165

`A271592(A000217(n+9)+10)`
-/

namespace A333606.P17681691258382187165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (A000217 (n + 9) + 10).toNat

end

end A333606.P17681691258382187165

/-! ## A333606.P13384636575100231309

`A271592(eq[10, A130270(n+1)])`
-/

namespace A333606.P13384636575100231309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333606.P13384636575100231309

/-! ## A333606.P2828018426792176302

`A271592(eq[11, A131818(n+1)])`
-/

namespace A333606.P2828018426792176302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333606.P2828018426792176302

/-!
# A333607: Numbers k with unique nonzero digit in decimal representation of 1/k.

The programs for A333607, there is no canonical definition to state claims against.
-/

/-! ## A333607.P894576798994503004

`lt[A117122(n+1), 3]+1`
-/

namespace A333607.P894576798994503004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333607.P894576798994503004

/-! ## A333607.P16089534817267315413

`eq[2, A117122(C(2, n)+n)]`
-/

namespace A333607.P16089534817267315413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333607.P16089534817267315413

/-! ## A333607.P1603093504128392900

`record[A103517(n)/A117122(n+1)]`
-/

namespace A333607.P1603093504128392900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A117122 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333607.P1603093504128392900

/-! ## A333607.P268091073107177048

`eq[A036453(n+1), A117122(n+1)]+1`
-/

namespace A333607.P268091073107177048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333607.P268091073107177048

/-! ## A333607.P9492939180901467944

`eq[A117122(A028310(n)), A130130(n)]`
-/

namespace A333607.P9492939180901467944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117122 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333607.P9492939180901467944

/-!
# A333608: Sum of the heights of all nonnegative lattice paths from (0,0) to (n,0) where the allowed steps at (x,y) are (1,v) with v in {-1,0,...,max(y,1)}.

The programs for A333608, there is no canonical definition to state claims against.
-/

/-! ## A333608.P8201849898519559565

`A066490(A109975(n)*A324969(n+1))`
-/

namespace A333608.P8201849898519559565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A109975 n * A324969 (n + 1)).toNat

end

end A333608.P8201849898519559565

/-! ## A333608.P9933967824714206725

`A356832(A004892(n+1))-A078012(n)!`
-/

namespace A333608.P9933967824714206725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356832 (A004892 (n + 1)).toNat - (Nat.factorial (A078012 n).toNat : ℤ)

end

end A333608.P9933967824714206725

/-! ## A333608.P4295455441091509326

`A194698(A291000(n+1))`
-/

namespace A333608.P4295455441091509326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A291000 (n + 1)).toNat

end

end A333608.P4295455441091509326

/-! ## A333608.P17562952014882840083

`A026819(A110577(n))-1`
-/

namespace A333608.P17562952014882840083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A110577 n).toNat - 1

end

end A333608.P17562952014882840083

/-!
# A333609: The number of iterations of the infinitary totient function iphi (A091732) required to reach from n to 1.

The programs for A333609, there is no canonical definition to state claims against.
-/

/-! ## A333609.P14619730749556176116

`a(A091732(n+1)-1)+1` with `a(0)=0`
-/

namespace A333609.P14619730749556176116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A091732 (n + 1) - 1).toNat + 1

end

end A333609.P14619730749556176116

/-! ## A333609.P8510559289334052463

`a(n-A323413(n+1))+1` with `a(0)=0, a(1)=1`
-/

namespace A333609.P8510559289334052463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A323413 (n + 1)).toNat + 1

end

end A333609.P8510559289334052463

/-! ## A333609.P10612044287720839876

`a(A340087(n+1)*A340088(n+1)-1)+1` with `a(0)=0`
-/

namespace A333609.P10612044287720839876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A340087 (n + 1) * A340088 (n + 1) - 1).toNat + 1

end

end A333609.P10612044287720839876

/-! ## A333609.P8116825361984955826

`∑{e}[13*a(A223491(n+1)-2), #]` with `a(0)=1`
-/

namespace A333609.P8116825361984955826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  13 * f1 (A223491 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A333609.P8116825361984955826

/-! ## A333609.P10726649477621643839

`A196228(A276967(A140271(n+1))²)`
-/

namespace A333609.P10726649477621643839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (A276967 (A140271 (n + 1)).toNat ^ 2).toNat

end

end A333609.P10726649477621643839

/-!
# A333611: Sum of the iterated infinitary totient function iphi (A091732).

The programs for A333611, there is no canonical definition to state claims against.
-/

/-! ## A333611.P9260795107592255476

`A091732(n+1)+a(A091732(n+1)-1)` with `a(0)=0`
-/

namespace A333611.P9260795107592255476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A091732 (n + 1) + a (A091732 (n + 1) - 1).toNat

end

end A333611.P9260795107592255476

/-!
# A333612: Numbers at which the sum of the iterated infinitary totient function (A091732) attains a record.

The programs for A333612, there is no canonical definition to state claims against.
-/

/-! ## A333612.P15823451939949470084

`A084400(lt[A084433(n+1), A084426(n+5)])`
-/

namespace A333612.P15823451939949470084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084426 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333612.P15823451939949470084

/-!
# A333614: Lexicographically first sequence of nonnegative integers such that no two terms share all but one digit in common, nor does interchanging any two adjacent digits in any term change it into another term of the sequence.

The programs for A333614, there is no canonical definition to state claims against.
-/

/-! ## A333614.P6442222056912702359

`eq[A145568(n), A151950(A347689(n))]`
-/

namespace A333614.P6442222056912702359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333614.P6442222056912702359

/-! ## A333614.P1578544224645699928

`A122841(A362236(3*n+4))+A108773(n)`
-/

namespace A333614.P1578544224645699928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A362236 (3 * n + 4)).toNat + A108773 n

end

end A333614.P1578544224645699928

/-!
# A333615: a(n) is the number of ways to express 2*n+1 as a sum of parts x such that x+2 is an odd prime.

The programs for A333615, there is no canonical definition to state claims against.
-/

/-! ## A333615.P3098071457342707502

`A117278(2*(n+1)+(3*n+1)²)`
-/

namespace A333615.P3098071457342707502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117278 (2 * (n + 1) + (3 * n + 1) ^ 2)

end

end A333615.P3098071457342707502

/-! ## A333615.P17577713769646161604

`A026906(n+1)-A109129(A003239(n))`
-/

namespace A333615.P17577713769646161604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) - A109129 (A003239 n).toNat

end

end A333615.P17577713769646161604

/-! ## A333615.P14364377345130853225

`A213172(n)+A213126(A001037(n))`
-/

namespace A333615.P14364377345130853225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213172 n + A213126 (A001037 n).toNat

end

end A333615.P14364377345130853225

/-! ## A333615.P15601700958881318677

`A080222(n+1)-A080584(A080564(n))`
-/

namespace A333615.P15601700958881318677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080222 (n + 1) - A080584 (A080564 n).toNat

end

end A333615.P15601700958881318677

/-! ## A333615.P3726434284313304299

`A057918(A025235(n))+A035451(3*(n+1))`
-/

namespace A333615.P3726434284313304299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A025235 n).toNat + A035451 (3 * (n + 1))

end

end A333615.P3726434284313304299

/-!
# A333616: Expansion of x*(1 + 2*x + x^2 - 4*x^3 - x^4 + 2*x^5)/((1 - x)^3*(1 + x)^2).

The programs for A333616, the canonical program `A333616.P15206480201370407483` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333616 has offset 0).

The definition of A333616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+2x^2+x^3-4x^4-x^5+2x^6)/(1-x-2x^2+2x^3+x^4-x^5))` (program `A333616.P15206480201370407483`, by `A333616.P15206480201370407483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A333616.P15206480201370407483

`ogf((x+2x^2+x^3-4x^4-x^5+2x^6)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333616

/-- `ogf((x+2x^2+x^3-4x^4-x^5+2x^6)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P15206480201370407483.Spec : Prop :=
  ∀ n, P15206480201370407483.a n = A333616 n

theorem P15206480201370407483.correct : P15206480201370407483.Spec := by
  intro n
  simp only [A333616]

end A333616

/-! ## A333616.P4259450199103691659

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=6, a(5)=10, a(6)=10`
-/

namespace A333616.P4259450199103691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 6, 10, 10] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A333616.P4259450199103691659

namespace A333616

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P4259450199103691659.Spec : Prop :=
  ∀ n, P4259450199103691659.a n = A333616 n

end A333616

/-! ## A333616.P2521475245482106830

`C(∑[char[comp[2*(n+2)]]], 2)`
-/

namespace A333616.P2521475245482106830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A333616.P2521475245482106830

namespace A333616

/-- `C(∑[char[comp[2*(n+2)]]], 2)` -/
def P2521475245482106830.Spec : Prop :=
  ∀ n, (P2521475245482106830.a n : ℤ) = A333616 n

end A333616

/-! ## A333616.P6721597233331014554

`∑[a(n-2)+n%2]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=0`
-/

namespace A333616.P6721597233331014554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 0] fun n f1 =>
  f1 (n - 2) + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333616.P6721597233331014554

namespace A333616

/-- `∑[a(n-2)+n%2]` -/
def P6721597233331014554.Spec : Prop :=
  ∀ n, (P6721597233331014554.a n : ℤ) = A333616 n

end A333616

/-! ## A333616.P3107597736887769629

`∑[(3*a(n-2))%n]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=0`
-/

namespace A333616.P3107597736887769629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 0] fun n f1 =>
  3 * f1 (n - 2) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333616.P3107597736887769629

namespace A333616

/-- `∑[(3*a(n-2))%n]` -/
def P3107597736887769629.Spec : Prop :=
  ∀ n, (P3107597736887769629.a n : ℤ) = A333616 n

end A333616

/-! ## A333616.P484120612406686370

`A000217(∑[char[a(n-1)+2]])` with `a(0)=2, a(1)=1`
-/

namespace A333616.P484120612406686370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333616.P484120612406686370

namespace A333616

/-- `A000217(∑[char[a(n-1)+2]])` -/
def P484120612406686370.Spec : Prop :=
  ∀ n, P484120612406686370.a n = A333616 n

end A333616

/-! ## A333616.P13196702123243762039

`A161680(A267530(n))`
-/

namespace A333616.P13196702123243762039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A267530 n).toNat

end

end A333616.P13196702123243762039

namespace A333616

/-- `A161680(A267530(n))` -/
def P13196702123243762039.Spec : Prop :=
  ∀ n, P13196702123243762039.a n = A333616 n

end A333616

/-! ## A333616.P817322857478635952

`A000217(A267460(n)/2)`
-/

namespace A333616.P817322857478635952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A267460 n : ℚ) / 2)).toNat

end

end A333616.P817322857478635952

namespace A333616

/-- `A000217(A267460(n)/2)` -/
def P817322857478635952.Spec : Prop :=
  ∀ n, P817322857478635952.a n = A333616 n

end A333616

/-! ## A333616.P11828418556787335012

`A000217(ceil(sqrt(A024206(n+1))))`
-/

namespace A333616.P11828418556787335012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌈Real.sqrt (A024206 (n + 1) : ℝ)⌉.toNat

end

end A333616.P11828418556787335012

namespace A333616

/-- `A000217(ceil(sqrt(A024206(n+1))))` -/
def P11828418556787335012.Spec : Prop :=
  ∀ n, P11828418556787335012.a n = A333616 n

end A333616

/-! ## A333616.P13191821750276854889

`A161680(Δ[n²]-A267528(n))`
-/

namespace A333616.P13191821750276854889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A267528 n).toNat

end

end A333616.P13191821750276854889

namespace A333616

/-- `A161680(Δ[n²]-A267528(n))` -/
def P13191821750276854889.Spec : Prop :=
  ∀ n, P13191821750276854889.a n = A333616 n

end A333616

/-! ## A333616.P3648860300586961791

`A000217(A258087(n+1)-A272058(n))`
-/

namespace A333616.P3648860300586961791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A258087 (n + 1) - A272058 n).toNat

end

end A333616.P3648860300586961791

namespace A333616

/-- `A000217(A258087(n+1)-A272058(n))` -/
def P3648860300586961791.Spec : Prop :=
  ∀ n, P3648860300586961791.a n = A333616 n

end A333616

/-! ## A333616.P8344500047924086832

`A000217(A008619(n+1)-A019590(n+1))`
-/

namespace A333616.P8344500047924086832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 (n + 1) - A019590 (n + 1)).toNat

end

end A333616.P8344500047924086832

namespace A333616

/-- `A000217(A008619(n+1)-A019590(n+1))` -/
def P8344500047924086832.Spec : Prop :=
  ∀ n, P8344500047924086832.a n = A333616 n

end A333616

/-! ## A333616.P4128803802032348492

`A006918(n+2)%A006918(n+1)`
-/

namespace A333616.P4128803802032348492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006918 (n + 2)) (A006918 (n + 1))

end

end A333616.P4128803802032348492

namespace A333616

/-- `A006918(n+2)%A006918(n+1)` -/
def P4128803802032348492.Spec : Prop :=
  ∀ n, P4128803802032348492.a n = A333616 n

end A333616

/-! ## A333616.P1586061297530995777

`A075303(A267460(n))`
-/

namespace A333616.P1586061297530995777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (A267460 n).toNat

end

end A333616.P1586061297530995777

namespace A333616

/-- `A075303(A267460(n))` -/
def P1586061297530995777.Spec : Prop :=
  ∀ n, P1586061297530995777.a n = A333616 n

end A333616

/-! ## A333616.P8004679677496134444

`A124093(A265283(n))`
-/

namespace A333616.P8004679677496134444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (A265283 n).toNat

end

end A333616.P8004679677496134444

namespace A333616

/-- `A124093(A265283(n))` -/
def P8004679677496134444.Spec : Prop :=
  ∀ n, P8004679677496134444.a n = A333616 n

end A333616

/-! ## A333616.P5476099043784027471

`A000217(∑[n%2]+1)%(2^n)`
-/

namespace A333616.P5476099043784027471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (2 ^ n : ℤ)

end

end A333616.P5476099043784027471

namespace A333616

/-- `A000217(∑[n%2]+1)%(2^n)` -/
def P5476099043784027471.Spec : Prop :=
  ∀ n, P5476099043784027471.a n = A333616 n

end A333616

/-! ## A333616.P1769337506907459919

`A165157(n+1)-A002260(A165157(n+1))`
-/

namespace A333616.P1769337506907459919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - A002260 (A165157 (n + 1)).toNat

end

end A333616.P1769337506907459919

namespace A333616

/-- `A165157(n+1)-A002260(A165157(n+1))` -/
def P1769337506907459919.Spec : Prop :=
  ∀ n, P1769337506907459919.a n = A333616 n

end A333616

/-! ## A333616.P12383250499761403625

`A000217(A000194(A002620(n+3)-2))`
-/

namespace A333616.P12383250499761403625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000194 (A002620 (n + 3) - 2).toNat).toNat

end

end A333616.P12383250499761403625

namespace A333616

/-- `A000217(A000194(A002620(n+3)-2))` -/
def P12383250499761403625.Spec : Prop :=
  ∀ n, P12383250499761403625.a n = A333616 n

end A333616

/-! ## A333616.P4601376849015841244

`A004526(A267530(n)²-A267530(n))`
-/

namespace A333616.P4601376849015841244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A267530 n ^ 2 - A267530 n).toNat

end

end A333616.P4601376849015841244

namespace A333616

/-- `A004526(A267530(n)²-A267530(n))` -/
def P4601376849015841244.Spec : Prop :=
  ∀ n, P4601376849015841244.a n = A333616 n

end A333616

/-! ## A333616.P2093238733175745954

`A004526((A267530(n)-1)*A267530(n))`
-/

namespace A333616.P2093238733175745954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A267530 n - 1) * A267530 n).toNat

end

end A333616.P2093238733175745954

namespace A333616

/-- `A004526((A267530(n)-1)*A267530(n))` -/
def P2093238733175745954.Spec : Prop :=
  ∀ n, P2093238733175745954.a n = A333616 n

end A333616

/-!
# A333618: a(n) is the total number of terms (1-digits) in the dual Zeckendorf representation of all divisors of n.

The programs for A333618, the canonical program `A333618.P6178487430166416808` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333618 has offset 1).

The definition of A333618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333618.P6178487430166416808

`∑{d}[n+1, A112310(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333618

/-- `∑{d}[n+1, A112310(#)]` -/
def P6178487430166416808.Spec : Prop :=
  ∀ n, P6178487430166416808.a n = A333618 (n + 1)

theorem P6178487430166416808.correct : P6178487430166416808.Spec := by
  intro n
  simp only [A333618, Nat.add_sub_cancel]

end A333618

/-! ## A333618.P3420906149544450800

`∑{d}[n+1, A033265(A052499(#))]`
-/

namespace A333618.P3420906149544450800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033265 (A052499 d).toNat

end

end A333618.P3420906149544450800

namespace A333618

/-- `∑{d}[n+1, A033265(A052499(#))]` -/
def P3420906149544450800.Spec : Prop :=
  ∀ n, P3420906149544450800.a n = A333618 (n + 1)

end A333618

/-! ## A333618.P1456483072692384959

`∑{d}[A044916(n+1), A342739(#)]`
-/

namespace A333618.P1456483072692384959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A342739 d

end

end A333618.P1456483072692384959

namespace A333618

/-- `∑{d}[A044916(n+1), A342739(#)]` -/
def P1456483072692384959.Spec : Prop :=
  ∀ n, P1456483072692384959.a n = A333618 (n + 1)

end A333618

/-!
# A333619: Numbers that are divisible by the total number of 1's in the Zeckendorf representations of all their divisors (A300837).

The programs for A333619, there is no canonical definition to state claims against.
-/

/-! ## A333619.P8189283840828452411

`lt[A262906((n+1)%A300837(n+1)), 1]+1`
-/

namespace A333619.P8189283840828452411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262906 (Int.tmod (n + 1 : ℤ) (A300837 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333619.P8189283840828452411

/-!
# A333621: Numbers that are divisible by the total number of 1's in both the Zeckendorf and the dual Zeckendorf representations of all their divisors (A300837 and A333618).

The programs for A333621, there is no canonical definition to state claims against.
-/

/-! ## A333621.P16298891178290114162

`∩[A333619(n+1), A333620(n+1)]`
-/

namespace A333621.P16298891178290114162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333621.P16298891178290114162

/-! ## A333621.P11045794256602379673

`∩[A333620(A348553(n)), A333619(n+1)]`
-/

namespace A333621.P11045794256602379673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333620 (A348553 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A333621.P11045794256602379673

/-!
# A333622: Numbers k such that k is divisible by the sum of digits of all the divisors of k in factorial base (A319712).

The programs for A333622, there is no canonical definition to state claims against.
-/

/-! ## A333622.P1533629586671559842

`eq[A207324(n+1), A300360(A215806(n+1))]`
-/

namespace A333622.P1533629586671559842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300360 (A215806 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333622.P1533629586671559842

/-!
# A333623: Numbers k such that k is divisible by the sum of digits of all the divisors of k in primorial base (A319715).

The programs for A333623, the canonical program `A333623.P14520114881090528427` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333623 has offset 1).

The definition of A333623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333623.P14520114881090528427

`lt[(n+1)%A319715(n+1), 1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A333623

/-- `lt[(n+1)%A319715(n+1), 1]+1` -/
def P14520114881090528427.Spec : Prop :=
  ∀ n, (P14520114881090528427.a n : ℤ) = A333623 (n + 1)

theorem P14520114881090528427.correct : P14520114881090528427.Spec := by
  intro n
  simp only [A333623, Nat.add_sub_cancel]

end A333623

/-!
# A333624: Irregular triangle read by rows: T(n,k) = number of triangles of zeros with side length k in the XOR-triangle with first row generated from the binary expansion of n.

The programs for A333624, there is no canonical definition to state claims against.
-/

/-! ## A333624.P2675696683364988133

`A153006(A005783(n+1))%3`
-/

namespace A333624.P2675696683364988133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153006 (A005783 (n + 1)).toNat) 3

end

end A333624.P2675696683364988133

/-! ## A333624.P12187192576477818686

`A378282(n+2)-A266342(A289322(n))`
-/

namespace A333624.P12187192576477818686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378282 (n + 2) - A266342 (A289322 n).toNat

end

end A333624.P12187192576477818686

/-! ## A333624.P1518819427308355122

`A115201(A155521(n)%A030515(n+1))`
-/

namespace A333624.P1518819427308355122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115201 (Int.tmod (A155521 n) (A030515 (n + 1))).toNat

end

end A333624.P1518819427308355122

/-! ## A333624.P7413709329168856547

`A286052(n+1)+A284848(A323950(n+1))`
-/

namespace A333624.P7413709329168856547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (n + 1) + A284848 (A323950 (n + 1)).toNat

end

end A333624.P7413709329168856547

/-! ## A333624.P12480407606042149203

`A278521(A069353(n+1)*A097933(n+1))`
-/

namespace A333624.P12480407606042149203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278521 (A069353 (n + 1) * A097933 (n + 1)).toNat

end

end A333624.P12480407606042149203

/-!
# A333625: Read terms e = T(n,k) in A333624 as Product(prime(k)^e) for n in A334556.

The programs for A333625, there is no canonical definition to state claims against.
-/

/-! ## A333625.P3473464866513744218

`A005361(A143770(n+1))^3`
-/

namespace A333625.P3473464866513744218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A143770 (n + 1)).toNat ^ 3

end

end A333625.P3473464866513744218

/-! ## A333625.P12062497558743143481

`A257497(A000045(lt[0, ∑{d}[n+1, #^6]%13]+1))^3`
-/

namespace A333625.P12062497558743143481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d ^ 6) % 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257497 (A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)).toNat ^ 3

end

end A333625.P12062497558743143481

/-! ## A333625.P8811525174438424822

`A118880(A004643(n)+A000073(n))`
-/

namespace A333625.P8811525174438424822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (A004643 n + A000073 n).toNat

end

end A333625.P8811525174438424822

/-!
# A333626: Number of ways to write n as the sum of two positive integers that have the same number of divisors.

The programs for A333626, there is no canonical definition to state claims against.
-/

/-! ## A333626.P1471870463279076153

`A333707(n+1)+n%2`
-/

namespace A333626.P1471870463279076153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A333626.P1471870463279076153

/-! ## A333626.P13014000054865703035

`A333707(n+1)+A000035(n)`
-/

namespace A333626.P13014000054865703035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + A000035 n

end

end A333626.P13014000054865703035

/-! ## A333626.P15557625222713113823

`A333707(n+1)+log2(A000034(n))`
-/

namespace A333626.P15557625222713113823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A333707 (n + 1) : ℝ) + Real.logb 2 (A000034 n : ℝ)

end

end A333626.P15557625222713113823

/-! ## A333626.P13878503779622690855

`A333707(n+1)+∑[A062157(n)]`
-/

namespace A333626.P13878503779622690855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333626.P13878503779622690855

/-! ## A333626.P6301567854547127073

`A333707(n+1)+char[A005408(n)]`
-/

namespace A333626.P6301567854547127073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A333626.P6301567854547127073

/-! ## A333626.P14951083237254130488

`A333707(A000027(n+1))+and(1, n)`
-/

namespace A333626.P14951083237254130488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (A000027 (n + 1)).toNat + (Nat.land 1 n : ℤ)

end

end A333626.P14951083237254130488

/-! ## A333626.P9883499803581603776

`A333707(n+1)+Δ[A004526(n)]`
-/

namespace A333626.P9883499803581603776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + (f1 (n + 1) - f1 n)

end

end A333626.P9883499803581603776

/-! ## A333626.P14736905738042381036

`A333707(n+1)+Δ[A002265(2*n)]`
-/

namespace A333626.P14736905738042381036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333707 (n + 1) + (f1 (n + 1) - f1 n)

end

end A333626.P14736905738042381036

/-!
# A333627: The a(n)-th composition in standard order is the sequence of run-lengths of the n-th composition in standard order.

The programs for A333627, there is no canonical definition to state claims against.
-/

/-! ## A333627.P12641931961749022037

`A334299(n)-A167020(A048854(n))`
-/

namespace A333627.P12641931961749022037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 n - A167020 (A048854 n).toNat

end

end A333627.P12641931961749022037

/-! ## A333627.P17574439810643183869

`A334299(n)-A129565(A000041(2*(n+2)))`
-/

namespace A333627.P17574439810643183869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 n - A129565 (A000041 (2 * (n + 2))).toNat

end

end A333627.P17574439810643183869

/-! ## A333627.P2256181588279049390

`A001316(n)-A239512(A239553(n))`
-/

namespace A333627.P2256181588279049390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - A239512 (A239553 n).toNat

end

end A333627.P2256181588279049390

/-! ## A333627.P4872138027482015723

`A334300(n)+A056170(A323583(n))`
-/

namespace A333627.P4872138027482015723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n + A056170 (A323583 n).toNat

end

end A333627.P4872138027482015723

/-! ## A333627.P6849144405869184559

`A124771(n)-A030302(A283477(n))`
-/

namespace A333627.P6849144405869184559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n - A030302 (A283477 n).toNat

end

end A333627.P6849144405869184559

/-!
# A333628: Runs-resistance of the n-th composition in standard order. Number of steps taking run-lengths to reduce the n-th composition in standard order to a singleton.

The programs for A333628, there is no canonical definition to state claims against.
-/

/-! ## A333628.P15842222244388033995

`A318928(A006068(n+1))-1`
-/

namespace A333628.P15842222244388033995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A006068 (n + 1)).toNat - 1

end

end A333628.P15842222244388033995

/-! ## A333628.P15249114026732656119

`A318928(A341916(n+1))-1`
-/

namespace A333628.P15249114026732656119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A341916 (n + 1)).toNat - 1

end

end A333628.P15249114026732656119

/-! ## A333628.P7706337091156012855

`A001222(A134571(A285329(n+1)+A046769(n)))`
-/

namespace A333628.P7706337091156012855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A134571 (A285329 (n + 1) + A046769 n).toNat).toNat

end

end A333628.P7706337091156012855

/-! ## A333628.P7167759332389979654

`A326055(A158067(n+1))%A008619(n)`
-/

namespace A333628.P7167759332389979654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326055 (A158067 (n + 1)).toNat) (A008619 n)

end

end A333628.P7167759332389979654

/-! ## A333628.P15367414513475888715

`A061395(A339894(2*(n+1))^floor(n/(xor(n, n+1)+1)))`
-/

namespace A333628.P15367414513475888715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A339894 (2 * (n + 1)) : ℚ) ^ (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ : ℤ))).toNat

end

end A333628.P15367414513475888715

/-!
# A333631: Number of permutations of {1..n} with three consecutive terms in arithmetic progression.

The programs for A333631, there is no canonical definition to state claims against.
-/

/-! ## A333631.P2176110041391601057

`n!-A295370(n)`
-/

namespace A333631.P2176110041391601057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A295370 n

end

end A333631.P2176110041391601057

/-! ## A333631.P17189527061388046705

`A000142(n)-A295370(n)`
-/

namespace A333631.P17189527061388046705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A295370 n

end

end A333631.P17189527061388046705

/-! ## A333631.P17192812526637546792

`A028421(∑[n])-A295370(n)`
-/

namespace A333631.P17192812526637546792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (∑ j ∈ Finset.range (n + 1), f1 j) - A295370 n

end

end A333631.P17192812526637546792

/-! ## A333631.P15479627537468260067

`Δ[A003422(n)]-A295370(n)`
-/

namespace A333631.P15479627537468260067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A295370 n

end

end A333631.P15479627537468260067

/-!
# A333632: Rotational period of the k-th composition in standard order; a(0) = 0.

The programs for A333632, there is no canonical definition to state claims against.
-/

/-! ## A333632.P5904966719220472639

`A000120(n)/A138904(n)`
-/

namespace A333632.P5904966719220472639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (A138904 n : ℚ)

end

end A333632.P5904966719220472639

/-! ## A333632.P15397191695315534789

`A302291(n)-A023416(n)/A138904(n)`
-/

namespace A333632.P15397191695315534789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302291 n : ℚ) - (A023416 n : ℚ) / (A138904 n : ℚ)

end

end A333632.P15397191695315534789

/-! ## A333632.P14117726961432064170

`log2(A001316(n))/A138904(n)`
-/

namespace A333632.P14117726961432064170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) / (A138904 n : ℝ)

end

end A333632.P14117726961432064170

/-! ## A333632.P6590002911388556340

`dr(A007088(n))/A138904(n)`
-/

namespace A333632.P6590002911388556340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℚ) / (A138904 n : ℚ)

end

end A333632.P6590002911388556340

/-! ## A333632.P14095916718209266366

`∑[A088705(n)]/A138904(n)`
-/

namespace A333632.P14095916718209266366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A138904 n : ℚ)

end

end A333632.P14095916718209266366

/-! ## A333632.P16083702251324523157

`val(A102377(n), 2)/A138904(n)`
-/

namespace A333632.P16083702251324523157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A102377 n).toNat 2 : ℚ) / (A138904 n : ℚ)

end

end A333632.P16083702251324523157

/-! ## A333632.P18207855119718080785

`val(A160713(n), 2)/A138904(n)`
-/

namespace A333632.P18207855119718080785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A160713 n).toNat 2 : ℚ) / (A138904 n : ℚ)

end

end A333632.P18207855119718080785

/-! ## A333632.P8761854299056295873

`∑[∑{e}[A020639(n+1), #-val(n, 2)]]/A138904(n)`
-/

namespace A333632.P8761854299056295873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, ((Nat.factorization (f2 n).natAbs p : ℤ) - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A138904 n : ℚ)

end

end A333632.P8761854299056295873

/-! ## A333632.P9804219299571418570

`A001222(A019565(n))/A138904(n)`
-/

namespace A333632.P9804219299571418570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A019565 n).toNat : ℚ) / (A138904 n : ℚ)

end

end A333632.P9804219299571418570

/-! ## A333632.P10930230725965467397

`A001222(A278222(n))/A138904(n)`
-/

namespace A333632.P10930230725965467397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278222 n).toNat : ℚ) / (A138904 n : ℚ)

end

end A333632.P10930230725965467397

/-!
# A333633: Smallest m such that sigma(m) == 2*n (mod phi(m)) or 0 if no solution exists.

The programs for A333633, there is no canonical definition to state claims against.
-/

/-! ## A333633.P6621521823796270486

`∏{e}[A000302(n), A072808(#)]`
-/

namespace A333633.P6621521823796270486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A072808 (Nat.factorization (f1 n).natAbs p)

end

end A333633.P6621521823796270486

/-!
# A333634: Numbers with an even number of non-unitary prime divisors.

The programs for A333634, the canonical program `A333634.P7484277541955402539` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333634 has offset 1).

The definition of A333634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333634.P4154504180367468074

`record[(n+1)/and(3, A324910(n+1))]`
-/

namespace A333634.P4154504180367468074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land 3 (A324910 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333634.P4154504180367468074

namespace A333634

/-- `record[(n+1)/and(3, A324910(n+1))]` -/
def P4154504180367468074.Spec : Prop :=
  ∀ n, P4154504180367468074.a n = (A333634 (n + 1) : ℚ)

end A333634

/-! ## A333634.P7484277541955402539

`eq[1, A135481(A324910(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333634

/-- `eq[1, A135481(A324910(n+1))]+1` -/
def P7484277541955402539.Spec : Prop :=
  ∀ n, (P7484277541955402539.a n : ℤ) = A333634 (n + 1)

theorem P7484277541955402539.correct : P7484277541955402539.Spec := by
  intro n
  simp only [A333634, Nat.add_sub_cancel]

end A333634

/-! ## A333634.P13200526421922849077

`eq[2, gcd(2, A056170(n+1))]+1`
-/

namespace A333634.P13200526421922849077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A056170 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A333634.P13200526421922849077

namespace A333634

/-- `eq[2, gcd(2, A056170(n+1))]+1` -/
def P13200526421922849077.Spec : Prop :=
  ∀ n, (P13200526421922849077.a n : ℤ) = A333634 (n + 1)

end A333634

/-! ## A333634.P14546565541273306172

`record[(n+1)*A076479(A003557(n+1))]`
-/

namespace A333634.P14546565541273306172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076479 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333634.P14546565541273306172

namespace A333634

/-- `record[(n+1)*A076479(A003557(n+1))]` -/
def P14546565541273306172.Spec : Prop :=
  ∀ n, P14546565541273306172.a n = A333634 (n + 1)

end A333634

/-! ## A333634.P1149717118823755958

`record[(n+1)/A076479(A000188(n+1))]`
-/

namespace A333634.P1149717118823755958
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A076479 (A000188 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333634.P1149717118823755958

namespace A333634

/-- `record[(n+1)/A076479(A000188(n+1))]` -/
def P1149717118823755958.Spec : Prop :=
  ∀ n, P1149717118823755958.a n = (A333634 (n + 1) : ℚ)

end A333634

/-! ## A333634.P4936945938365345353

`eq[1, A014963(A295666(n+1))]+1`
-/

namespace A333634.P4936945938365345353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A295666 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333634.P4936945938365345353

namespace A333634

/-- `eq[1, A014963(A295666(n+1))]+1` -/
def P4936945938365345353.Spec : Prop :=
  ∀ n, (P4936945938365345353.a n : ℤ) = A333634 (n + 1)

end A333634

/-! ## A333634.P736371411171255757

`eq[1, A046643(A256692(n+1)+1)]+1`
-/

namespace A333634.P736371411171255757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A256692 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333634.P736371411171255757

namespace A333634

/-- `eq[1, A046643(A256692(n+1)+1)]+1` -/
def P736371411171255757.Spec : Prop :=
  ∀ n, (P736371411171255757.a n : ℤ) = A333634 (n + 1)

end A333634

/-! ## A333634.P11160982397080659351

`filter[A118759(n+1), A353559(#)]`
-/

namespace A333634.P11160982397080659351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A333634.P11160982397080659351

namespace A333634

/-- `filter[A118759(n+1), A353559(#)]` -/
def P11160982397080659351.Spec : Prop :=
  ∀ n, P11160982397080659351.a n = A333634 (n + 1)

end A333634

/-! ## A333634.P9162882549225654413

`filter[A135130(n+1), A353559(#)]`
-/

namespace A333634.P9162882549225654413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A333634.P9162882549225654413

namespace A333634

/-- `filter[A135130(n+1), A353559(#)]` -/
def P9162882549225654413.Spec : Prop :=
  ∀ n, P9162882549225654413.a n = A333634 (n + 1)

end A333634

/-! ## A333634.P2070666965043755800

`filter[A085736(n+1), A353559(#)]`
-/

namespace A333634.P2070666965043755800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A333634.P2070666965043755800

namespace A333634

/-- `filter[A085736(n+1), A353559(#)]` -/
def P2070666965043755800.Spec : Prop :=
  ∀ n, P2070666965043755800.a n = A333634 (n + 1)

end A333634

/-!
# A333635: Numbers m such that m^2 + 1 has at most 2 prime factors.

The programs for A333635, the canonical program `A333635.P4737925999260049284` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333635 has offset 1).

The definition of A333635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333635.P4737925999260049284

`floor(sqrt(A248742(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A333635

/-- `floor(sqrt(A248742(n+1)))` -/
def P4737925999260049284.Spec : Prop :=
  ∀ n, P4737925999260049284.a n = A333635 (n + 1)

theorem P4737925999260049284.correct : P4737925999260049284.Spec := by
  intro n
  simp only [A333635, Nat.add_sub_cancel]

end A333635

/-! ## A333635.P14703067458828575684

`∪[A005574(n+1), A085722(n+1)]`
-/

namespace A333635.P14703067458828575684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333635.P14703067458828575684

namespace A333635

/-- `∪[A005574(n+1), A085722(n+1)]` -/
def P14703067458828575684.Spec : Prop :=
  ∀ n, (P14703067458828575684.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P4645986158654200499

`eq[2, lcm(2, A193330(n))]`
-/

namespace A333635.P4645986158654200499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A193330 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333635.P4645986158654200499

namespace A333635

/-- `eq[2, lcm(2, A193330(n))]` -/
def P4645986158654200499.Spec : Prop :=
  ∀ n, (P4645986158654200499.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P3387517069913671262

`eq[1, 5%A193432(n)]`
-/

namespace A333635.P3387517069913671262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A193432 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333635.P3387517069913671262

namespace A333635

/-- `eq[1, 5%A193432(n)]` -/
def P3387517069913671262.Spec : Prop :=
  ∀ n, (P3387517069913671262.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P6903008314811610221

`eq[6, or(4, A278162(n))]`
-/

namespace A333635.P6903008314811610221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A278162 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333635.P6903008314811610221

namespace A333635

/-- `eq[6, or(4, A278162(n))]` -/
def P6903008314811610221.Spec : Prop :=
  ∀ n, (P6903008314811610221.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P186279306586421167

`lt[A147809(n+1), 2]+1`
-/

namespace A333635.P186279306586421167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147809 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333635.P186279306586421167

namespace A333635

/-- `lt[A147809(n+1), 2]+1` -/
def P186279306586421167.Spec : Prop :=
  ∀ n, (P186279306586421167.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P10864625761933932874

`lt[A147810(n+1), 3]+1`
-/

namespace A333635.P10864625761933932874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147810 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333635.P10864625761933932874

namespace A333635

/-- `lt[A147810(n+1), 3]+1` -/
def P10864625761933932874.Spec : Prop :=
  ∀ n, (P10864625761933932874.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P10712303280211064800

`lt[A193432(n+1)+1, 7]+1`
-/

namespace A333635.P10712303280211064800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333635.P10712303280211064800

namespace A333635

/-- `lt[A193432(n+1)+1, 7]+1` -/
def P10712303280211064800.Spec : Prop :=
  ∀ n, (P10712303280211064800.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P12328799003329545434

`lt[∑{e}[(n+1)²+1, #], 3]+1`
-/

namespace A333635.P12328799003329545434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A333635.P12328799003329545434

namespace A333635

/-- `lt[∑{e}[(n+1)²+1, #], 3]+1` -/
def P12328799003329545434.Spec : Prop :=
  ∀ n, (P12328799003329545434.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P11388338252007939070

`eq[1, round(sqrt(A001222(n²+1)))²]`
-/

namespace A333635.P11388338252007939070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A001222 (n ^ 2 + 1) : ℝ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333635.P11388338252007939070

namespace A333635

/-- `eq[1, round(sqrt(A001222(n²+1)))²]` -/
def P11388338252007939070.Spec : Prop :=
  ∀ n, (P11388338252007939070.a n : ℤ) = A333635 (n + 1)

end A333635

/-! ## A333635.P9829391624254367232

`eq[1, A353788(n²+1)]`
-/

namespace A333635.P9829391624254367232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353788 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333635.P9829391624254367232

namespace A333635

/-- `eq[1, A353788(n²+1)]` -/
def P9829391624254367232.Spec : Prop :=
  ∀ n, (P9829391624254367232.a n : ℤ) = A333635 (n + 1)

end A333635

/-!
# A333637: The number of cells which contain multiple squares of a Genealodron formed from 2^n - 1 equal-sized squares (when viewed from above).

The programs for A333637, the canonical program `A333637.P18189463310586837938` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333637 has offset 1).

The definition of A333637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333637.P18189463310586837938

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=7, a(5)=15, a(6)=27, a(7)=41`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333637

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P18189463310586837938.Spec : Prop :=
  ∀ n, P18189463310586837938.a n = A333637 (n + 1)

theorem P18189463310586837938.correct : P18189463310586837938.Spec := by
  intro n
  simp only [A333637, Nat.add_sub_cancel]

end A333637

/-! ## A333637.P15649217591099533891

`n²+n+1-A114956(3*n)`
-/

namespace A333637.P15649217591099533891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + (n + 1) : ℤ) - A114956 (3 * n)

end

end A333637.P15649217591099533891

namespace A333637

/-- `n²+n+1-A114956(3*n)` -/
def P15649217591099533891.Spec : Prop :=
  ∀ n, P15649217591099533891.a n = A333637 (n + 1)

end A333637

/-! ## A333637.P12569212945742954551

`∑[∑[A118144(A050624(n+1))]]`
-/

namespace A333637.P12569212945742954551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118144 (A050624 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333637.P12569212945742954551

namespace A333637

/-- `∑[∑[A118144(A050624(n+1))]]` -/
def P12569212945742954551.Spec : Prop :=
  ∀ n, P12569212945742954551.a n = A333637 (n + 1)

end A333637

/-!
# A333638: Numbers m such that (m * sigma(m)) / tau(m) is an integer k.

The programs for A333638, there is no canonical definition to state claims against.
-/

/-! ## A333638.P15147048891557025888

`∪[A039019(n+1), A135130(n+1)]`
-/

namespace A333638.P15147048891557025888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333638.P15147048891557025888

/-! ## A333638.P13167872990702853303

`∪[A087943(n+1), A135130(n+1)]`
-/

namespace A333638.P13167872990702853303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333638.P13167872990702853303

/-! ## A333638.P11936147695584493534

`comp[A168036(3*n+1)*A368922(n)]`
-/

namespace A333638.P11936147695584493534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (3 * n + 1) * A368922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333638.P11936147695584493534

/-! ## A333638.P332834605406210960

`lt[A064987(n+1)%A000005(n+1), 1]+1`
-/

namespace A333638.P332834605406210960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064987 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A333638.P332834605406210960

/-! ## A333638.P18246755694347802438

`∪[A135130(n+1), A001651(A344314(n+1))]`
-/

namespace A333638.P18246755694347802438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A344314 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A333638.P18246755694347802438

/-!
# A333639: Numbers m such that g(m) = (m * tau(m) / sigma(m)), h(m) = (m * sigma(m)) / tau(m) and k(m) = (tau(m) * sigma(m)) / m are all integers.

The programs for A333639, there is no canonical definition to state claims against.
-/

/-! ## A333639.P3414305361153727175

`A001599(lt[A351981(n), A292469(n+1)])`
-/

namespace A333639.P3414305361153727175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333639.P3414305361153727175

/-!
# A333640: Numbers k such that the continued fraction of (1 + sqrt(k))/2 has period 13.

The programs for A333640, there is no canonical definition to state claims against.
-/

/-! ## A333640.P4307112626514320754

`eq[13, A146326(A028310(n))]`
-/

namespace A333640.P4307112626514320754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333640.P4307112626514320754

/-! ## A333640.P18325977904587025896

`A004442(eq[13, A146326(n+1)])`
-/

namespace A333640.P18325977904587025896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333640.P18325977904587025896

/-! ## A333640.P7536634877922336305

`A326178(eq[13, A146326(n+1)])`
-/

namespace A333640.P7536634877922336305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A333640.P7536634877922336305

/-!
# A333641: 11-gonal (or hendecagonal) square numbers.

The programs for A333641, there is no canonical definition to state claims against.
-/

/-! ## A333641.P10460300740563395431

`∩[9*C(n, 2)+n, n²]`
-/

namespace A333641.P10460300740563395431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A333641.P10460300740563395431

/-! ## A333641.P7611491543776595636

`∩[C(3*n, 2)-2*n, n²]`
-/

namespace A333641.P7611491543776595636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A333641.P7611491543776595636

/-!
# A333642: Number of regions in a polygon whose boundary consists of n+2 equally spaced points around a semicircle and three equally spaced points along the diameter (a total of n+3 points). See Comments for precise definition.

The programs for A333642, there is no canonical definition to state claims against.
-/

/-! ## A333642.P4184602767335146034

`A330911(n+1)+1-A330913(n+1)`
-/

namespace A333642.P4184602767335146034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330911 (n + 1) + (1 - A330913 (n + 1))

end

end A333642.P4184602767335146034

/-! ## A333642.P14763919689150701898

`A330911(n+1)+A024000(A330913(n+1))`
-/

namespace A333642.P14763919689150701898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330911 (n + 1) + A024000 (A330913 (n + 1)).toNat

end

end A333642.P14763919689150701898

/-! ## A333642.P798237154030794872

`A020725(A330911(n+1)-A330913(n+1))`
-/

namespace A333642.P798237154030794872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A330911 (n + 1) - A330913 (n + 1)).toNat

end

end A333642.P798237154030794872

/-!
# A333643: Number of regions in a polygon whose boundary consists of n+2 equally spaced points around the arc of a semicircle. See Comments for precise definition.

The programs for A333643, there is no canonical definition to state claims against.
-/

/-! ## A333643.P8488729028786940684

`∑[A213373(∑[n]+1)]`
-/

namespace A333643.P8488729028786940684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213373 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333643.P8488729028786940684

/-! ## A333643.P2299216292890973679

`A141214(∑[n]+n)/3`
-/

namespace A333643.P2299216292890973679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141214 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 3

end

end A333643.P2299216292890973679

/-! ## A333643.P12892128180016635562

`∑[∑[∑[A086833(2^n)]]]`
-/

namespace A333643.P12892128180016635562
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (2 ^ n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333643.P12892128180016635562

/-!
# A333644: a(n) = Sum_{k=1..n} floor(n/k) * prime(k).

The programs for A333644, the canonical program `A333644.P1401994057420072058` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333644 has offset 1).

The definition of A333644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333644.P1401994057420072058

`∑[A007445(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333644

/-- `∑[A007445(n+1)]` -/
def P1401994057420072058.Spec : Prop :=
  ∀ n, P1401994057420072058.a n = A333644 (n + 1)

theorem P1401994057420072058.correct : P1401994057420072058.Spec := by
  intro n
  simp only [A333644, Nat.add_sub_cancel]

end A333644

/-! ## A333644.P8897754035613314

`∑[∑{d}[n+1, A000040(#)]]`
-/

namespace A333644.P8897754035613314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000040 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P8897754035613314

namespace A333644

/-- `∑[∑{d}[n+1, A000040(#)]]` -/
def P8897754035613314.Spec : Prop :=
  ∀ n, P8897754035613314.a n = A333644 (n + 1)

end A333644

/-! ## A333644.P15489088161439492282

`∑[∑{d}[n+1, sqrt(A001248(#))]]`
-/

namespace A333644.P15489088161439492282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.sqrt (A001248 d : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P15489088161439492282

namespace A333644

/-- `∑[∑{d}[n+1, sqrt(A001248(#))]]` -/
def P15489088161439492282.Spec : Prop :=
  ∀ n, P15489088161439492282.a n = (A333644 (n + 1) : ℝ)

end A333644

/-! ## A333644.P4073522514771105221

`∑[∑{d}[n+1, A006093(#)+1]]`
-/

namespace A333644.P4073522514771105221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A006093 d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P4073522514771105221

namespace A333644

/-- `∑[∑{d}[n+1, A006093(#)+1]]` -/
def P4073522514771105221.Spec : Prop :=
  ∀ n, P4073522514771105221.a n = A333644 (n + 1)

theorem P4073522514771105221.correct : P4073522514771105221.Spec := by
  intro n
  simp only [A333644, Nat.add_sub_cancel, A333644.P4073522514771105221.f2, A333644.P4073522514771105221.f1, A333644.P4073522514771105221.a, A333644.P1401994057420072058.f1, A333644.P1401994057420072058.a, A006093, A006093.P2906174024863549003.a, A007445, A007445.P6124287304801682810.f1, A007445.P6124287304801682810.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333644

/-! ## A333644.P16679784841221604620

`∑[∑{d}[n+1, A040976(#)+2]]`
-/

namespace A333644.P16679784841221604620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A040976 d + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P16679784841221604620

namespace A333644

/-- `∑[∑{d}[n+1, A040976(#)+2]]` -/
def P16679784841221604620.Spec : Prop :=
  ∀ n, P16679784841221604620.a n = A333644 (n + 1)

theorem P16679784841221604620.correct : P16679784841221604620.Spec := by
  intro n
  simp only [A333644, Nat.add_sub_cancel, A333644.P16679784841221604620.f2, A333644.P16679784841221604620.f1, A333644.P16679784841221604620.a, A333644.P1401994057420072058.f1, A333644.P1401994057420072058.a, A007445, A007445.P6124287304801682810.f1, A007445.P6124287304801682810.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A333644

/-! ## A333644.P2621856418993754146

`∑[∑{d}[n+1, A008578(#+1)]]`
-/

namespace A333644.P2621856418993754146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008578 (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333644.P2621856418993754146

namespace A333644

/-- `∑[∑{d}[n+1, A008578(#+1)]]` -/
def P2621856418993754146.Spec : Prop :=
  ∀ n, P2621856418993754146.a n = A333644 (n + 1)

end A333644

/-!
# A333645: a(n) = Sum_{d|n} uphi(d).

The programs for A333645, the canonical program `A333645.P13636423254639746421` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333645 has offset 1).

The definition of A333645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333645.P13636423254639746421

`∑{d}[n+1, A047994(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333645

/-- `∑{d}[n+1, A047994(#)]` -/
def P13636423254639746421.Spec : Prop :=
  ∀ n, P13636423254639746421.a n = A333645 (n + 1)

theorem P13636423254639746421.correct : P13636423254639746421.Spec := by
  intro n
  simp only [A333645, Nat.add_sub_cancel]

end A333645

/-! ## A333645.P616547281608596426

`∑{d}[n+1, #*A396336((n+1)/#)]`
-/

namespace A333645.P616547281608596426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A396336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333645.P616547281608596426

namespace A333645

/-- `∑{d}[n+1, #*A396336((n+1)/#)]` -/
def P616547281608596426.Spec : Prop :=
  ∀ n, P616547281608596426.a n = A333645 (n + 1)

end A333645

/-! ## A333645.P257286548697757822

`∑{d}[n+1, A344875(A026741(#))]`
-/

namespace A333645.P257286548697757822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344875 (A026741 d).toNat

end

end A333645.P257286548697757822

namespace A333645

/-- `∑{d}[n+1, A344875(A026741(#))]` -/
def P257286548697757822.Spec : Prop :=
  ∀ n, P257286548697757822.a n = A333645 (n + 1)

end A333645

/-! ## A333645.P9435485821383184367

`∑{d}[n+1, A023900(#)*A062949((n+1)/#)]`
-/

namespace A333645.P9435485821383184367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A062949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333645.P9435485821383184367

namespace A333645

/-- `∑{d}[n+1, A023900(#)*A062949((n+1)/#)]` -/
def P9435485821383184367.Spec : Prop :=
  ∀ n, P9435485821383184367.a n = A333645 (n + 1)

end A333645

/-! ## A333645.P2408894756446425956

`∑{d}[n+1, A062355(#)*A130054((n+1)/#)]`
-/

namespace A333645.P2408894756446425956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062355 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333645.P2408894756446425956

namespace A333645

/-- `∑{d}[n+1, A062355(#)*A130054((n+1)/#)]` -/
def P2408894756446425956.Spec : Prop :=
  ∀ n, P2408894756446425956.a n = A333645 (n + 1)

end A333645

/-! ## A333645.P11912113828185016321

`∑{d}[n+1, A055615(#)*A341636((n+1)/#)]`
-/

namespace A333645.P11912113828185016321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A341636 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333645.P11912113828185016321

namespace A333645

/-- `∑{d}[n+1, A055615(#)*A341636((n+1)/#)]` -/
def P11912113828185016321.Spec : Prop :=
  ∀ n, P11912113828185016321.a n = A333645 (n + 1)

end A333645

/-!
# A333647: Number of nonnegative lattice paths from (0,0) to (n,0) such that slopes of adjacent steps differ by at most one, assuming zero slope before and after the paths.

The programs for A333647, there is no canonical definition to state claims against.
-/

/-! ## A333647.P10497060868308256869

`A333680(n)/(n+1)`
-/

namespace A333647.P10497060868308256869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333680 n : ℚ) / (n + 1 : ℚ)

end

end A333647.P10497060868308256869

/-! ## A333647.P18237685840771531391

`A000027(A333680(n)/A291769(n))`
-/

namespace A333647.P18237685840771531391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A333680 n : ℚ) / (A291769 n : ℚ))).toNat

end

end A333647.P18237685840771531391

/-! ## A333647.P4259234662513009822

`A000027(A333680(n))/A005496(n)`
-/

namespace A333647.P4259234662513009822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A333680 n).toNat : ℚ) / (A005496 n : ℚ)

end

end A333647.P4259234662513009822

/-! ## A333647.P1778380419627269961

`A000027(A333680(n))/A348553(n)`
-/

namespace A333647.P1778380419627269961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A333680 n).toNat : ℚ) / (A348553 n : ℚ)

end

end A333647.P1778380419627269961

/-! ## A333647.P12844747020498785071

`A028310(A333680(n)/A005496(n))`
-/

namespace A333647.P12844747020498785071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A333680 n : ℚ) / (A005496 n : ℚ))).toNat

end

end A333647.P12844747020498785071

/-!
# A333648: Bemirp gaps: differences between consecutive bemirps.

The programs for A333648, there is no canonical definition to state claims against.
-/

/-! ## A333648.P1417289520438265708

`A048895(n+2)-A048895(n+1)`
-/

namespace A333648.P1417289520438265708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (n + 2) - A048895 (n + 1)

end

end A333648.P1417289520438265708

/-! ## A333648.P10489531287302308862

`Δ[A048895(n+1)]`
-/

namespace A333648.P10489531287302308862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333648.P10489531287302308862

/-! ## A333648.P3142258759656676

`Δ[record[A048895(A028920(n))]]`
-/

namespace A333648.P3142258759656676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333648.P3142258759656676

/-! ## A333648.P6738036874853162303

`Δ[record[A048895(A038568(n))]]`
-/

namespace A333648.P6738036874853162303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333648.P6738036874853162303

/-! ## A333648.P215857119605706943

`Δ[record[A048895(A038569(n))]]`
-/

namespace A333648.P215857119605706943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A333648.P215857119605706943

/-!
# A333649: Numbers k such that the second k binary digits of Pi represent a prime (leading zeros allowed).

The programs for A333649, there is no canonical definition to state claims against.
-/

/-! ## A333649.P14630252082881770158

`A136804(A094159(n)+A081148(n))`
-/

namespace A333649.P14630252082881770158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136804 (A094159 n + A081148 n).toNat

end

end A333649.P14630252082881770158

/-!
# A333650: Triangle read by rows: T(n,k) gives the number of domino towers of height k consisting of n bricks.

The programs for A333650, there is no canonical definition to state claims against.
-/

/-! ## A333650.P6803843982990592658

`A179390(A300700(n))`
-/

namespace A333650.P6803843982990592658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A300700 n).toNat

end

end A333650.P6803843982990592658

/-! ## A333650.P15988588129040041804

`A309407(A059427(n+2))-2`
-/

namespace A333650.P15988588129040041804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309407 (A059427 (n + 2)).toNat - 2

end

end A333650.P15988588129040041804

/-! ## A333650.P14971867358204945356

`A339659(A006723(n))+A097750(n)`
-/

namespace A333650.P14971867358204945356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (A006723 n).toNat + A097750 n

end

end A333650.P14971867358204945356

/-!
# A333651: Triangle T(n,k), n >= 2, 0 <= k <= floor(n^2/2)-2, read by rows, where T(n,k) is the number of 2*(k+2)-cycles in the n X n grid graph which pass through NW corner (0,0).

The programs for A333651, there is no canonical definition to state claims against.
-/

/-! ## A333651.P7677433478236872315

`gcd(A089810(n), A279069(A279065(n)))`
-/

namespace A333651.P7677433478236872315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089810 n) (A279069 (A279065 n).toNat)

end

end A333651.P7677433478236872315

/-! ## A333651.P1345313350589989665

`A033273(n+1)*A271076(A047062(n))`
-/

namespace A333651.P1345313350589989665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) * A271076 (A047062 n).toNat

end

end A333651.P1345313350589989665

/-! ## A333651.P8687428647930281833

`A123050(A003945(n)%A227007(n+1))`
-/

namespace A333651.P8687428647930281833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (Int.tmod (A003945 n) (A227007 (n + 1))).toNat

end

end A333651.P8687428647930281833

/-! ## A333651.P1286083966597523696

`A258850(A020715(n))+A003963(A012248(n)+3)`
-/

namespace A333651.P1286083966597523696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (A020715 n).toNat + A003963 (A012248 n + 3).toNat

end

end A333651.P1286083966597523696

/-!
# A333653: Expansion of Product_{i>=1, j>=1} (1 + i*x^(i*j)).

The programs for A333653, there is no canonical definition to state claims against.
-/

/-! ## A333653.P7365379228443373201

`A192065(n)-A237050(A192065(n))`
-/

namespace A333653.P7365379228443373201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192065 n - A237050 (A192065 n).toNat

end

end A333653.P7365379228443373201

/-!
# A333655: Highly composite numbers (A002182) that are not superior highly composite numbers (A002201).

The programs for A333655, there is no canonical definition to state claims against.
-/

/-! ## A333655.P3938375718740574863

`A245092(∪[A189228(n+1), A308913(n+1)])`
-/

namespace A333655.P3938375718740574863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308913 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333655.P3938375718740574863

/-! ## A333655.P15831070165743738381

`A103205(∪[A189228(n+1), A308913(n+1)])`
-/

namespace A333655.P15831070165743738381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308913 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333655.P15831070165743738381

/-! ## A333655.P4178394693867432274

`A103205(∪[A308913(n+1), A338786(n+1)])`
-/

namespace A333655.P4178394693867432274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338786 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A333655.P4178394693867432274

/-!
# A333656: Numbers having at least one 5 in their representation in base 6.

The programs for A333656, there is no canonical definition to state claims against.
-/

/-! ## A333656.P10234480907296482497

`comp[A037465(n)]`
-/

namespace A333656.P10234480907296482497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333656.P10234480907296482497

/-! ## A333656.P16268712187300888625

`lt[4, A190595(n)]`
-/

namespace A333656.P16268712187300888625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333656.P16268712187300888625

/-! ## A333656.P3464409404565741539

`eq[5, A319654(n)%6]`
-/

namespace A333656.P3464409404565741539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319654 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333656.P3464409404565741539

/-! ## A333656.P12670804941431682108

`lt[3, A006530(A338863(n))]`
-/

namespace A333656.P12670804941431682108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A338863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333656.P12670804941431682108

/-! ## A333656.P13386646253826250110

`eq[A168092(n), A190595(n)]`
-/

namespace A333656.P13386646253826250110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P13386646253826250110

/-! ## A333656.P12115370225803441009

`eq[2, A146989(A338863(n)+1)]`
-/

namespace A333656.P12115370225803441009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146989 (A338863 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333656.P12115370225803441009

/-! ## A333656.P3026955471843200274

`eq[A094324(n+1), A190595(n)]`
-/

namespace A333656.P3026955471843200274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P3026955471843200274

/-! ## A333656.P4569904009104694355

`eq[A128999(n+1), A190595(n)]`
-/

namespace A333656.P4569904009104694355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P4569904009104694355

/-! ## A333656.P16281304468392010747

`eq[A190595(n), A210032(n+1)]`
-/

namespace A333656.P16281304468392010747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P16281304468392010747

/-! ## A333656.P16301429675725780358

`eq[A190595(n), A374359(n+1)]`
-/

namespace A333656.P16301429675725780358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P16301429675725780358

/-! ## A333656.P9998236153145023039

`eq[A190595(n), A350362(n+3)]`
-/

namespace A333656.P9998236153145023039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350362 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A333656.P9998236153145023039

/-! ## A333656.P5472712403012068630

`eq[1, A165051(6*n)%6]`
-/

namespace A333656.P5472712403012068630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165051 (6 * n)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A333656.P5472712403012068630

/-! ## A333656.P1305217934611080552

`A068505(A283608(n+1))`
-/

namespace A333656.P1305217934611080552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A283608 (n + 1)).toNat

end

end A333656.P1305217934611080552

/-! ## A333656.P6061254670862204771

`lt[4, A054055(A007092(n))]`
-/

namespace A333656.P6061254670862204771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333656.P6061254670862204771

/-! ## A333656.P16735546696922555194

`lt[5, A054055(A202267(n+1))]`
-/

namespace A333656.P16735546696922555194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A202267 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333656.P16735546696922555194

/-! ## A333656.P15636593154122919225

`lt[4, A054055(lt[A054055(n), 6])]`
-/

namespace A333656.P15636593154122919225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A333656.P15636593154122919225

/-! ## A333656.P3322374922581016808

`A028901(A283608(n+1)+1)-1`
-/

namespace A333656.P3322374922581016808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A283608 (n + 1) + 1).toNat - 1

end

end A333656.P3322374922581016808

/-!
# A333658: a(n) is the greatest number m not yet in the sequence such that the primorial base expansions of n and of m have the same digits (up to order but with multiplicity).

The programs for A333658, there is no canonical definition to state claims against.
-/

/-! ## A333658.P17081175415310836015

`A337598(lt[A337598(n), 30])`
-/

namespace A333658.P17081175415310836015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337598 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A333658.P17081175415310836015

/-! ## A333658.P17119772672107431577

`A337598(n)%A088930(n)`
-/

namespace A333658.P17119772672107431577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337598 n) (A088930 n)

end

end A333658.P17119772672107431577

/-! ## A333658.P8149457581892416639

`A337598(n)+A010051(A061777(n))`
-/

namespace A333658.P8149457581892416639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337598 n + A010051 (A061777 n).toNat

end

end A333658.P8149457581892416639

/-! ## A333658.P15039466430556554319

`A348341(A034302(n+1))+A337598(n)`
-/

namespace A333658.P15039466430556554319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (A034302 (n + 1)).toNat + A337598 n

end

end A333658.P15039466430556554319

/-!
# A333659: a(n) is the greatest number m not yet in the sequence such that the decimal expansions of n and of m have the same digits (up to order but with multiplicity).

The programs for A333659, there is no canonical definition to state claims against.
-/

/-! ## A333659.P12137579014999083380

`A328447(n)+A118759(A108782(n))`
-/

namespace A333659.P12137579014999083380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 n + A118759 (A108782 n).toNat

end

end A333659.P12137579014999083380

/-!
# A333661: a(n) is the number of convex polyhedra with n edges whose faces are regular polygons.

The programs for A333661, there is no canonical definition to state claims against.
-/

/-! ## A333661.P12219397272589598958

`A289128(A289107(n))+A014405(n+1)`
-/

namespace A333661.P12219397272589598958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289128 (A289107 n).toNat + A014405 (n + 1)

end

end A333661.P12219397272589598958

/-!
# A333662: Number of electrons per shell in element Z=n expressed as a 32-bit unsigned integer.

The programs for A333662, there is no canonical definition to state claims against.
-/

/-! ## A333662.P5475098164915358188

`∑[A069003(A254362(A004526(n)))²]`
-/

namespace A333662.P5475098164915358188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069003 (A254362 (A004526 n).toNat).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333662.P5475098164915358188

/-! ## A333662.P14617732645793664943

`∑[A035218(A072264(A055377(n+4)))²]`
-/

namespace A333662.P14617732645793664943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A072264 (A055377 (n + 4)).toNat).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333662.P14617732645793664943

/-! ## A333662.P676914475079663381

`∑[A006519(ceil(sqrt(n))!²)]`
-/

namespace A333662.P676914475079663381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333662.P676914475079663381

/-! ## A333662.P1407716089954721192

`∑[A028233(ceil(sqrt(n))!²)]`
-/

namespace A333662.P1407716089954721192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333662.P1407716089954721192

/-! ## A333662.P6006542001705210447

`∑[A038502(ceil(sqrt(n))!²)]`
-/

namespace A333662.P6006542001705210447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333662.P6006542001705210447

/-!
# A333665: Numbers that occur in A057144 arranged in ascending order.

The programs for A333665, there is no canonical definition to state claims against.
-/

/-! ## A333665.P5205626565026579257

`A140635(A329004(record[A003961(n+1)]))`
-/

namespace A333665.P5205626565026579257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A329004 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A333665.P5205626565026579257

/-! ## A333665.P13789417103711790942

`record[A123258(∑[A105540(n)])]`
-/

namespace A333665.P13789417103711790942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105540 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333665.P13789417103711790942

/-! ## A333665.P16065638509500849426

`record[A139770(xor(n, A008486(n)))]`
-/

namespace A333665.P16065638509500849426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (Int.xor (n : ℤ) (A008486 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333665.P16065638509500849426

/-! ## A333665.P12099783910232353142

`A002182(lt[A345428(n+1), A247666(3*n)])`
-/

namespace A333665.P12099783910232353142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247666 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333665.P12099783910232353142

/-! ## A333665.P6621886165070583840

`A002182(lt[A230278(2*n), A230262(3*n)])`
-/

namespace A333665.P6621886165070583840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230278 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230262 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A333665.P6621886165070583840

/-!
# A333666: Smallest k > 0 with gcd(k, rev(k)) = n, where rev(k) is digit reversal of k and with sum of digits of k = n, or 0 if no such k exists.

The programs for A333666, there is no canonical definition to state claims against.
-/

/-! ## A333666.P2677871064686507258

`A002998(n+1)%A000124(A229394(n+1))`
-/

namespace A333666.P2677871064686507258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002998 (n + 1)) (A000124 (A229394 (n + 1)).toNat)

end

end A333666.P2677871064686507258

/-! ## A333666.P13433379470492592848

`A002998(A069554(n+1))%A032567(n+2)`
-/

namespace A333666.P13433379470492592848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002998 (A069554 (n + 1)).toNat) (A032567 (n + 2))

end

end A333666.P13433379470492592848

/-! ## A333666.P12945099003828104739

`and(A002998(n+1), A002998(A069554(n+1)))`
-/

namespace A333666.P12945099003828104739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002998 (n + 1)) (A002998 (A069554 (n + 1)).toNat)

end

end A333666.P12945099003828104739

/-! ## A333666.P7728602561901152081

`A002998(A084044(n+1)%A084044(2*n+3))`
-/

namespace A333666.P7728602561901152081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002998 (Int.tmod (A084044 (n + 1)) (A084044 (2 * n + 3))).toNat

end

end A333666.P7728602561901152081

/-! ## A333666.P13367005782149757692

`A062567(A043317(n+1))+A045943(A256756(n))`
-/

namespace A333666.P13367005782149757692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062567 (A043317 (n + 1)).toNat + A045943 (A256756 n).toNat

end

end A333666.P13367005782149757692

/-!
# A333667: Triangle T(n,k), n >= 2, 0 <= k <= floor(n^2/2)-2*n+2, read by rows, where T(n,k) is the number of 2*(k+2*n-2)-cycles in the n X n grid graph which pass through NW and SE corners ((0,0),(n-1,n-1)).

The programs for A333667, there is no canonical definition to state claims against.
-/

/-! ## A333667.P12723359955985526267

`gcd(A027451(A273670(2*n)), A242272(2*n+1))`
-/

namespace A333667.P12723359955985526267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027451 (A273670 (2 * n)).toNat) (A242272 (2 * n + 1))

end

end A333667.P12723359955985526267

/-!
# A333669: The smallest nontrivial quadratic residue modulo n.

The programs for A333669, there is no canonical definition to state claims against.
-/

/-! ## A333669.P3747468281666660607

`A285358(n+1)+A175066(A023592(n+1))`
-/

namespace A333669.P3747468281666660607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1) + A175066 (A023592 (n + 1)).toNat

end

end A333669.P3747468281666660607

/-! ## A333669.P10851688462020488489

`A136626(gcd(A055738(n+1), A055742(n+1)))`
-/

namespace A333669.P10851688462020488489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136626 (Int.gcd (A055738 (n + 1)) (A055742 (n + 1)))

end

end A333669.P10851688462020488489

/-! ## A333669.P2659196097769067347

`A276789(A298803(n+1)+1)`
-/

namespace A333669.P2659196097769067347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276789 (A298803 (n + 1) + 1).toNat

end

end A333669.P2659196097769067347

/-!
# A333675: Partial sums of non-Lucas numbers A057854.

The programs for A333675, the canonical program `A333675.P12697616808101946673` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333675 has offset 1).

The definition of A333675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333675.P12697616808101946673

`∑[comp[round(ϕ^(n-2))]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A333675

/-- `∑[comp[round(ϕ^(n-2))]]` -/
def P12697616808101946673.Spec : Prop :=
  ∀ n, (P12697616808101946673.a n : ℤ) = A333675 (n + 1)

theorem P12697616808101946673.correct : P12697616808101946673.Spec := by
  intro n
  simp only [A333675, Nat.add_sub_cancel]

end A333675

/-! ## A333675.P15764091015095654941

`2*∑[A057854(n+1)/2]`
-/

namespace A333675.P15764091015095654941
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057854 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333675.P15764091015095654941

namespace A333675

/-- `2*∑[A057854(n+1)/2]` -/
def P15764091015095654941.Spec : Prop :=
  ∀ n, P15764091015095654941.a n = (A333675 (n + 1) : ℚ)

end A333675

/-! ## A333675.P4247344838670325166

`∑[A057854(n+1)]%A017453(n)`
-/

namespace A333675.P4247344838670325166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017453 n)

end

end A333675.P4247344838670325166

namespace A333675

/-- `∑[A057854(n+1)]%A017453(n)` -/
def P4247344838670325166.Spec : Prop :=
  ∀ n, P4247344838670325166.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P6615408036069640007

`∑[A057854(n+1)]-A057427(A070939(n))+1`
-/

namespace A333675.P6615408036069640007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 (A070939 n).toNat + 1

end

end A333675.P6615408036069640007

namespace A333675

/-- `∑[A057854(n+1)]-A057427(A070939(n))+1` -/
def P6615408036069640007.Spec : Prop :=
  ∀ n, P6615408036069640007.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P13183951548663776611

`A000007(n+1)+∑[A057854(n+1)]`
-/

namespace A333675.P13183951548663776611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333675.P13183951548663776611

namespace A333675

/-- `A000007(n+1)+∑[A057854(n+1)]` -/
def P13183951548663776611.Spec : Prop :=
  ∀ n, P13183951548663776611.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P2271074455250874798

`A000007(n+1)+∑[comp[A000032(n)-1]+1]`
-/

namespace A333675.P2271074455250874798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333675.P2271074455250874798

namespace A333675

/-- `A000007(n+1)+∑[comp[A000032(n)-1]+1]` -/
def P2271074455250874798.Spec : Prop :=
  ∀ n, P2271074455250874798.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P15616092826775334573

`A000007(n+1)+∑[comp[A001612(n)-2]+1]`
-/

namespace A333675.P15616092826775334573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333675.P15616092826775334573

namespace A333675

/-- `A000007(n+1)+∑[comp[A001612(n)-2]+1]` -/
def P15616092826775334573.Spec : Prop :=
  ∀ n, P15616092826775334573.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P13507224581482615492

`A000038(n+3)+∑[A057854(n+1)]`
-/

namespace A333675.P13507224581482615492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333675.P13507224581482615492

namespace A333675

/-- `A000038(n+3)+∑[A057854(n+1)]` -/
def P13507224581482615492.Spec : Prop :=
  ∀ n, P13507224581482615492.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P9607636976067231231

`A000038(n+3)+∑[comp[A000032(n)-1]+1]`
-/

namespace A333675.P9607636976067231231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333675.P9607636976067231231

namespace A333675

/-- `A000038(n+3)+∑[comp[A000032(n)-1]+1]` -/
def P9607636976067231231.Spec : Prop :=
  ∀ n, P9607636976067231231.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P8799978577060207258

`A000038(n+3)+∑[comp[A001612(n)-2]+1]`
-/

namespace A333675.P8799978577060207258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A333675.P8799978577060207258

namespace A333675

/-- `A000038(n+3)+∑[comp[A001612(n)-2]+1]` -/
def P8799978577060207258.Spec : Prop :=
  ∀ n, P8799978577060207258.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P12121997739372743210

`∑[comp[A280699(n+1)-1]+1]%A014468(n+1)`
-/

namespace A333675.P12121997739372743210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A014468 (n + 1))

end

end A333675.P12121997739372743210

namespace A333675

/-- `∑[comp[A280699(n+1)-1]+1]%A014468(n+1)` -/
def P12121997739372743210.Spec : Prop :=
  ∀ n, P12121997739372743210.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P760097623325733648

`A000027(∑[A057854(n+1)])`
-/

namespace A333675.P760097623325733648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A333675.P760097623325733648

namespace A333675

/-- `A000027(∑[A057854(n+1)])` -/
def P760097623325733648.Spec : Prop :=
  ∀ n, P760097623325733648.a n = A333675 (n + 1)

end A333675

/-! ## A333675.P2068769555291559801

`A028310(∑[comp[A280699(n+1)-1]+1])`
-/

namespace A333675.P2068769555291559801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280699 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A333675.P2068769555291559801

namespace A333675

/-- `A028310(∑[comp[A280699(n+1)-1]+1])` -/
def P2068769555291559801.Spec : Prop :=
  ∀ n, P2068769555291559801.a n = A333675 (n + 1)

end A333675

/-!
# A333677: Numbers whose divisors can be partitioned into two disjoint sets whose sums are consecutive Fibonacci numbers.

The programs for A333677, there is no canonical definition to state claims against.
-/

/-! ## A333677.P3162584163098236413

`A272412(A046941(n+1)-A036987(n))`
-/

namespace A333677.P3162584163098236413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272412 (A046941 (n + 1) - A036987 n).toNat

end

end A333677.P3162584163098236413

/-!
# A333678: Total area under all nonnegative lattice paths from (0,0) to (n,0) such that slopes of adjacent steps differ by at most one, assuming zero slope before and after the paths.

The programs for A333678, there is no canonical definition to state claims against.
-/

/-! ## A333678.P5460847309799476549

`∑[A089848(n)%A090130(n)]`
-/

namespace A333678.P5460847309799476549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089848 n) (A090130 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333678.P5460847309799476549

/-! ## A333678.P8141420115145012668

`A172471(A000402(n+1))-floor(n/2)`
-/

namespace A333678.P8141420115145012668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000402 (n + 1)).toNat - ⌊(n : ℚ) / 2⌋

end

end A333678.P8141420115145012668

/-! ## A333678.P8252736674256840913

`A055086(round(A166881(n+1)/ceil(2^(n-1)))+1)-2`
-/

namespace A333678.P8252736674256840913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((A166881 (n + 1) : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)) + 1).toNat - 2

end

end A333678.P8252736674256840913

/-! ## A333678.P8255312856165990495

`A008651(A001870(n))-A331849(n)`
-/

namespace A333678.P8255312856165990495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A001870 n).toNat - A331849 n

end

end A333678.P8255312856165990495

/-!
# A333679: Sum of the heights of all nonnegative lattice paths from (0,0) to (n,0) such that slopes of adjacent steps differ by at most one, assuming zero slope before and after the paths.

The programs for A333679, there is no canonical definition to state claims against.
-/

/-! ## A333679.P1164599318092574265

`A185711(A183122(n+1))`
-/

namespace A333679.P1164599318092574265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185711 (A183122 (n + 1)).toNat

end

end A333679.P1164599318092574265

/-! ## A333679.P9529244989292843464

`A003056(A218957(n))-1`
-/

namespace A333679.P9529244989292843464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A218957 n).toNat - 1

end

end A333679.P9529244989292843464

/-! ## A333679.P8991667553554021332

`∑[A000196(A343909(n))-1]`
-/

namespace A333679.P8991667553554021332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A343909 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333679.P8991667553554021332

/-! ## A333679.P6047993778518580800

`floor(A135473(A135480(n+1))/log2(6))`
-/

namespace A333679.P6047993778518580800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135473 (A135480 (n + 1)).toNat : ℝ) / Real.logb 2 (6 : ℝ)⌋

end

end A333679.P6047993778518580800

/-! ## A333679.P11712456786943542003

`A033183(A080143(n)+A000793(n))`
-/

namespace A333679.P11712456786943542003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A080143 n + A000793 n).toNat

end

end A333679.P11712456786943542003

/-!
# A333680: Total number of nodes summed over all nonnegative lattice paths from (0,0) to (n,0) such that slopes of adjacent steps differ by at most one, assuming zero slope before and after the paths.

The programs for A333680, there is no canonical definition to state claims against.
-/

/-! ## A333680.P15323778643316351934

`(n+1)*A333647(n)`
-/

namespace A333680.P15323778643316351934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A333647 n

end

end A333680.P15323778643316351934

/-! ## A333680.P9282224560894703143

`lcm(A131732(2*n)*A333647(n), A333647(n))`
-/

namespace A333680.P9282224560894703143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131732 (2 * n) * A333647 n) (A333647 n)

end

end A333680.P9282224560894703143

/-! ## A333680.P11880606452077600474

`A057979(2*n)*A333647(n)*A131732(2*n)`
-/

namespace A333680.P11880606452077600474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A333647 n * A131732 (2 * n)

end

end A333680.P11880606452077600474

/-! ## A333680.P8028026285126317712

`A333647(n)/A333105(n)*A333106(n)`
-/

namespace A333680.P8028026285126317712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333647 n : ℚ) / (A333105 n : ℚ) * (A333106 n : ℚ)

end

end A333680.P8028026285126317712

/-! ## A333680.P15455730633870720844

`A333647(n)/A333069(n)*A333070(n)`
-/

namespace A333680.P15455730633870720844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333647 n : ℚ) / (A333069 n : ℚ) * (A333070 n : ℚ)

end

end A333680.P15455730633870720844

/-!
# A333681: Number of non-isomorphic n X n binary matrices with all row and column sums equal up to permutation of rows and columns.

The programs for A333681, there is no canonical definition to state claims against.
-/

/-! ## A333681.P8255618108462878292

`2*A333732(n)-A333160(n)`
-/

namespace A333681.P8255618108462878292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333732 n - A333160 n

end

end A333681.P8255618108462878292

/-! ## A333681.P15904461797180971725

`A057427(n)+A000519(round(sqrt(n²+1)))`
-/

namespace A333681.P15904461797180971725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000519 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A333681.P15904461797180971725

/-! ## A333681.P2418238454302359849

`A004277(A008324(n))-A333160(n)`
-/

namespace A333681.P2418238454302359849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008324 n).toNat - A333160 n

end

end A333681.P2418238454302359849

/-! ## A333681.P3719513831508235031

`A004277(A333732(n))-A333160(n)`
-/

namespace A333681.P3719513831508235031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A333732 n).toNat - A333160 n

end

end A333681.P3719513831508235031

/-!
# A333685: Triangle T(n,k), n>=0, 0 <= k <= n, read by rows, where T(n,k) is the number of self-avoiding paths in (2*n+1) X (2*k+1) grid starting the upper left corner, passing through the center of grid and finishing the lower right corner.

The programs for A333685, there is no canonical definition to state claims against.
-/

/-! ## A333685.P17490220020850076851

`A288494(n^(3-n)²)`
-/

namespace A333685.P17490220020850076851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288494 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((3 - (n : ℤ)) ^ 2 : ℤ))).toNat

end

end A333685.P17490220020850076851

/-!
# A333686: Number of self-avoiding paths in (2*n+1) X 3 grid starting the upper left corner, passing through the center of grid and finishing the lower right corner.

The programs for A333686, there is no canonical definition to state claims against.
-/

/-! ## A333686.P6290777683675113442

`record[ratio[A333685(n)]]`
-/

namespace A333686.P6290777683675113442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A333686.P6290777683675113442

/-! ## A333686.P103163253722456080

`A333685(∑[n]+1)`
-/

namespace A333686.P103163253722456080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A333686.P103163253722456080

/-!
# A333687: a(n) is the minimal value of k >= 0, such that the concatenation of the decimal digits of n,n+1,...,n+k is divisible by the digit sum of the concatenation, or -1 if no such k is known.

The programs for A333687, there is no canonical definition to state claims against.
-/

/-! ## A333687.P7472917499041053090

`A051516(xor(12, A049924(n+1)))`
-/

namespace A333687.P7472917499041053090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (Int.xor 12 (A049924 (n + 1))).toNat

end

end A333687.P7472917499041053090

/-! ## A333687.P13424330126657770596

`A174246(gcd(n+2, A085889(n+1)))`
-/

namespace A333687.P13424330126657770596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174246 (Int.gcd (n + 2 : ℤ) (A085889 (n + 1)))

end

end A333687.P13424330126657770596

/-! ## A333687.P3398358674795497660

`and(A054925(n), A112316(A336103(n)))`
-/

namespace A333687.P3398358674795497660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054925 n) (A112316 (A336103 n).toNat)

end

end A333687.P3398358674795497660

/-! ## A333687.P17058084629358074461

`A116385(gcd(A068581(n+1), A169954(2*n)))`
-/

namespace A333687.P17058084629358074461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (Int.gcd (A068581 (n + 1)) (A169954 (2 * n)))

end

end A333687.P17058084629358074461

/-! ## A333687.P17983216661197978878

`A128367(3*n+2)%A014493(A165045(n+1))`
-/

namespace A333687.P17983216661197978878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128367 (3 * n + 2)) (A014493 (A165045 (n + 1)).toNat)

end

end A333687.P17983216661197978878

/-!
# A333688: Partial sums of A070748.

The programs for A333688, the canonical program `A333688.P7202699584015010532` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333688 has offset 1).

The definition of A333688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333688.P7202699584015010532

`∑[A070748(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A333688

/-- `∑[A070748(n+1)]` -/
def P7202699584015010532.Spec : Prop :=
  ∀ n, P7202699584015010532.a n = A333688 (n + 1)

theorem P7202699584015010532.correct : P7202699584015010532.Spec := by
  intro n
  simp only [A333688, Nat.add_sub_cancel]

end A333688

/-! ## A333688.P3069393793981751764

`∑[or(1, floor(sin(A000040(n+1))))]`
-/

namespace A333688.P3069393793981751764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.sin (A000040 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P3069393793981751764

namespace A333688

/-- `∑[or(1, floor(sin(A000040(n+1))))]` -/
def P3069393793981751764.Spec : Prop :=
  ∀ n, P3069393793981751764.a n = A333688 (n + 1)

end A333688

/-! ## A333688.P15954077014979551161

`∑[A070748(Δ[n²]-n)%2]`
-/

namespace A333688.P15954077014979551161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070748 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P15954077014979551161

namespace A333688

/-- `∑[A070748(Δ[n²]-n)%2]` -/
def P15954077014979551161.Spec : Prop :=
  ∀ n, P15954077014979551161.a n = A333688 (n + 1)

end A333688

/-! ## A333688.P15906009873724598794

`A070748(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A333688.P15906009873724598794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070748 (n + 1) + a (A023443 n).toNat

end

end A333688.P15906009873724598794

namespace A333688

/-- `A070748(n+1)+a(A023443(n))` -/
def P15906009873724598794.Spec : Prop :=
  ∀ n, P15906009873724598794.a n = A333688 (n + 1)

end A333688

/-! ## A333688.P1225768563525620308

`∑[or(1, A000493(A000040(n+1)))]`
-/

namespace A333688.P1225768563525620308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000493 (A000040 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P1225768563525620308

namespace A333688

/-- `∑[or(1, A000493(A000040(n+1)))]` -/
def P1225768563525620308.Spec : Prop :=
  ∀ n, P1225768563525620308.a n = A333688 (n + 1)

end A333688

/-! ## A333688.P5480822292744690230

`∑[(-1)^A097428(n+2)]`
-/

namespace A333688.P5480822292744690230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A097428 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P5480822292744690230

namespace A333688

/-- `∑[(-1)^A097428(n+2)]` -/
def P5480822292744690230.Spec : Prop :=
  ∀ n, P5480822292744690230.a n = (A333688 (n + 1) : ℚ)

end A333688

/-! ## A333688.P16739561161525174153

`∑[A033999(A097428(n+2))]`
-/

namespace A333688.P16739561161525174153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A097428 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A333688.P16739561161525174153

namespace A333688

/-- `∑[A033999(A097428(n+2))]` -/
def P16739561161525174153.Spec : Prop :=
  ∀ n, P16739561161525174153.a n = A333688 (n + 1)

end A333688

/-!
# A333689: Number of self-avoiding paths in (2*n+1) X 5 grid starting the upper left corner, passing through the center of grid and finishing the lower right corner.

The programs for A333689, there is no canonical definition to state claims against.
-/

/-! ## A333689.P12617035270605812669

`A333685(A242362(n)+ceil(sqrt(n²+4)))`
-/

namespace A333689.P12617035270605812669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 (A242362 n + ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉).toNat

end

end A333689.P12617035270605812669

/-! ## A333689.P793226923272982188

`A333685(A325534(n)+A001935(n+2))`
-/

namespace A333689.P793226923272982188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333685 (A325534 n + A001935 (n + 2)).toNat

end

end A333689.P793226923272982188

/-!
# A333690: a(n) = n*Product_{k=1..n} floor(k^((n-k)/(n-k+1))).

The programs for A333690, there is no canonical definition to state claims against.
-/

/-! ## A333690.P11288686817518457497

`∑[A025785(n)]*A034380(n!)`
-/

namespace A333690.P11288686817518457497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034380 (Nat.factorial n)

end

end A333690.P11288686817518457497

/-! ## A333690.P7170858288754564578

`record[A053252(n)]*A034380(n!)`
-/

namespace A333690.P7170858288754564578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A034380 (Nat.factorial n)

end

end A333690.P7170858288754564578

/-! ## A333690.P12878325904158563104

`A004709(n+1)*A034380(n!)`
-/

namespace A333690.P12878325904158563104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) * A034380 (Nat.factorial n)

end

end A333690.P12878325904158563104

/-! ## A333690.P13952967391628906965

`A033948(n+1)*A034380(n!)`
-/

namespace A333690.P13952967391628906965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1) * A034380 (Nat.factorial n)

end

end A333690.P13952967391628906965

/-!
# A333691: Expansion of e.g.f. arctan(1 - sqrt(1 - x^2)) (even powers only).

The programs for A333691, there is no canonical definition to state claims against.
-/

/-! ## A333691.P4108577265810216250

`∏[A113648(∏[∏{p}[n+1, #]])]`
-/

namespace A333691.P4108577265810216250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113648 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A333691.P4108577265810216250

/-!
# A333692: Scan the binary representation of n from left to right; at each 1, reverse the bits to the left and including this 1. The resulting binary representation is that of a(n).

The programs for A333692, there is no canonical definition to state claims against.
-/

/-! ## A333692.P4817406271122067859

`A333776(A333693(A333776(n)))`
-/

namespace A333692.P4817406271122067859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A333693 (A333776 n).toNat).toNat

end

end A333692.P4817406271122067859

/-! ## A333692.P7067238160912407538

`A333776(A333776(A367307(A333777(n))))`
-/

namespace A333692.P7067238160912407538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A333776 (A367307 (A333777 n).toNat).toNat).toNat

end

end A333692.P7067238160912407538

/-! ## A333692.P5691643109510833399

`A333776(A030109(2*n+1))`
-/

namespace A333692.P5691643109510833399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A030109 (2 * n + 1)).toNat

end

end A333692.P5691643109510833399

/-! ## A333692.P16416701174269989027

`A333776(A053645(A059893(2*n+1)))`
-/

namespace A333692.P16416701174269989027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A053645 (A059893 (2 * n + 1)).toNat).toNat

end

end A333692.P16416701174269989027

/-! ## A333692.P16789843118166490336

`A333776(A333776(A053645(A333777(2*n+1))))`
-/

namespace A333692.P16789843118166490336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A333776 (A053645 (A333777 (2 * n + 1)).toNat).toNat).toNat

end

end A333692.P16789843118166490336

/-!
# A333693: Inverse permutation to A333692.

The programs for A333693, there is no canonical definition to state claims against.
-/

/-! ## A333693.P3730006215979945361

`A333777(A333692(A333777(n)))`
-/

namespace A333693.P3730006215979945361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A333692 (A333777 n).toNat).toNat

end

end A333693.P3730006215979945361

/-!
# A333694: Expansion of Sum_{k>=1} k * x^k / (1 - x^(k^2)).

The programs for A333694, there is no canonical definition to state claims against.
-/

/-! ## A333694.P15439066064424224290

`A073180(lt[A323092(n), A358137(3*n+2)]+1)+n`
-/

namespace A333694.P15439066064424224290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) + (n : ℤ)

end

end A333694.P15439066064424224290

/-! ## A333694.P10480124555860228567

`A209302(xor(A187829(n+1)², A183096(n+1)))`
-/

namespace A333694.P10480124555860228567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (Int.xor (A187829 (n + 1) ^ 2) (A183096 (n + 1))).toNat

end

end A333694.P10480124555860228567

/-! ## A333694.P3393943569615251899

`A159999(2^n)+∏{e}[n+1, #+1]-∏{e}[n+1, #]`
-/

namespace A333694.P3393943569615251899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159999 (2 ^ n) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

end

end A333694.P3393943569615251899

/-! ## A333694.P7206870294196109874

`A056239(2^n)+∑{d}[n+1, ceil(2/#)]-∏{e}[n+1, #]`
-/

namespace A333694.P7206870294196109874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 ^ n) + (∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

end

end A333694.P7206870294196109874

/-! ## A333694.P5768106308385786532

`A007814(2^n)+∏{e}[n+1, #+1]+1-∏{e}[n+1, #]`
-/

namespace A333694.P5768106308385786532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 ^ n) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

end

end A333694.P5768106308385786532

/-!
# A333695: Numerators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

The programs for A333695, the canonical program `A333695.P11755395087226046441` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333695 has offset 1).

The definition of A333695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333695.P11755395087226046441

`lcm(n+1, A057660(n+1))/(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333695

/-- `lcm(n+1, A057660(n+1))/(n+1)` -/
def P11755395087226046441.Spec : Prop :=
  ∀ n, P11755395087226046441.a n = (A333695 (n + 1) : ℚ)

end A333695

/-! ## A333695.P12969566676165255439

`A057660(n+1)/(n+1)*A333696(n+1)`
-/

namespace A333695.P12969566676165255439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057660 (n + 1) : ℚ) / (n + 1 : ℚ) * (A333696 (n + 1) : ℚ)

end

end A333695.P12969566676165255439

namespace A333695

/-- `A057660(n+1)/(n+1)*A333696(n+1)` -/
def P12969566676165255439.Spec : Prop :=
  ∀ n, P12969566676165255439.a n = (A333695 (n + 1) : ℚ)

end A333695

/-! ## A333695.P6185236450315215070

`lcm(A057660(n+1), A103517(n))/A103517(n)`
-/

namespace A333695.P6185236450315215070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057660 (n + 1)) (A103517 n) : ℚ) / (A103517 n : ℚ)

end

end A333695.P6185236450315215070

namespace A333695

/-- `lcm(A057660(n+1), A103517(n))/A103517(n)` -/
def P6185236450315215070.Spec : Prop :=
  ∀ n, P6185236450315215070.a n = (A333695 (n + 1) : ℚ)

end A333695

/-! ## A333695.P5374651597828278122

`A057660(n+1)/gcd(A057660(n+1), A131738(n))`
-/

namespace A333695.P5374651597828278122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057660 (n + 1) : ℚ) / (Int.gcd (A057660 (n + 1)) (A131738 n) : ℚ)

end

end A333695.P5374651597828278122

namespace A333695

/-- `A057660(n+1)/gcd(A057660(n+1), A131738(n))` -/
def P5374651597828278122.Spec : Prop :=
  ∀ n, P5374651597828278122.a n = (A333695 (n + 1) : ℚ)

end A333695

/-! ## A333695.P11093230126043857786

`A294649(record[A194055(n+1)²])`
-/

namespace A333695.P11093230126043857786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194055 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294649 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A333695.P11093230126043857786

namespace A333695

/-- `A294649(record[A194055(n+1)²])` -/
def P11093230126043857786.Spec : Prop :=
  ∀ n, P11093230126043857786.a n = A333695 (n + 1)

end A333695

/-!
# A333696: Denominators of coefficients in expansion of Sum_{k>=1} phi(k) * log(1/(1 - x^k)).

The programs for A333696, the canonical program `A333696.P5461163465730719669` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333696 has offset 1).

The definition of A333696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333696.P5461163465730719669

`(n+1)/gcd(n+1, A057660(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A333696

/-- `(n+1)/gcd(n+1, A057660(n+1))` -/
def P5461163465730719669.Spec : Prop :=
  ∀ n, P5461163465730719669.a n = (A333696 (n + 1) : ℚ)

end A333696

/-! ## A333696.P3895951622771063841

`(n+1)/gcd(A057660(n+1), A103517(n))`
-/

namespace A333696.P3895951622771063841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A057660 (n + 1)) (A103517 n) : ℚ)

end

end A333696.P3895951622771063841

namespace A333696

/-- `(n+1)/gcd(A057660(n+1), A103517(n))` -/
def P3895951622771063841.Spec : Prop :=
  ∀ n, P3895951622771063841.a n = (A333696 (n + 1) : ℚ)

end A333696

/-! ## A333696.P3542415883867749229

`(n+1)/A057660(n+1)*A333695(n+1)`
-/

namespace A333696.P3542415883867749229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057660 (n + 1) : ℚ) * (A333695 (n + 1) : ℚ)

end

end A333696.P3542415883867749229

namespace A333696

/-- `(n+1)/A057660(n+1)*A333695(n+1)` -/
def P3542415883867749229.Spec : Prop :=
  ∀ n, P3542415883867749229.a n = (A333696 (n + 1) : ℚ)

end A333696

/-! ## A333696.P1425169055396865105

`(n+1)/gcd(A061019(n+1), A086148(n+1))`
-/

namespace A333696.P1425169055396865105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A061019 (n + 1)) (A086148 (n + 1)) : ℚ)

end

end A333696.P1425169055396865105

namespace A333696

/-- `(n+1)/gcd(A061019(n+1), A086148(n+1))` -/
def P1425169055396865105.Spec : Prop :=
  ∀ n, P1425169055396865105.a n = (A333696 (n + 1) : ℚ)

end A333696

/-! ## A333696.P8032325541370800353

`lcm(A057660(n+1), A061019(n+1))/A057660(n+1)`
-/

namespace A333696.P8032325541370800353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057660 (n + 1)) (A061019 (n + 1)) : ℚ) / (A057660 (n + 1) : ℚ)

end

end A333696.P8032325541370800353

namespace A333696

/-- `lcm(A057660(n+1), A061019(n+1))/A057660(n+1)` -/
def P8032325541370800353.Spec : Prop :=
  ∀ n, P8032325541370800353.a n = (A333696 (n + 1) : ℚ)

end A333696

/-!
# A333697: a(n) = Sum_{d|n} (-1)^omega(n/d) * phi(rad(n/d)) * p(d), where p = A000041 (partition numbers).

The programs for A333697, there is no canonical definition to state claims against.
-/

/-! ## A333697.P11125851700244357493

`∑{d}[n+1, A000041(#)*A023900((n+1)/#)]`
-/

namespace A333697.P11125851700244357493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333697.P11125851700244357493

/-! ## A333697.P12018911824694665703

`∑{d}[n+1, A047968(#)*A055615((n+1)/#)]`
-/

namespace A333697.P12018911824694665703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047968 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333697.P12018911824694665703

/-! ## A333697.P18305858802409397139

`∑{d}[n+1, A078392(#)*A328641((n+1)/#)]`
-/

namespace A333697.P18305858802409397139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078392 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333697.P18305858802409397139

/-! ## A333697.P378538313439001835

`A306186(A000124(n))-n-A302984(A022446(n+3))`
-/

namespace A333697.P378538313439001835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306186 (A000124 n).toNat - (n : ℤ) - A302984 (A022446 (n + 3)).toNat

end

end A333697.P378538313439001835

/-! ## A333697.P14270157206142425934

`A140473(A298414(n+1))`
-/

namespace A333697.P14270157206142425934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140473 (A298414 (n + 1)).toNat

end

end A333697.P14270157206142425934

/-!
# A333698: G.f.: Sum_{k>=1} phi(k) * x^prime(k) / (1 - x^prime(k)).

The programs for A333698, the canonical program `A333698.P12169548625343565124` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333698 has offset 1).

The definition of A333698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333698.P12169548625343565124

`∑{p}[n+1, A000010(A000720(#))]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A333698

/-- `∑{p}[n+1, A000010(A000720(#))]` -/
def P12169548625343565124.Spec : Prop :=
  ∀ n, P12169548625343565124.a n = A333698 (n + 1)

theorem P12169548625343565124.correct : P12169548625343565124.Spec := by
  intro n
  simp only [A333698, Nat.add_sub_cancel]

end A333698

/-! ## A333698.P14140258394105229610

`∑{p}[n+1, A000010(A003963(#))]`
-/

namespace A333698.P14140258394105229610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A003963 p).toNat

end

end A333698.P14140258394105229610

namespace A333698

/-- `∑{p}[n+1, A000010(A003963(#))]` -/
def P14140258394105229610.Spec : Prop :=
  ∀ n, P14140258394105229610.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P17919382376388479276

`∑{p}[n+1, A000010(A026233(#))]`
-/

namespace A333698.P17919382376388479276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A026233 p).toNat

end

end A333698.P17919382376388479276

namespace A333698

/-- `∑{p}[n+1, A000010(A026233(#))]` -/
def P17919382376388479276.Spec : Prop :=
  ∀ n, P17919382376388479276.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P14812261207793497893

`∑{p}[n+1, A000010(A026238(#))]`
-/

namespace A333698.P14812261207793497893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A026238 p).toNat

end

end A333698.P14812261207793497893

namespace A333698

/-- `∑{p}[n+1, A000010(A026238(#))]` -/
def P14812261207793497893.Spec : Prop :=
  ∀ n, P14812261207793497893.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P16147633621662123333

`∑{p}[n+1, A000010(A049084(#))]`
-/

namespace A333698.P16147633621662123333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A049084 p).toNat

end

end A333698.P16147633621662123333

namespace A333698

/-- `∑{p}[n+1, A000010(A049084(#))]` -/
def P16147633621662123333.Spec : Prop :=
  ∀ n, P16147633621662123333.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P7103736630772952134

`∑{p}[n+1, A000010(A055396(#))]`
-/

namespace A333698.P7103736630772952134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A055396 p).toNat

end

end A333698.P7103736630772952134

namespace A333698

/-- `∑{p}[n+1, A000010(A055396(#))]` -/
def P7103736630772952134.Spec : Prop :=
  ∀ n, P7103736630772952134.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P14196986574288392218

`∑{p}[n+1, A000010(A056239(#))]`
-/

namespace A333698.P14196986574288392218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A056239 p).toNat

end

end A333698.P14196986574288392218

namespace A333698

/-- `∑{p}[n+1, A000010(A056239(#))]` -/
def P14196986574288392218.Spec : Prop :=
  ∀ n, P14196986574288392218.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P7826716612640477989

`∑{p}[n+1, A000010(A061395(#))]`
-/

namespace A333698.P7826716612640477989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A061395 p).toNat

end

end A333698.P7826716612640477989

namespace A333698

/-- `∑{p}[n+1, A000010(A061395(#))]` -/
def P7826716612640477989.Spec : Prop :=
  ∀ n, P7826716612640477989.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P1875751156137271715

`∑{p}[n+1, A000010(A065770(#))]`
-/

namespace A333698.P1875751156137271715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A065770 p).toNat

end

end A333698.P1875751156137271715

namespace A333698

/-- `∑{p}[n+1, A000010(A065770(#))]` -/
def P1875751156137271715.Spec : Prop :=
  ∀ n, P1875751156137271715.a n = A333698 (n + 1)

end A333698

/-! ## A333698.P14842122999162159175

`∑{p}[n+1, A000010(A026099(#))]`
-/

namespace A333698.P14842122999162159175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (A026099 p).toNat

end

end A333698.P14842122999162159175

namespace A333698

/-- `∑{p}[n+1, A000010(A026099(#))]` -/
def P14842122999162159175.Spec : Prop :=
  ∀ n, P14842122999162159175.a n = A333698 (n + 1)

end A333698

/-!
# A333699: a(n) = Sum_{d|n} phi(n/d) * pi(d).

The programs for A333699, the canonical program `A333699.P2425366360681708954` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A333699 has offset 1).

The definition of A333699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A333699.P2425366360681708954

`∑{d}[n+1, #*A062778((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A333699

/-- `∑{d}[n+1, #*A062778((n+1)/#)]` -/
def P2425366360681708954.Spec : Prop :=
  ∀ n, P2425366360681708954.a n = A333699 (n + 1)

theorem P2425366360681708954.correct : P2425366360681708954.Spec := by
  intro n
  simp only [A333699, Nat.add_sub_cancel]

end A333699

/-! ## A333699.P8081766352849180489

`∑{d}[n+1, A000010(#)*A000720((n+1)/#)]`
-/

namespace A333699.P8081766352849180489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333699.P8081766352849180489

namespace A333699

/-- `∑{d}[n+1, A000010(#)*A000720((n+1)/#)]` -/
def P8081766352849180489.Spec : Prop :=
  ∀ n, P8081766352849180489.a n = A333699 (n + 1)

end A333699

/-! ## A333699.P6307763881486485014

`∑{d}[n+1, A007431(#)*A062774((n+1)/#)]`
-/

namespace A333699.P6307763881486485014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A062774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333699.P6307763881486485014

namespace A333699

/-- `∑{d}[n+1, A007431(#)*A062774((n+1)/#)]` -/
def P6307763881486485014.Spec : Prop :=
  ∀ n, P6307763881486485014.a n = A333699 (n + 1)

end A333699

/-! ## A333699.P16615840592826422464

`∑{d}[n+1, A008683(#)*A386596((n+1)/#)]`
-/

namespace A333699.P16615840592826422464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A386596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333699.P16615840592826422464

namespace A333699

/-- `∑{d}[n+1, A008683(#)*A386596((n+1)/#)]` -/
def P16615840592826422464.Spec : Prop :=
  ∀ n, P16615840592826422464.a n = A333699 (n + 1)

end A333699

/-! ## A333699.P9976423241063132444

`∑{d}[n+1, A000010(#)*A230980((n+1)/#)]`
-/

namespace A333699.P9976423241063132444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A230980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A333699.P9976423241063132444

namespace A333699

/-- `∑{d}[n+1, A000010(#)*A230980((n+1)/#)]` -/
def P9976423241063132444.Spec : Prop :=
  ∀ n, P9976423241063132444.a n = A333699 (n + 1)

end A333699

