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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A032200: Number of rooted compound windmills (mobiles) of n nodes.

The programs for A032200, there is no canonical definition to state claims against.
-/

/-! ## A032200.P12811067919099830690

`A130969(n)-A337821(A000111(n))`
-/

namespace A032200.P12811067919099830690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130969 n - A337821 (A000111 n).toNat

end

end A032200.P12811067919099830690

/-! ## A032200.P4936813098288858882

`A130969(A032863(n+1))`
-/

namespace A032200.P4936813098288858882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130969 (A032863 (n + 1)).toNat

end

end A032200.P4936813098288858882

/-! ## A032200.P242985189583743997

`A130969(A140576(n+1))`
-/

namespace A032200.P242985189583743997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130969 (A140576 (n + 1)).toNat

end

end A032200.P242985189583743997

/-! ## A032200.P7305163505319226894

`A130969(lt[A130952(n), 11])`
-/

namespace A032200.P7305163505319226894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130952 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130969 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A032200.P7305163505319226894

/-!
# A032201: Number of rooted compound windmills with n nodes and leaves of 2 colors.

The programs for A032201, there is no canonical definition to state claims against.
-/

/-! ## A032201.P11177567385889747541

`A084294(A096978(n+1))`
-/

namespace A032201.P11177567385889747541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084294 (A096978 (n + 1)).toNat

end

end A032201.P11177567385889747541

/-! ## A032201.P17547364682871062297

`A157271(A049151(n))+A014398(n)`
-/

namespace A032201.P17547364682871062297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A049151 n).toNat + A014398 n

end

end A032201.P17547364682871062297

/-! ## A032201.P10287191300166985901

`A108954(A056272(n)*A097619(n+1))`
-/

namespace A032201.P10287191300166985901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A056272 n * A097619 (n + 1)).toNat

end

end A032201.P10287191300166985901

/-!
# A032202: Sequence (a(n): n >= 1) that shifts left 2 places under the "CIK" (necklace, indistinct, unlabeled) transform and satisfies a(1) = a(2) = 1.

The programs for A032202, there is no canonical definition to state claims against.
-/

/-! ## A032202.P7336450164908447847

`A355301(A063687(n))+1`
-/

namespace A032202.P7336450164908447847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A063687 n).toNat + 1

end

end A032202.P7336450164908447847

/-! ## A032202.P1741169657018096738

`A316521(A274160(n))+A055641(n+1)`
-/

namespace A032202.P1741169657018096738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316521 (A274160 n).toNat + A055641 (n + 1)

end

end A032202.P1741169657018096738

/-! ## A032202.P15791916601881066770

`xor(A007477(n), A318380(A318363(n+1)))`
-/

namespace A032202.P15791916601881066770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007477 n) (A318380 (A318363 (n + 1)).toNat)

end

end A032202.P15791916601881066770

/-! ## A032202.P4661238850061273517

`A319571((n*a(n-2))²)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A032202.P4661238850061273517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A319571 (((n : ℤ) * a (n - 2)) ^ 2).toNat + 1

end

end A032202.P4661238850061273517

/-! ## A032202.P7535011716473883318

`A120401(A030227(n))`
-/

namespace A032202.P7535011716473883318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A030227 n).toNat

end

end A032202.P7535011716473883318

/-!
# A032203: Number of series-reduced planted compound windmills with n leaves.

The programs for A032203, there is no canonical definition to state claims against.
-/

/-! ## A032203.P6723519273023539593

`A023193(or(2^val(n+1, 2), A149904(n)))`
-/

namespace A032203.P6723519273023539593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A149904 n)).toNat

end

end A032203.P6723519273023539593

/-! ## A032203.P5139739688880879787

`A023193(or(or(n, n+1)-n, A149904(n)))`
-/

namespace A032203.P5139739688880879787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) (A149904 n)).toNat

end

end A032203.P5139739688880879787

/-! ## A032203.P15817071551245251344

`A023193(or(and(n+1, -(n+1)), A149904(n)))`
-/

namespace A032203.P15817071551245251344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) (A149904 n)).toNat

end

end A032203.P15817071551245251344

/-! ## A032203.P7493491630588996324

`A023193(or((xor(n, n+1)+1)/2, A149904(n)))`
-/

namespace A032203.P7493491630588996324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) + 1 : ℚ) / 2)) (A149904 n)).toNat

end

end A032203.P7493491630588996324

/-!
# A032204: Number of series-reduced planted compound windmills with n leaves of 2 colors.

The programs for A032204, there is no canonical definition to state claims against.
-/

/-! ## A032204.P2585028817358101974

`A367085(a(n-1)-1)` with `a(0)=2, a(1)=3`
-/

namespace A032204.P2585028817358101974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A367085 (a (n - 1) - 1).toNat

end

end A032204.P2585028817358101974

/-!
# A032205: Number of connected functions on n points with a loop of length 9.

The programs for A032205, there is no canonical definition to state claims against.
-/

/-! ## A032205.P14666318908385162832

`A339428(A000096(n+7)+10)`
-/

namespace A032205.P14666318908385162832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000096 (n + 7) + 10).toNat

end

end A032205.P14666318908385162832

/-! ## A032205.P7874645133255540397

`A339428(A000217(n+8)+9)`
-/

namespace A032205.P7874645133255540397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 8) + 9).toNat

end

end A032205.P7874645133255540397

/-! ## A032205.P10619697722564406386

`A339428(A161680(n+9)+9)`
-/

namespace A032205.P10619697722564406386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A161680 (n + 9) + 9).toNat

end

end A032205.P10619697722564406386

/-! ## A032205.P2061508177950554809

`A339428(A000124(n+9)-(n+1))`
-/

namespace A032205.P2061508177950554809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000124 (n + 9) - (n + 1 : ℤ)).toNat

end

end A032205.P2061508177950554809

/-! ## A032205.P18231243512981913764

`A339428(A167499(n+8)-(n+5))`
-/

namespace A032205.P18231243512981913764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167499 (n + 8) - (n + 5 : ℤ)).toNat

end

end A032205.P18231243512981913764

/-!
# A032206: Number of connected functions on n points with a loop of length 10.

The programs for A032206, there is no canonical definition to state claims against.
-/

/-! ## A032206.P13203678553558864456

`A339428(A000124(n+9)+9)`
-/

namespace A032206.P13203678553558864456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000124 (n + 9) + 9).toNat

end

end A032206.P13203678553558864456

/-! ## A032206.P3139252619997507452

`A339428(A000217(n+9)+10)`
-/

namespace A032206.P3139252619997507452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 9) + 10).toNat

end

end A032206.P3139252619997507452

/-! ## A032206.P10226435792111977891

`A339428(A167499(n+9)-(n+5))`
-/

namespace A032206.P10226435792111977891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A167499 (n + 9) - (n + 5 : ℤ)).toNat

end

end A032206.P10226435792111977891

/-! ## A032206.P8406786547190617404

`A339428(A052905(n+8)-6-2*n)`
-/

namespace A032206.P8406786547190617404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A052905 (n + 8) - 6 - (2 * n : ℤ)).toNat

end

end A032206.P8406786547190617404

/-! ## A032206.P3359923709330936426

`A339428(A055998(n+9)-8-2*n)`
-/

namespace A032206.P3359923709330936426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A055998 (n + 9) - 8 - (2 * n : ℤ)).toNat

end

end A032206.P3359923709330936426

/-!
# A032207: Number of connected functions on n points with a loop of length 11.

The programs for A032207, there is no canonical definition to state claims against.
-/

/-! ## A032207.P5852019789569512868

`A339428(eq[19, A066657(n)])`
-/

namespace A032207.P5852019789569512868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032207.P5852019789569512868

/-! ## A032207.P12341568913559337840

`A339428(A000217(n+10)+11)`
-/

namespace A032207.P12341568913559337840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 10) + 11).toNat

end

end A032207.P12341568913559337840

/-! ## A032207.P3022729284337905172

`A339428(eq[10, A002262(n)]+1)`
-/

namespace A032207.P3022729284337905172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A032207.P3022729284337905172

/-! ## A032207.P17174643242811155472

`A339428(eq[12, A131818(n+1)])`
-/

namespace A032207.P17174643242811155472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032207.P17174643242811155472

/-!
# A032208: Number of connected functions on n points with a loop of length 12.

The programs for A032208, there is no canonical definition to state claims against.
-/

/-! ## A032208.P8305467530607482050

`A339428(A000217(n+11)+12)`
-/

namespace A032208.P8305467530607482050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (A000217 (n + 11) + 12).toNat

end

end A032208.P8305467530607482050

/-! ## A032208.P10195132648348006560

`A339428(eq[13, A131818(n+1)])`
-/

namespace A032208.P10195132648348006560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032208.P10195132648348006560

/-!
# A032210: "DFJ" (bracelet, size, labeled) transform of 2,1,1,1...

The programs for A032210, there is no canonical definition to state claims against.
-/

/-! ## A032210.P2970554906667464726

`2*A032219(n)-A032221(n)`
-/

namespace A032210.P2970554906667464726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032219 n - A032221 n

end

end A032210.P2970554906667464726

/-! ## A032210.P2300956032161077187

`2*A032219(n)-A032311(A122201(∑[n]))`
-/

namespace A032210.P2300956032161077187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032219 n - A032311 (A122201 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032210.P2300956032161077187

/-! ## A032210.P509053782585765866

`2*A032219(n)-A032311(A181940(∑[n]))`
-/

namespace A032210.P509053782585765866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032219 n - A032311 (A181940 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A032210.P509053782585765866

/-! ## A032210.P7303122813776304716

`2*A032219(n)-A032311(n)^A007318(A156815(n))`
-/

namespace A032210.P7303122813776304716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A032219 n : ℚ) - (A032311 n : ℚ) ^ (A007318 (A156815 n).toNat : ℤ)

end

end A032210.P7303122813776304716

/-! ## A032210.P8592914409634250559

`2*A032219(n)-∑{d}[A032311(n), A000010(#)]`
-/

namespace A032210.P8592914409634250559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032219 n - ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A032210.P8592914409634250559

/-!
# A032215: "DFK" (bracelet, size, unlabeled) transform of 2,1,1,1...

The programs for A032215, there is no canonical definition to state claims against.
-/

/-! ## A032215.P15356563460248409006

`2*A032228(n)-A032230(n)`
-/

namespace A032215.P15356563460248409006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032228 n - A032230 n

end

end A032215.P15356563460248409006

/-! ## A032215.P15881231971815388154

`ceil((A110654(n)+A032140(n))/2)`
-/

namespace A032215.P15881231971815388154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110654 n + A032140 n : ℚ) / 2⌉

end

end A032215.P15881231971815388154

/-! ## A032215.P15096152884682020205

`round((A065033(n)+A032140(n))/2)`
-/

namespace A032215.P15096152884682020205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065033 n + A032140 n : ℚ) / 2)

end

end A032215.P15096152884682020205

/-! ## A032215.P16410781092776665428

`round(A000007(n+1)+(A110654(n)+A032140(n))/2)`
-/

namespace A032215.P16410781092776665428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℚ) + (A110654 n + A032140 n : ℚ) / 2)

end

end A032215.P16410781092776665428

/-! ## A032215.P6238258490220327196

`round((A110654(n)+A032140(n))/2*A000034(2*n))`
-/

namespace A032215.P6238258490220327196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110654 n + A032140 n : ℚ) / 2 * (A000034 (2 * n) : ℚ))

end

end A032215.P6238258490220327196

/-!
# A032217: "DFK" (bracelet, size, unlabeled) transform of 1,3,5,7...

The programs for A032217, there is no canonical definition to state claims against.
-/

/-! ## A032217.P4752544046768443145

`A032304(n^∑{digits}[n, (#%2)!]^∑{digits}[n, (#%2)!])`
-/

namespace A032217.P4752544046768443145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032304 (n ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum)

end

end A032217.P4752544046768443145

/-! ## A032217.P4892747475999244352

`A032304(A087051(n))`
-/

namespace A032217.P4892747475999244352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032304 (A087051 n).toNat

end

end A032217.P4892747475999244352

/-! ## A032217.P15759803363150655670

`A032304(A004915(n+1))`
-/

namespace A032217.P15759803363150655670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032304 (A004915 (n + 1)).toNat

end

end A032217.P15759803363150655670

/-! ## A032217.P6001186746740935427

`filter[A032304(n), A237048(#)]`
-/

namespace A032217.P6001186746740935427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A237048 (f1 j).toNat = 1) n)

end

end A032217.P6001186746740935427

/-! ## A032217.P14625531755464917436

`A032304(2*A087036(n)-n)`
-/

namespace A032217.P14625531755464917436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032304 (2 * A087036 n - (n : ℤ)).toNat

end

end A032217.P14625531755464917436

/-!
# A032218: Number of dyslexic rooted compound windmills with n nodes where any 2 submills extending from the same node are different sizes.

The programs for A032218, there is no canonical definition to state claims against.
-/

/-! ## A032218.P661187581231721762

`A184955(lt[n+2, ∏{p}[n+2, #²]]+2)+A032305(n+1)`
-/

namespace A032218.P661187581231721762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2) + A032305 (n + 1)

end

end A032218.P661187581231721762

/-! ## A032218.P16060980883988261455

`A032305(n+1)+A000931(A309863(n))`
-/

namespace A032218.P16060980883988261455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032305 (n + 1) + A000931 (A309863 n).toNat

end

end A032218.P16060980883988261455

/-! ## A032218.P15730610052951137525

`A089454(A276532(n))+A032305(n+1)`
-/

namespace A032218.P15730610052951137525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089454 (A276532 n).toNat + A032305 (n + 1)

end

end A032218.P15730610052951137525

/-! ## A032218.P11629879666111931432

`A137579(A329739(n))+A032305(n+1)`
-/

namespace A032218.P11629879666111931432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A329739 n).toNat + A032305 (n + 1)

end

end A032218.P11629879666111931432

/-! ## A032218.P1278032756132591152

`or(A004198(A001906(n)), A032305(n+1))`
-/

namespace A032218.P1278032756132591152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A001906 n).toNat) (A032305 (n + 1))

end

end A032218.P1278032756132591152

/-!
# A032219: Number of ways to partition n labeled elements into pie slices of different sizes allowing the pie to be turned over.

The programs for A032219, there is no canonical definition to state claims against.
-/

/-! ## A032219.P14945934082078213008

`(A032221(n)+A032210(n))/2`
-/

namespace A032219.P14945934082078213008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032221 n + A032210 n : ℚ) / 2

end

end A032219.P14945934082078213008

/-! ## A032219.P865634269974247773

`(A032221(n)+A032210(n))*2^A008683(A020483(n))`
-/

namespace A032219.P865634269974247773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032221 n + A032210 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A032219.P865634269974247773

/-! ## A032219.P4906575324293603410

`(A032311(A122200(∑[n]))+A032210(n))/2`
-/

namespace A032219.P4906575324293603410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032311 (A122200 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A032210 n : ℚ) / 2

end

end A032219.P4906575324293603410

/-! ## A032219.P9444821101145791639

`(A032210(n)+∑{d}[A032311(n), A000010(#)])/2`
-/

namespace A032219.P9444821101145791639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032311 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A032210 n + ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d : ℤ) : ℚ) / 2

end

end A032219.P9444821101145791639

/-! ## A032219.P1368264111106601796

`A014682(A032221(n)+A032210(n))`
-/

namespace A032219.P1368264111106601796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032221 n + A032210 n).toNat

end

end A032219.P1368264111106601796

/-!
# A032221: Number of ways to partition n labeled elements into pie slices of different sizes of at least 2, allowing the pie to be turned over.

The programs for A032221, there is no canonical definition to state claims against.
-/

/-! ## A032221.P2706963273772608764

`2*A032219(n)-A032210(n)`
-/

namespace A032221.P2706963273772608764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032219 n - A032210 n

end

end A032221.P2706963273772608764

/-!
# A032222: "DGJ" (bracelet, element, labeled) transform of 2,2,2,2...

The programs for A032222, there is no canonical definition to state claims against.
-/

/-! ## A032222.P17039188020649115676

`A382736(A127782(n))+A047152(n)`
-/

namespace A032222.P17039188020649115676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382736 (A127782 n).toNat + A047152 n

end

end A032222.P17039188020649115676

/-!
# A032223: "DGJ" (bracelet, element, labeled) transform of 2,1,1,1...

The programs for A032223, there is no canonical definition to state claims against.
-/

/-! ## A032223.P17805682008137418612

`A032313(A073788(n))`
-/

namespace A032223.P17805682008137418612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032313 (A073788 n).toNat

end

end A032223.P17805682008137418612

/-! ## A032223.P12741726197036110065

`A115060(A032313(n))`
-/

namespace A032223.P12741726197036110065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A032313 n).toNat

end

end A032223.P12741726197036110065

/-! ## A032223.P12066673684596556783

`A032313(A004868(n+1))`
-/

namespace A032223.P12066673684596556783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032313 (A004868 (n + 1)).toNat

end

end A032223.P12066673684596556783

/-!
# A032226: Shifts left under "DGJ" (bracelet, element, labeled) transform.

The programs for A032226, there is no canonical definition to state claims against.
-/

/-! ## A032226.P7428873057399784325

`A032317(A051022(n)+1)`
-/

namespace A032226.P7428873057399784325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032317 (A051022 n + 1).toNat

end

end A032226.P7428873057399784325

/-! ## A032226.P4162847281988153078

`A032317(A056143(n)+1)`
-/

namespace A032226.P4162847281988153078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032317 (A056143 n + 1).toNat

end

end A032226.P4162847281988153078

/-! ## A032226.P18319145049115425259

`A032317(A087019(n)+1)`
-/

namespace A032226.P18319145049115425259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032317 (A087019 n + 1).toNat

end

end A032226.P18319145049115425259

/-! ## A032226.P12953611869623484315

`C(A032317(n+1), A260529(n))`
-/

namespace A032226.P12953611869623484315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032317 (n + 1)).toNat (A260529 n).toNat

end

end A032226.P12953611869623484315

/-! ## A032226.P8050253859905274247

`filter[A032317(n+1), A005171(#)]`
-/

namespace A032226.P8050253859905274247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A032226.P8050253859905274247

/-!
# A032227: Doubles (index 2+) under "DGJ" (bracelet, element, labeled) transform.

The programs for A032227, there is no canonical definition to state claims against.
-/

/-! ## A032227.P5650431092854033705

`A053723(comp[or(2, n)+n]^n+1)`
-/

namespace A032227.P5650431092854033705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n + 1)

end

end A032227.P5650431092854033705

/-!
# A032228: Number of ways to partition n elements into pie slices of different sizes allowing the pie to be turned over.

The programs for A032228, there is no canonical definition to state claims against.
-/

/-! ## A032228.P16620478820262161568

`(A065033(n)+A032153(n))/2`
-/

namespace A032228.P16620478820262161568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n + A032153 n : ℚ) / 2

end

end A032228.P16620478820262161568

/-! ## A032228.P8023807343834314807

`ceil((A110654(n)+A032153(n))/2)`
-/

namespace A032228.P8023807343834314807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110654 n + A032153 n : ℚ) / 2⌉

end

end A032228.P8023807343834314807

/-! ## A032228.P10808080103959009196

`floor(A000007(n)+(A110654(n)+A032153(n))/2)`
-/

namespace A032228.P10808080103959009196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A110654 n + A032153 n : ℚ) / 2⌋

end

end A032228.P10808080103959009196

/-! ## A032228.P8759863353546671773

`(A110654(n)+A032153(n))/A127750(2*n)`
-/

namespace A032228.P8759863353546671773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 n + A032153 n : ℚ) / (A127750 (2 * n) : ℚ)

end

end A032228.P8759863353546671773

/-! ## A032228.P2176396377505906304

`(A032230(n)+A032215(n))/2`
-/

namespace A032228.P2176396377505906304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032230 n + A032215 n : ℚ) / 2

end

end A032228.P2176396377505906304

/-!
# A032229: Number of ways to partition n elements into pie slices of different odd sizes allowing the pie to be turned over.

The programs for A032229, there is no canonical definition to state claims against.
-/

/-! ## A032229.P6962742800051099655

`or(A000700(n), A014081(A126120(n)))`
-/

namespace A032229.P6962742800051099655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000700 n) (A014081 (A126120 n).toNat)

end

end A032229.P6962742800051099655

/-! ## A032229.P6625777772537283038

`or(A000700(n), A332998(A216460(2*n+1)))`
-/

namespace A032229.P6625777772537283038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000700 n) (A332998 (A216460 (2 * n + 1)).toNat)

end

end A032229.P6625777772537283038

/-! ## A032229.P15983354697263943464

`or(A000700(n), A035195(A350945(3*n+4)))`
-/

namespace A032229.P15983354697263943464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000700 n) (A035195 (A350945 (3 * n + 4)).toNat)

end

end A032229.P15983354697263943464

/-! ## A032229.P15107914572962878799

`A000700(n)+A000122(A325372(A325372(n+1)))`
-/

namespace A032229.P15107914572962878799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + A000122 (A325372 (A325372 (n + 1)).toNat).toNat

end

end A032229.P15107914572962878799

/-!
# A032230: Number of ways to partition n elements into pie slices of different sizes of at least 2 allowing the pie to be turned over.

The programs for A032230, there is no canonical definition to state claims against.
-/

/-! ## A032230.P17476184312763082830

`2*A032228(n)-A032215(n)`
-/

namespace A032230.P17476184312763082830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032228 n - A032215 n

end

end A032230.P17476184312763082830

/-! ## A032230.P18042615035515147607

`floor((A065033(n)+A032155(n))/2)`
-/

namespace A032230.P18042615035515147607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A065033 n + A032155 n : ℚ) / 2⌋

end

end A032230.P18042615035515147607

/-! ## A032230.P6171065061586004675

`floor((A123108(n)+A032155(n))/2)`
-/

namespace A032230.P6171065061586004675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123108 n + A032155 n : ℚ) / 2⌋

end

end A032230.P6171065061586004675

/-! ## A032230.P7909681115072421620

`floor((A249038(n+1)+A032155(n))/2)`
-/

namespace A032230.P7909681115072421620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A249038 (n + 1) + A032155 n : ℚ) / 2⌋

end

end A032230.P7909681115072421620

/-! ## A032230.P12983908553956448873

`(A123108(abs((-1)^n+1-n))+A032155(n))/2`
-/

namespace A032230.P12983908553956448873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 |(-1) ^ n + 1 - (n : ℤ)|.toNat + A032155 n : ℚ) / 2

end

end A032230.P12983908553956448873

/-!
# A032231: "DGK" (bracelet, element, unlabeled) transform of 2,2,2,2,...

The programs for A032231, there is no canonical definition to state claims against.
-/

/-! ## A032231.P6816865033860166252

`ceil((A032156(n)+A004273(n))/2)`
-/

namespace A032231.P6816865033860166252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032156 n + A004273 n : ℚ) / 2⌉

end

end A032231.P6816865033860166252

/-! ## A032231.P16395186221944223747

`ceil((A032156(n)+record[A026741(n)])/2)`
-/

namespace A032231.P16395186221944223747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032156 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A032231.P16395186221944223747

/-! ## A032231.P5869872342334873814

`round((A032156(2*n-n)+A004273(n))/2)`
-/

namespace A032231.P5869872342334873814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032156 (2 * n - n) + A004273 n : ℚ) / 2)

end

end A032231.P5869872342334873814

/-! ## A032231.P4431054582072568180

`round((A032156(n)+A004273(n))/2*A054977(n))`
-/

namespace A032231.P4431054582072568180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032156 n + A004273 n : ℚ) / 2 * (A054977 n : ℚ))

end

end A032231.P4431054582072568180

/-! ## A032231.P3298166526757588955

`A065033(A032156(n)-1)+n`
-/

namespace A032231.P3298166526757588955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A032156 n - 1).toNat + (n : ℤ)

end

end A032231.P3298166526757588955

/-!
# A032232: "DGK" (bracelet, element, unlabeled) transform of 2,1,1,1,...

The programs for A032232, there is no canonical definition to state claims against.
-/

/-! ## A032232.P11728452214056895924

`(A080513(n)+A032157(n))/2`
-/

namespace A032232.P11728452214056895924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n + A032157 n : ℚ) / 2

end

end A032232.P11728452214056895924

/-! ## A032232.P3670763008593454317

`(A032157(n)+A008619(n+1))/2`
-/

namespace A032232.P3670763008593454317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032157 n + A008619 (n + 1) : ℚ) / 2

end

end A032232.P3670763008593454317

/-! ## A032232.P6232757963028322667

`(A080513(n)+A032157(n))*2^A008683(A020483(n))`
-/

namespace A032232.P6232757963028322667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n + A032157 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A032232.P6232757963028322667

/-! ## A032232.P14611715550237875072

`(A080513(n)+A032157(n))*2^A008683(A181758(n+1))`
-/

namespace A032232.P14611715550237875072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n + A032157 n : ℚ) * (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ)

end

end A032232.P14611715550237875072

/-! ## A032232.P2057226188017794276

`A014682(A080513(n)+A032157(n))`
-/

namespace A032232.P2057226188017794276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A080513 n + A032157 n).toNat

end

end A032232.P2057226188017794276

/-!
# A032233: "DGK" (bracelet, element, unlabeled) transform of 1,2,3,4,...

The programs for A032233, there is no canonical definition to state claims against.
-/

/-! ## A032233.P3383480320188109767

`A026007(n)+A000120(A029575(n))`
-/

namespace A032233.P3383480320188109767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026007 n + A000120 (A029575 n).toNat

end

end A032233.P3383480320188109767

/-! ## A032233.P553541098912470022

`A123578(A006190(n))+A010059(n)`
-/

namespace A032233.P553541098912470022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A006190 n).toNat + A010059 n

end

end A032233.P553541098912470022

/-! ## A032233.P7956552019239309709

`A137746(A137747(n))+A026007(n)`
-/

namespace A032233.P7956552019239309709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137746 (A137747 n).toNat + A026007 n

end

end A032233.P7956552019239309709

/-! ## A032233.P12028110624687751940

`A268142(A181061(n))+A026007(n)`
-/

namespace A032233.P12028110624687751940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268142 (A181061 n).toNat + A026007 n

end

end A032233.P12028110624687751940

/-! ## A032233.P3407141487910052680

`A321537(A321539(n))+A026007(n)`
-/

namespace A032233.P3407141487910052680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A321539 n).toNat + A026007 n

end

end A032233.P3407141487910052680

/-!
# A032234: "DGK" (bracelet, element, unlabeled) transform of 1,3,5,7,...

The programs for A032234, there is no canonical definition to state claims against.
-/

/-! ## A032234.P2449501877322917923

`A034178(A000984(n))+A000225(n)`
-/

namespace A032234.P2449501877322917923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A000984 n).toNat + A000225 n

end

end A032234.P2449501877322917923

/-! ## A032234.P4923552805736065771

`A255835(n)+A067169(A005142(n))`
-/

namespace A032234.P4923552805736065771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255835 n + A067169 ((A005142 n).toNat + 11)

end

end A032234.P4923552805736065771

/-! ## A032234.P5949827254469203795

`A255835(n)+A235145(A007769(n))`
-/

namespace A032234.P5949827254469203795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255835 n + A235145 (A007769 n).toNat

end

end A032234.P5949827254469203795

/-!
# A032235: Number of dyslexic rooted compound windmills with n nodes where any 2 submills extending from the same node are different.

The programs for A032235, there is no canonical definition to state claims against.
-/

/-! ## A032235.P12963661502595456575

`A009714(n)+A001462(A346660(n))`
-/

namespace A032235.P12963661502595456575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009714 n + A001462 (A346660 n).toNat

end

end A032235.P12963661502595456575

/-! ## A032235.P18325026441362229500

`A001462(A346660(n)+A036638(n))`
-/

namespace A032235.P18325026441362229500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A346660 n + A036638 n).toNat

end

end A032235.P18325026441362229500

/-! ## A032235.P10854622161520050232

`A116379(n+1)+A036638(A036633(n))`
-/

namespace A032235.P10854622161520050232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116379 (n + 1) + A036638 (A036633 n).toNat

end

end A032235.P10854622161520050232

/-! ## A032235.P1646966165176395985

`A001462(A156723(n+1)+A000014(2*n+1))`
-/

namespace A032235.P1646966165176395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A156723 (n + 1) + A000014 (2 * n + 1)).toNat

end

end A032235.P1646966165176395985

/-!
# A032236: Number of dyslexic rooted compound windmills with n nodes and leaves of 2 colors where any 2 submills extending from the same node are different.

The programs for A032236, there is no canonical definition to state claims against.
-/

/-! ## A032236.P14212943953100467490

`A006251(n)+A000196(A036726(n))`
-/

namespace A032236.P14212943953100467490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n + A000196 (A036726 n).toNat

end

end A032236.P14212943953100467490

/-! ## A032236.P14080786049722845907

`A192400(n)+A051742(A000142(n))`
-/

namespace A032236.P14080786049722845907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192400 n + A051742 (A000142 n).toNat

end

end A032236.P14080786049722845907

/-! ## A032236.P1992525730388253007

`A001462(A366676(n)+A011782(n))`
-/

namespace A032236.P1992525730388253007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A366676 n + A011782 n).toNat

end

end A032236.P1992525730388253007

/-!
# A032237: Shifts left 2 places under "DGK" (bracelet, element, unlabeled) transform.

The programs for A032237, there is no canonical definition to state claims against.
-/

/-! ## A032237.P13448219831154107256

`A102450(A007560(n+1))`
-/

namespace A032237.P13448219831154107256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A007560 (n + 1)).toNat

end

end A032237.P13448219831154107256

/-! ## A032237.P4775415671587242470

`A346447(A032307(n+1))`
-/

namespace A032237.P4775415671587242470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346447 (A032307 (n + 1)).toNat

end

end A032237.P4775415671587242470

/-! ## A032237.P504915453006492831

`floor(A055086(A055227(n))/3)+1`
-/

namespace A032237.P504915453006492831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055086 (A055227 n).toNat : ℚ) / 3⌋ + 1

end

end A032237.P504915453006492831

/-! ## A032237.P17652013208042745858

`ceil(A104545(n)/root(A280466(n), 3))`
-/

namespace A032237.P17652013208042745858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104545 n : ℝ) / (A280466 n : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A032237.P17652013208042745858

/-! ## A032237.P2142037071799917812

`A088806(A056517(n+2))+A007560(n+1)`
-/

namespace A032237.P2142037071799917812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088806 (A056517 (n + 2)).toNat + A007560 (n + 1)

end

end A032237.P2142037071799917812

/-!
# A032238: Number of series-reduced dyslexic planted compound windmills with n leaves of 2 colors where any 2 submills extending from the same node are different.

The programs for A032238, there is no canonical definition to state claims against.
-/

/-! ## A032238.P13019909878490203128

`A065033(A149828(n))+A017900(n)`
-/

namespace A032238.P13019909878490203128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A149828 n).toNat + A017900 n

end

end A032238.P13019909878490203128

/-! ## A032238.P16060490464642533186

`A380079(A086628(n))`
-/

namespace A032238.P16060490464642533186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A086628 n).toNat

end

end A032238.P16060490464642533186

/-! ## A032238.P7580815465204513578

`A325910(A014372(n))+A000108(n)`
-/

namespace A032238.P7580815465204513578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325910 (A014372 n).toNat + A000108 n

end

end A032238.P7580815465204513578

/-!
# A032239: Number of identity bracelets of n beads of 2 colors.

The programs for A032239, there is no canonical definition to state claims against.
-/

/-! ## A032239.P8366336515873345252

`A032337(n+1)/(n+1)!`
-/

namespace A032239.P8366336515873345252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032337 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A032239.P8366336515873345252

/-! ## A032239.P15731459347825722207

`A032337(n+1)/A000142(n+1)`
-/

namespace A032239.P15731459347825722207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032337 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A032239.P15731459347825722207

/-! ## A032239.P14074450632063745478

`A032337(n+1)/∏[A143182(∑[n])]`
-/

namespace A032239.P14074450632063745478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032337 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032239.P14074450632063745478

/-! ## A032239.P18003922411878767314

`A032337(n+1)/∏[A000027(n+1)]`
-/

namespace A032239.P18003922411878767314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032337 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032239.P18003922411878767314

/-! ## A032239.P10640156874977092572

`A032337(n+1)/∏[A057508(A057508(n+1))]`
-/

namespace A032239.P10640156874977092572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057508 (A057508 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032337 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032239.P10640156874977092572

/-!
# A032240: Number of identity bracelets of n beads of 3 colors.

The programs for A032240, there is no canonical definition to state claims against.
-/

/-! ## A032240.P17923420430288762499

`A032338(n+1)/(n+1)!`
-/

namespace A032240.P17923420430288762499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032338 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A032240.P17923420430288762499

/-! ## A032240.P4585412292213354416

`A032338(n+1)/record[A084938(n)]`
-/

namespace A032240.P4585412292213354416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032338 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032240.P4585412292213354416

/-! ## A032240.P6612907586434210459

`A032338(n+1)/record[A094587(n)]`
-/

namespace A032240.P6612907586434210459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032338 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032240.P6612907586434210459

/-! ## A032240.P4476296877570336244

`A032338(n+1)/record[A247005(n)]`
-/

namespace A032240.P4476296877570336244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032338 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032240.P4476296877570336244

/-! ## A032240.P9139494987354118713

`A032338(n+1)/∏[A000027(n+1)]`
-/

namespace A032240.P9139494987354118713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032338 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032240.P9139494987354118713

/-!
# A032241: Number of identity bracelets of n beads of 4 colors.

The programs for A032241, there is no canonical definition to state claims against.
-/

/-! ## A032241.P7041181419523698623

`A032339(n+1)/(n+1)!`
-/

namespace A032241.P7041181419523698623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032339 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A032241.P7041181419523698623

/-! ## A032241.P8154595650991128735

`A032339(n+1)/record[A047920(n)]`
-/

namespace A032241.P8154595650991128735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032339 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032241.P8154595650991128735

/-! ## A032241.P9599509037248080567

`A032339(n+1)/A000142(n+1)`
-/

namespace A032241.P9599509037248080567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032339 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A032241.P9599509037248080567

/-! ## A032241.P2200288543678587030

`A032339(n+1)/record[A074911(n+1)]`
-/

namespace A032241.P2200288543678587030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074911 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032339 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032241.P2200288543678587030

/-! ## A032241.P9401444317486291920

`A032339(n+1)/record[A325703(n+1)]`
-/

namespace A032241.P9401444317486291920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325703 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032339 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032241.P9401444317486291920

/-!
# A032242: Number of identity bracelets of n beads of 5 colors.

The programs for A032242, there is no canonical definition to state claims against.
-/

/-! ## A032242.P14056680910809960891

`A032340(n+1)/(n+1)!`
-/

namespace A032242.P14056680910809960891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032340 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A032242.P14056680910809960891

/-! ## A032242.P16814841122487452885

`A032340(n+1)/record[A084938(n)]`
-/

namespace A032242.P16814841122487452885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032340 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032242.P16814841122487452885

/-! ## A032242.P626522559878937001

`A032340(n+1)/∏[A000027(n+1)]`
-/

namespace A032242.P626522559878937001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032340 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032242.P626522559878937001

/-! ## A032242.P4465275570885802520

`A032340(n+1)/∏[A130446(n+1)]`
-/

namespace A032242.P4465275570885802520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032340 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A032242.P4465275570885802520

/-! ## A032242.P12451005253585868896

`A032340(n+1)/record[A216919(n+1)]`
-/

namespace A032242.P12451005253585868896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032340 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A032242.P12451005253585868896

/-!
# A032245: "DHK" (bracelet, identity, unlabeled) transform of 1,1,1,1,...

The programs for A032245, there is no canonical definition to state claims against.
-/

/-! ## A032245.P4897259777905045980

`A309651(A238531(n))+A065033(n)`
-/

namespace A032245.P4897259777905045980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (A238531 n).toNat + A065033 n

end

end A032245.P4897259777905045980

/-! ## A032245.P10562089526970117691

`A309651(A238531(n))+floor(A254667(n+1)/2)`
-/

namespace A032245.P10562089526970117691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (A238531 n).toNat + ⌊(A254667 (n + 1) : ℚ) / 2⌋

end

end A032245.P10562089526970117691

/-! ## A032245.P10038491293489332588

`A309651(A238531(n))+A001817(A011782(n))`
-/

namespace A032245.P10038491293489332588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (A238531 n).toNat + A001817 (A011782 n).toNat

end

end A032245.P10038491293489332588

/-! ## A032245.P9753411820846739286

`A000196(A000994(n)+n)`
-/

namespace A032245.P9753411820846739286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000994 n + (n : ℤ)).toNat

end

end A032245.P9753411820846739286

/-! ## A032245.P9307529172739467456

`ceil(A183943(n+2)/A183983(3*n+2))`
-/

namespace A032245.P9307529172739467456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183943 (n + 2) : ℚ) / (A183983 (3 * n + 2) : ℚ)⌉

end

end A032245.P9307529172739467456

/-!
# A032246: "DHK[ 5 ]" (bracelet, identity, unlabeled, 5 parts) transform of 1,1,1,1,...

The programs for A032246, the canonical program `A032246.P10915849756129363604` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032246 has offset 8).

The definition of A032246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032246.P10915849756129363604

`∑[∑[2*A008720(n)]]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032246

/-- `∑[∑[2*A008720(n)]]` -/
def P10915849756129363604.Spec : Prop :=
  ∀ n, P10915849756129363604.a n = A032246 (n + 8)

theorem P10915849756129363604.correct : P10915849756129363604.Spec := by
  intro n
  simp only [A032246, Nat.add_sub_cancel]

end A032246

/-! ## A032246.P16311248435873716884

`∑[A008720(n)+∑[A000115(n)]]`
-/

namespace A032246.P16311248435873716884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P16311248435873716884

namespace A032246

/-- `∑[A008720(n)+∑[A000115(n)]]` -/
def P16311248435873716884.Spec : Prop :=
  ∀ n, P16311248435873716884.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P17654478188839977449

`A008646(n+3)-A032279(n+8)`
-/

namespace A032246.P17654478188839977449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008646 (n + 3) - A032279 (n + 8)

end

end A032246.P17654478188839977449

namespace A032246

/-- `A008646(n+3)-A032279(n+8)` -/
def P17654478188839977449.Spec : Prop :=
  ∀ n, P17654478188839977449.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P8721956095525646061

`∑[2*A029065(2*n+1)]`
-/

namespace A032246.P8721956095525646061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P8721956095525646061

namespace A032246

/-- `∑[2*A029065(2*n+1)]` -/
def P8721956095525646061.Spec : Prop :=
  ∀ n, P8721956095525646061.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P16574220939933102524

`∑[A008720(n)+A001304(n)]`
-/

namespace A032246.P16574220939933102524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n + A001304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P16574220939933102524

namespace A032246

/-- `∑[A008720(n)+A001304(n)]` -/
def P16574220939933102524.Spec : Prop :=
  ∀ n, P16574220939933102524.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P15284193466259038852

`A001304(n+1)+a(n-1)-A008720(n+1)` with `a(0)=2`
-/

namespace A032246.P15284193466259038852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001304 (n + 1) + (a (n - 1) - A008720 (n + 1))

end

end A032246.P15284193466259038852

namespace A032246

/-- `A001304(n+1)+a(n-1)-A008720(n+1)` -/
def P15284193466259038852.Spec : Prop :=
  ∀ n, P15284193466259038852.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P10933676725442234104

`∑[A008720(n)+A001362(n+n)]`
-/

namespace A032246.P10933676725442234104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n + A001362 (n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P10933676725442234104

namespace A032246

/-- `∑[A008720(n)+A001362(n+n)]` -/
def P10933676725442234104.Spec : Prop :=
  ∀ n, P10933676725442234104.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P4302224286164401839

`∑[A004277(∑[A008720(n)])]`
-/

namespace A032246.P4302224286164401839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P4302224286164401839

namespace A032246

/-- `∑[A004277(∑[A008720(n)])]` -/
def P4302224286164401839.Spec : Prop :=
  ∀ n, P4302224286164401839.a n = A032246 (n + 8)

end A032246

/-! ## A032246.P2869819158443015255

`∑[A005408(∑[A008720(n)])-1]`
-/

namespace A032246.P2869819158443015255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032246.P2869819158443015255

namespace A032246

/-- `∑[A005408(∑[A008720(n)])-1]` -/
def P2869819158443015255.Spec : Prop :=
  ∀ n, P2869819158443015255.a n = A032246 (n + 8)

end A032246

/-!
# A032247: "DHK[ 6 ]" (bracelet, identity, unlabeled, 6 parts) transform of 1,1,1,1,...

The programs for A032247, there is no canonical definition to state claims against.
-/

/-! ## A032247.P2035446757644223318

`A308583(A167499(n+7))`
-/

namespace A032247.P2035446757644223318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A167499 (n + 7)).toNat

end

end A032247.P2035446757644223318

/-! ## A032247.P5661403487604892126

`A308583(A166136(n+7)-1)`
-/

namespace A032247.P5661403487604892126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A166136 (n + 7) - 1).toNat

end

end A032247.P5661403487604892126

/-! ## A032247.P15953238086909676993

`A308583(eq[9, A194921(n+1)])`
-/

namespace A032247.P15953238086909676993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032247.P15953238086909676993

/-!
# A032248: "DHK[ 7 ]" (bracelet, identity, unlabeled, 7 parts) transform of 1,1,1,1,...

The programs for A032248, there is no canonical definition to state claims against.
-/

/-! ## A032248.P16342002770774418228

`A032280(n+10)-A058187(n+3)`
-/

namespace A032248.P16342002770774418228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032280 (n + 10) - A058187 (n + 3)

end

end A032248.P16342002770774418228

/-! ## A032248.P17485137367105976021

`A032280(n+10)-A000292(A008619(n+3))`
-/

namespace A032248.P17485137367105976021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032280 (n + 10) - A000292 (A008619 (n + 3)).toNat

end

end A032248.P17485137367105976021

/-! ## A032248.P16603461264449351933

`A180472(A155212(n+7))`
-/

namespace A032248.P16603461264449351933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A155212 (n + 7)).toNat

end

end A032248.P16603461264449351933

/-! ## A032248.P9538973753155058962

`A180472(A000217(n+10)+7)`
-/

namespace A032248.P9538973753155058962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A000217 (n + 10) + 7).toNat

end

end A032248.P9538973753155058962

/-! ## A032248.P18326521713497842750

`A180472(A046691(n+8)+11)`
-/

namespace A032248.P18326521713497842750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180472 (A046691 (n + 8) + 11).toNat

end

end A032248.P18326521713497842750

/-!
# A032249: "DHK[ 8 ]" (bracelet, identity, unlabeled, 8 parts) transform of 1,1,1,1,...

The programs for A032249, there is no canonical definition to state claims against.
-/

/-! ## A032249.P5418226075744995876

`A308583(eq[26, A181322(n)])`
-/

namespace A032249.P5418226075744995876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032249.P5418226075744995876

/-! ## A032249.P14780908660500895009

`A308583(eq[10, A025581(n)]+2)`
-/

namespace A032249.P14780908660500895009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A032249.P14780908660500895009

/-!
# A032250: "DHK[ n ](2n)" (bracelet, identity, unlabeled, n parts, evaluated at 2n) transform of 1,1,1,1,...

The programs for A032250, there is no canonical definition to state claims against.
-/

/-! ## A032250.P17754311849120138471

`A123108(A022553(n+1)-A045680(n+1))`
-/

namespace A032250.P17754311849120138471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022553 (n + 1) - A045680 (n + 1)).toNat

end

end A032250.P17754311849120138471

/-! ## A032250.P10389398157316191410

`A002260(xor(comp[∑[n]]-n, (n^n-(-1)^n)/(n+1)))`
-/

namespace A032250.P10389398157316191410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.xor ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (SequenceMachineLib.roundAway (((n ^ n : ℤ) - (-1) ^ n : ℚ) / (n + 1 : ℚ)))).toNat

end

end A032250.P10389398157316191410

/-! ## A032250.P7616514607092023444

`A135304(A148431(n))`
-/

namespace A032250.P7616514607092023444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A148431 n).toNat

end

end A032250.P7616514607092023444

/-!
# A032251: "DHK" (bracelet, identity, unlabeled) transform of 2,2,2,2,...

The programs for A032251, there is no canonical definition to state claims against.
-/

/-! ## A032251.P2727464169105942261

`A229461(A003520(2*n+1))+A000045(n)`
-/

namespace A032251.P2727464169105942261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229461 (A003520 (2 * n + 1)).toNat + A000045 n

end

end A032251.P2727464169105942261

/-!
# A032252: "DHK" (bracelet, identity, unlabeled) transform of 2,1,1,1,...

The programs for A032252, there is no canonical definition to state claims against.
-/

/-! ## A032252.P1610905562774003999

`A023190(∑[∑[A346890(n)]])`
-/

namespace A032252.P1610905562774003999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346890 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032252.P1610905562774003999

/-!
# A032253: "DHK" (bracelet, identity, unlabeled) transform of 3,3,3,3,...

The programs for A032253, there is no canonical definition to state claims against.
-/

/-! ## A032253.P10800078775671673244

`A372306(n+1)+A303171(A186021(n))`
-/

namespace A032253.P10800078775671673244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (n + 1) + A303171 (A186021 n).toNat

end

end A032253.P10800078775671673244

/-!
# A032254: "DHK" (bracelet, identity, unlabeled) transform of 1,2,3,4,...

The programs for A032254, there is no canonical definition to state claims against.
-/

/-! ## A032254.P3236797541121112490

`A022559(A057574(n)+A050382(n+1))`
-/

namespace A032254.P3236797541121112490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A057574 n + A050382 (n + 1)).toNat

end

end A032254.P3236797541121112490

/-!
# A032256: Number of dyslexic rooted compound windmills with n nodes with no symmetries.

The programs for A032256, there is no canonical definition to state claims against.
-/

/-! ## A032256.P15222750085380288582

`A330697(A274160(n))`
-/

namespace A032256.P15222750085380288582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (A274160 n).toNat

end

end A032256.P15222750085380288582

/-! ## A032256.P2637716397114938933

`A300273(A198518(n))-A224808(n)`
-/

namespace A032256.P2637716397114938933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (A198518 n).toNat - A224808 n

end

end A032256.P2637716397114938933

/-! ## A032256.P4053226953746265932

`round(sqrt(A365831((1-n)²)+1))`
-/

namespace A032256.P4053226953746265932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A365831 ((1 - (n : ℤ)) ^ 2).toNat + 1 : ℝ))

end

end A032256.P4053226953746265932

/-! ## A032256.P9782034626078610305

`A325251(round((n-1)*a(n-1)/floor(n/2)))` with `a(0)=1, a(1)=1`
-/

namespace A032256.P9782034626078610305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A325251 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)))).toNat

end

end A032256.P9782034626078610305

/-! ## A032256.P10505562601499886681

`A325251(ceil((n-1)*a(n-1)/floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A032256.P10505562601499886681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A325251 ⌈((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ))⌉.toNat

end

end A032256.P10505562601499886681

/-!
# A032257: Number of dyslexic rooted compound windmills with n nodes and leaves of 2 colors with no symmetries.

The programs for A032257, there is no canonical definition to state claims against.
-/

/-! ## A032257.P3908301338491473215

`A151386(n)+A146634(A146590(n+1))`
-/

namespace A032257.P3908301338491473215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151386 n + A146634 (A146590 (n + 1)).toNat

end

end A032257.P3908301338491473215

/-! ## A032257.P6104578777399750225

`A321126(A301916(n!))`
-/

namespace A032257.P6104578777399750225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321126 (A301916 (Nat.factorial n)).toNat

end

end A032257.P6104578777399750225

/-! ## A032257.P10409735340097321878

`A151386(n)+A151422(n)!`
-/

namespace A032257.P10409735340097321878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151386 n + (Nat.factorial (A151422 n).toNat : ℤ)

end

end A032257.P10409735340097321878

/-!
# A032258: Shifts left 2 places under "DHK" (bracelet, identity, unlabeled) transform.

The programs for A032258, there is no canonical definition to state claims against.
-/

/-! ## A032258.P883687050886403468

`round(A327060(n)/(n+1))`
-/

namespace A032258.P883687050886403468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327060 n : ℚ) / (n + 1 : ℚ))

end

end A032258.P883687050886403468

/-! ## A032258.P2686912438268149101

`A194970(A115868(n+2))`
-/

namespace A032258.P2686912438268149101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194970 (A115868 (n + 2)).toNat

end

end A032258.P2686912438268149101

/-! ## A032258.P11453006623129036108

`A175858(A316474(n+2))`
-/

namespace A032258.P11453006623129036108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175858 (A316474 (n + 2)).toNat

end

end A032258.P11453006623129036108

/-!
# A032259: Number of series-reduced dyslexic planted compound windmills with n leaves of 2 colors with no symmetries.

The programs for A032259, there is no canonical definition to state claims against.
-/

/-! ## A032259.P15238779473010797025

`A345195(2*n)+A345161((n+3)²)`
-/

namespace A032259.P15238779473010797025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 (2 * n) + A345161 ((n + 3) ^ 2)

end

end A032259.P15238779473010797025

/-! ## A032259.P1999233336230899085

`A055086(A304185(n)+A000166(n))`
-/

namespace A032259.P1999233336230899085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A304185 n + A000166 n).toNat

end

end A032259.P1999233336230899085

/-! ## A032259.P326520270870802937

`A106447(A351493(n))+A001250(n)`
-/

namespace A032259.P326520270870802937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106447 (A351493 n).toNat + A001250 n

end

end A032259.P326520270870802937

/-!
# A032260: Number of n X n (0,1) matrices such that each row and each column is nondecreasing or nonincreasing.

The programs for A032260, the canonical program `A032260.P16820418409441747498` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032260 has offset 1).

The definition of A032260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032260.P16820418409441747498

`2*(n+1)*(C(2*(n+1), n+1)-(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032260

/-- `2*(n+1)*(C(2*(n+1), n+1)-(n+1))` -/
def P16820418409441747498.Spec : Prop :=
  ∀ n, P16820418409441747498.a n = A032260 (n + 1)

theorem P16820418409441747498.correct : P16820418409441747498.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel]

end A032260

/-! ## A032260.P251616276541126924

`A002011(n)-2*(n+1)²`
-/

namespace A032260.P251616276541126924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n - (2 * (n + 1) ^ 2 : ℤ)

end

end A032260.P251616276541126924

namespace A032260

/-- `A002011(n)-2*(n+1)²` -/
def P251616276541126924.Spec : Prop :=
  ∀ n, P251616276541126924.a n = A032260 (n + 1)

end A032260

/-! ## A032260.P17774306272032023785

`2*(n+1)*A045992(n+1)`
-/

namespace A032260.P17774306272032023785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A045992 (n + 1))

end

end A032260.P17774306272032023785

namespace A032260

/-- `2*(n+1)*A045992(n+1)` -/
def P17774306272032023785.Spec : Prop :=
  ∀ n, P17774306272032023785.a n = A032260 (n + 1)

theorem P17774306272032023785.correct : P17774306272032023785.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P17774306272032023785.a, A032260.P16820418409441747498.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P18387075894818535466

`(n+1)*(A134759(n+1)-n)`
-/

namespace A032260.P18387075894818535466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A134759 (n + 1) - (n : ℤ))

end

end A032260.P18387075894818535466

namespace A032260

/-- `(n+1)*(A134759(n+1)-n)` -/
def P18387075894818535466.Spec : Prop :=
  ∀ n, P18387075894818535466.a n = A032260 (n + 1)

theorem P18387075894818535466.correct : P18387075894818535466.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P18387075894818535466.a, A032260.P16820418409441747498.a, A134759, A134759.P90257600578840069.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P10591901729695791087

`2*(A005430(n+1)-(n+1)²)`
-/

namespace A032260.P10591901729695791087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005430 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A032260.P10591901729695791087

namespace A032260

/-- `2*(A005430(n+1)-(n+1)²)` -/
def P10591901729695791087.Spec : Prop :=
  ∀ n, P10591901729695791087.a n = A032260 (n + 1)

theorem P10591901729695791087.correct : P10591901729695791087.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P10591901729695791087.a, A032260.P16820418409441747498.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P16558213995304475001

`2*(n+1)*(A030662(n+1)-n)`
-/

namespace A032260.P16558213995304475001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (A030662 (n + 1) - (n : ℤ)))

end

end A032260.P16558213995304475001

namespace A032260

/-- `2*(n+1)*(A030662(n+1)-n)` -/
def P16558213995304475001.Spec : Prop :=
  ∀ n, P16558213995304475001.a n = A032260 (n + 1)

theorem P16558213995304475001.correct : P16558213995304475001.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P16558213995304475001.a, A032260.P16820418409441747498.a, A030662, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P1656089259355127087

`A004277(n+1)*A045992(n+1)`
-/

namespace A032260.P1656089259355127087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) * A045992 (n + 1)

end

end A032260.P1656089259355127087

namespace A032260

/-- `A004277(n+1)*A045992(n+1)` -/
def P1656089259355127087.Spec : Prop :=
  ∀ n, P1656089259355127087.a n = A032260 (n + 1)

theorem P1656089259355127087.correct : P1656089259355127087.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P1656089259355127087.a, A032260.P16820418409441747498.a, A004277, A004277.P16255821370285667660.a, A045992, A045992.P603582236385676472.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P17230187668129611708

`2*A005430(n+1)-A001105(n+1)`
-/

namespace A032260.P17230187668129611708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005430 (n + 1) - A001105 (n + 1)

end

end A032260.P17230187668129611708

namespace A032260

/-- `2*A005430(n+1)-A001105(n+1)` -/
def P17230187668129611708.Spec : Prop :=
  ∀ n, P17230187668129611708.a n = A032260 (n + 1)

theorem P17230187668129611708.correct : P17230187668129611708.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P17230187668129611708.a, A032260.P16820418409441747498.a, A001105, A001105.P6098599260439307493.a, A005430, A005430.P3213108425417519818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P9620309620144452850

`(A000984(n+1)-(n+1))*A005843(n+1)`
-/

namespace A032260.P9620309620144452850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) - (n + 1 : ℤ)) * A005843 (n + 1)

end

end A032260.P9620309620144452850

namespace A032260

/-- `(A000984(n+1)-(n+1))*A005843(n+1)` -/
def P9620309620144452850.Spec : Prop :=
  ∀ n, P9620309620144452850.a n = A032260 (n + 1)

theorem P9620309620144452850.correct : P9620309620144452850.Spec := by
  intro n
  simp only [A032260, Nat.add_sub_cancel, A032260.P9620309620144452850.a, A032260.P16820418409441747498.a, A000984, A000984.P7946844122574426130.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A032260

/-! ## A032260.P7351685340967649464

`A045992(n+1)*A083220(A053438(n))`
-/

namespace A032260.P7351685340967649464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 (n + 1) * A083220 (A053438 n).toNat

end

end A032260.P7351685340967649464

namespace A032260

/-- `A045992(n+1)*A083220(A053438(n))` -/
def P7351685340967649464.Spec : Prop :=
  ∀ n, P7351685340967649464.a n = A032260 (n + 1)

end A032260

/-!
# A032261: Number of bracelets with n labeled beads of 3 colors.

The programs for A032261, there is no canonical definition to state claims against.
-/

/-! ## A032261.P988502742597833388

`3*(n-1)*a(n-1)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`
-/

namespace A032261.P988502742597833388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27] fun n a =>
  3 * (((n : ℤ) - 1) * a (n - 1))

end

end A032261.P988502742597833388

/-! ## A032261.P5721717228805093097

`A072479(2*n)*A375966(2*n)`
-/

namespace A032261.P5721717228805093097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072479 (2 * n) * A375966 (2 * n)

end

end A032261.P5721717228805093097

/-! ## A032261.P8001907663039864190

`A000244(n)*A001710(A171950(n+1))`
-/

namespace A032261.P8001907663039864190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A001710 (A171950 (n + 1)).toNat

end

end A032261.P8001907663039864190

/-! ## A032261.P7614502872234024913

`Δ[A003462(n)]*A001710(A171950(n+1))`
-/

namespace A032261.P7614502872234024913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001710 (A171950 (n + 1)).toNat

end

end A032261.P7614502872234024913

/-! ## A032261.P3186689359941945186

`record[A130599(n)]*A001710(A171950(n+1))`
-/

namespace A032261.P3186689359941945186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A001710 (A171950 (n + 1)).toNat

end

end A032261.P3186689359941945186

/-! ## A032261.P3634929604539960796

`3^n*n!/gcd(3^n*n!, A004277(n))`
-/

namespace A032261.P3634929604539960796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial n : ℚ) / (Int.gcd (3 ^ n * Nat.factorial n : ℤ) (A004277 n) : ℚ)

end

end A032261.P3634929604539960796

/-! ## A032261.P10507772215978336596

`lcm(3^n*n!, A004277(n))/A004277(n)`
-/

namespace A032261.P10507772215978336596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (3 ^ n * Nat.factorial n : ℤ) (A004277 n) : ℚ) / (A004277 n : ℚ)

end

end A032261.P10507772215978336596

/-!
# A032262: Number of ways to partition n labeled elements into pie slices allowing the pie to be turned over.

The programs for A032262, there is no canonical definition to state claims against.
-/

/-! ## A032262.P17600432632483577154

`A011782(n)+A002051(A028310(n))`
-/

namespace A032262.P17600432632483577154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002051 (A028310 n).toNat

end

end A032262.P17600432632483577154

/-! ## A032262.P2320616888335142654

`A011782(n)+A002051(A233583(n+1))`
-/

namespace A032262.P2320616888335142654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002051 (A233583 (n + 1)).toNat

end

end A032262.P2320616888335142654

/-! ## A032262.P17827796435840552546

`A011782(n)+A002051(A000007(n)+n)`
-/

namespace A032262.P17827796435840552546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002051 (A000007 n + (n : ℤ)).toNat

end

end A032262.P17827796435840552546

/-! ## A032262.P10957268903814828032

`A011782(n)+A002051(A000038(n)+n)`
-/

namespace A032262.P10957268903814828032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002051 (A000038 n + (n : ℤ)).toNat

end

end A032262.P10957268903814828032

/-! ## A032262.P14011404606013793865

`A011782(n)+A002051(A254667(n+1)-1)`
-/

namespace A032262.P14011404606013793865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + A002051 (A254667 (n + 1) - 1).toNat

end

end A032262.P14011404606013793865

/-! ## A032262.P18324506088819689855

`A034008(n)+A052882(n)/A028310(n)`
-/

namespace A032262.P18324506088819689855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034008 n : ℚ) + (A052882 n : ℚ) / (A028310 n : ℚ)

end

end A032262.P18324506088819689855

/-!
# A032263: Number of ways to partition n labeled elements into 4 pie slices allowing the pie to be turned over; number of 2-element proper antichains of an n-element set.

The programs for A032263, the canonical program `A032263.P9062424155737793790` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032263 has offset 1).

The definition of A032263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032263.P9062424155737793790

`(4^(n+1)-4*3^(n+1)+6*2^(n+1)-4)/8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032263

/-- `(4^(n+1)-4*3^(n+1)+6*2^(n+1)-4)/8` -/
def P9062424155737793790.Spec : Prop :=
  ∀ n, P9062424155737793790.a n = (A032263 (n + 1) : ℚ)

end A032263

/-! ## A032263.P18022686903527105340

`A134019(n)-2^n`
-/

namespace A032263.P18022686903527105340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n - (2 ^ n : ℤ)

end

end A032263.P18022686903527105340

namespace A032263

/-- `A134019(n)-2^n` -/
def P18022686903527105340.Spec : Prop :=
  ∀ n, P18022686903527105340.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P7800459436911351774

`A134168(n)-3^n`
-/

namespace A032263.P7800459436911351774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134168 n - (3 ^ n : ℤ)

end

end A032263.P7800459436911351774

namespace A032263

/-- `A134168(n)-3^n` -/
def P7800459436911351774.Spec : Prop :=
  ∀ n, P7800459436911351774.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P9966917629054875732

`3*A056473(Δ[n²])`
-/

namespace A032263.P9966917629054875732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032263.P9966917629054875732

namespace A032263

/-- `3*A056473(Δ[n²])` -/
def P9966917629054875732.Spec : Prop :=
  ∀ n, P9966917629054875732.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P14532757046429676439

`3*A056510(Δ[n²])`
-/

namespace A032263.P14532757046429676439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A056510 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A032263.P14532757046429676439

namespace A032263

/-- `3*A056510(Δ[n²])` -/
def P14532757046429676439.Spec : Prop :=
  ∀ n, P14532757046429676439.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P10379867968406830220

`A134045(n)-∑[2^n]`
-/

namespace A032263.P10379867968406830220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134045 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A032263.P10379867968406830220

namespace A032263

/-- `A134045(n)-∑[2^n]` -/
def P10379867968406830220.Spec : Prop :=
  ∀ n, P10379867968406830220.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P3909035619713056413

`floor(6*A056473(2*(n+1))/2)`
-/

namespace A032263.P3909035619713056413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * A056473 (2 * (n + 1)) : ℚ) / 2⌋

end

end A032263.P3909035619713056413

namespace A032263

/-- `floor(6*A056473(2*(n+1))/2)` -/
def P3909035619713056413.Spec : Prop :=
  ∀ n, P3909035619713056413.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P17521407370185552637

`floor(6*A056510(2*n+1)/2)`
-/

namespace A032263.P17521407370185552637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * A056510 (2 * n + 1) : ℚ) / 2⌋

end

end A032263.P17521407370185552637

namespace A032263

/-- `floor(6*A056510(2*n+1)/2)` -/
def P17521407370185552637.Spec : Prop :=
  ∀ n, P17521407370185552637.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P2057721370300828807

`A053154(n)-A001047(n)`
-/

namespace A032263.P2057721370300828807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053154 n - A001047 n

end

end A032263.P2057721370300828807

namespace A032263

/-- `A053154(n)-A001047(n)` -/
def P2057721370300828807.Spec : Prop :=
  ∀ n, P2057721370300828807.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P4386350110452293088

`A084869(n)-A007051(n)`
-/

namespace A032263.P4386350110452293088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A007051 n

end

end A032263.P4386350110452293088

namespace A032263

/-- `A084869(n)-A007051(n)` -/
def P4386350110452293088.Spec : Prop :=
  ∀ n, P4386350110452293088.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P9130471055347958722

`A134018(n)-A000225(n)`
-/

namespace A032263.P9130471055347958722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134018 n - A000225 n

end

end A032263.P9130471055347958722

namespace A032263

/-- `A134018(n)-A000225(n)` -/
def P9130471055347958722.Spec : Prop :=
  ∀ n, P9130471055347958722.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P10251254043331719942

`A133789(n)-A003462(n)`
-/

namespace A032263.P10251254043331719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133789 n - A003462 n

end

end A032263.P10251254043331719942

namespace A032263

/-- `A133789(n)-A003462(n)` -/
def P10251254043331719942.Spec : Prop :=
  ∀ n, P10251254043331719942.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P16868837405354691180

`A134064(n)-A083323(n)`
-/

namespace A032263.P16868837405354691180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 n - A083323 n

end

end A032263.P16868837405354691180

namespace A032263

/-- `A134064(n)-A083323(n)` -/
def P16868837405354691180.Spec : Prop :=
  ∀ n, P16868837405354691180.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P7172994983014402471

`A092880(n)-A134064(n)`
-/

namespace A032263.P7172994983014402471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092880 n - A134064 n

end

end A032263.P7172994983014402471

namespace A032263

/-- `A092880(n)-A134064(n)` -/
def P7172994983014402471.Spec : Prop :=
  ∀ n, P7172994983014402471.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P16406375555012010461

`A134165(n)-A094374(n)`
-/

namespace A032263.P16406375555012010461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134165 n - A094374 n

end

end A032263.P16406375555012010461

namespace A032263

/-- `A134165(n)-A094374(n)` -/
def P16406375555012010461.Spec : Prop :=
  ∀ n, P16406375555012010461.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P1232130522851049576

`abs(A000079(n)-A134019(n))`
-/

namespace A032263.P1232130522851049576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A134019 n|

end

end A032263.P1232130522851049576

namespace A032263

/-- `abs(A000079(n)-A134019(n))` -/
def P1232130522851049576.Spec : Prop :=
  ∀ n, P1232130522851049576.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P11560144973996510330

`A007582(n)-A053156(n+1)`
-/

namespace A032263.P11560144973996510330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n - A053156 (n + 1)

end

end A032263.P11560144973996510330

namespace A032263

/-- `A007582(n)-A053156(n+1)` -/
def P11560144973996510330.Spec : Prop :=
  ∀ n, P11560144973996510330.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P12884858241413232745

`A256873(n)-A267799(n+1)`
-/

namespace A032263.P12884858241413232745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256873 n - A267799 (n + 1)

end

end A032263.P12884858241413232745

namespace A032263

/-- `A256873(n)-A267799(n+1)` -/
def P12884858241413232745.Spec : Prop :=
  ∀ n, P12884858241413232745.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P8117012174750004261

`A006516(n)-A000392(n+2)`
-/

namespace A032263.P8117012174750004261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n - A000392 (n + 2)

end

end A032263.P8117012174750004261

namespace A032263

/-- `A006516(n)-A000392(n+2)` -/
def P8117012174750004261.Spec : Prop :=
  ∀ n, P8117012174750004261.a n = A032263 (n + 1)

end A032263

/-! ## A032263.P12325043707524507358

`A028401(n+2)-A067771(n)`
-/

namespace A032263.P12325043707524507358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 2) - A067771 n

end

end A032263.P12325043707524507358

namespace A032263

/-- `A028401(n+2)-A067771(n)` -/
def P12325043707524507358.Spec : Prop :=
  ∀ n, P12325043707524507358.a n = A032263 (n + 1)

end A032263

/-!
# A032264: Number of ways to partition n labeled elements into pie slices of odd sizes allowing the pie to be turned over.

The programs for A032264, there is no canonical definition to state claims against.
-/

/-! ## A032264.P15261744667721651256

`A289497(A193829(n+2)+A006154(n))`
-/

namespace A032264.P15261744667721651256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A193829 (n + 2) + A006154 n).toNat

end

end A032264.P15261744667721651256

/-! ## A032264.P6134685134051423725

`A226762(2^floor(∑[n/2]))`
-/

namespace A032264.P6134685134051423725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℤ))).toNat

end

end A032264.P6134685134051423725

/-! ## A032264.P8178886303799374046

`A113863(floor((n/2)²))+C(n, 4)`
-/

namespace A032264.P8178886303799374046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113863 ⌊((n : ℚ) / 2) ^ 2⌋.toNat + (Nat.choose n 4 : ℤ)

end

end A032264.P8178886303799374046

/-!
# A032266: "DIJ" (bracelet, indistinct, labeled) transform of 2,2,2,2,...

The programs for A032266, there is no canonical definition to state claims against.
-/

/-! ## A032266.P8426779971519828845

`∑[A182112(A033312(n))]`
-/

namespace A032266.P8426779971519828845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182112 (A033312 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032266.P8426779971519828845

/-! ## A032266.P14866738531766095027

`A169782(A002866(n))+n`
-/

namespace A032266.P14866738531766095027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A002866 n).toNat + (n : ℤ)

end

end A032266.P14866738531766095027

/-!
# A032267: "DIJ" (bracelet, indistinct, labeled) transform of 2,1,1,1,...

The programs for A032267, there is no canonical definition to state claims against.
-/

/-! ## A032267.P2542999216081156707

`record[A129262(A320472(2^n))]`
-/

namespace A032267.P2542999216081156707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129262 (A320472 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032267.P2542999216081156707

/-! ## A032267.P15166348887960711552

`record[C(A077168(n), A291649(n))]`
-/

namespace A032267.P15166348887960711552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077168 n).toNat (A291649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032267.P15166348887960711552

/-!
# A032268: "DIJ" (bracelet, indistinct, labeled) transform of 3,3,3,3,...

The programs for A032268, there is no canonical definition to state claims against.
-/

/-! ## A032268.P13383214947891598200

`A010364(2*(n+1))+∏[(n+1)/∏{p}[n+1, (n+1)/#]]`
-/

namespace A032268.P13383214947891598200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010364 (2 * (n + 1)) : ℚ) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A032268.P13383214947891598200

/-!
# A032269: "DIJ" (bracelet, indistinct, labeled) transform of 1,2,3,4,...

The programs for A032269, there is no canonical definition to state claims against.
-/

/-! ## A032269.P4450929327289225559

`A248148(A000255(n))`
-/

namespace A032269.P4450929327289225559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A000255 n).toNat

end

end A032269.P4450929327289225559

/-! ## A032269.P2869182639243824090

`A065361(A294160(n))`
-/

namespace A032269.P2869182639243824090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A294160 n).toNat

end

end A032269.P2869182639243824090

/-!
# A032270: "DIJ" (bracelet, indistinct, labeled) transform of 1,3,5,7,...

The programs for A032270, there is no canonical definition to state claims against.
-/

/-! ## A032270.P4964909881734253739

`A069004((n+1)^n+1)`
-/

namespace A032270.P4964909881734253739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069004 ((n + 1) ^ n + 1)

end

end A032270.P4964909881734253739

/-! ## A032270.P9300627047804586138

`A101402(A084786(n))`
-/

namespace A032270.P9300627047804586138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A084786 n).toNat

end

end A032270.P9300627047804586138

/-!
# A032271: Shifts left under "DIJ" (bracelet, indistinct, labeled) transform, with a(1) = 1.

The programs for A032271, there is no canonical definition to state claims against.
-/

/-! ## A032271.P7378232994886181371

`A088183(A330907(n))+A003659(n+1)`
-/

namespace A032271.P7378232994886181371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (A330907 n).toNat + A003659 (n + 1)

end

end A032271.P7378232994886181371

/-!
# A032272: Shifts left under "DIJ" (bracelet, indistinct, labeled) transform, with a(1)=2.

The programs for A032272, there is no canonical definition to state claims against.
-/

/-! ## A032272.P1147577799728560768

`A008619(A245408(n))+A001764(n)`
-/

namespace A032272.P1147577799728560768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A245408 n).toNat + A001764 n

end

end A032272.P1147577799728560768

/-! ## A032272.P7754486395263839757

`A302402(A143293(n)+A052762(n))`
-/

namespace A032272.P7754486395263839757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 (A143293 n + A052762 n).toNat

end

end A032272.P7754486395263839757

/-!
# A032273: Shifts left 2 places under "DIJ" (bracelet, indistinct, labeled) transform.

The programs for A032273, there is no canonical definition to state claims against.
-/

/-! ## A032273.P2690816961762829067

`A065648(A129952(n)+A060223(n))`
-/

namespace A032273.P2690816961762829067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A129952 n + A060223 n).toNat

end

end A032273.P2690816961762829067

/-! ## A032273.P9821530370355550501

`A057361(A298782(2*n+1)+A207828(n))`
-/

namespace A032273.P9821530370355550501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A298782 (2 * n + 1) + A207828 n).toNat

end

end A032273.P9821530370355550501

/-!
# A032274: Number of labeled series-reduced dyslexic mobiles (polygon rooted trees) with n leaves (root has degree 0 or >=2).

The programs for A032274, there is no canonical definition to state claims against.
-/

/-! ## A032274.P14239331331766351115

`A039215(A012244(n))`
-/

namespace A032274.P14239331331766351115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039215 (A012244 n).toNat

end

end A032274.P14239331331766351115

/-! ## A032274.P12912784455620009804

`A166517(or(∑{e}[n+1, #], A352236(n)))`
-/

namespace A032274.P12912784455620009804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A352236 n)).toNat

end

end A032274.P12912784455620009804

/-!
# A032275: Number of bracelets (turnover necklaces) of n beads of 4 colors.

The programs for A032275, there is no canonical definition to state claims against.
-/

/-! ## A032275.P12201256625720959092

`(A001868(n+1)+A056486(n+1))/2`
-/

namespace A032275.P12201256625720959092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001868 (n + 1) + A056486 (n + 1) : ℚ) / 2

end

end A032275.P12201256625720959092

/-! ## A032275.P7067883519557633143

`A278640(n+1)+A056486(n+1)`
-/

namespace A032275.P7067883519557633143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278640 (n + 1) + A056486 (n + 1)

end

end A032275.P7067883519557633143

/-! ## A032275.P9996040266810820668

`A001868(n+1)-A278640(n+1)`
-/

namespace A032275.P9996040266810820668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001868 (n + 1) - A278640 (n + 1)

end

end A032275.P9996040266810820668

/-! ## A032275.P17405331758039377536

`∑{d}[n+1, A032295(#)]`
-/

namespace A032275.P17405331758039377536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032295 d

end

end A032275.P17405331758039377536

/-! ## A032275.P17887154358551145716

`A123045(n+1)+2^(n+1)`
-/

namespace A032275.P17887154358551145716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123045 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A032275.P17887154358551145716

/-! ## A032275.P15995472008465266384

`record[∑{d}[A007599(n), A032295(#)]]`
-/

namespace A032275.P15995472008465266384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A032295 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032275.P15995472008465266384

/-! ## A032275.P3833466606906385556

`A256217(2*n+3)+A123045(n+1)`
-/

namespace A032275.P3833466606906385556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256217 (2 * n + 3) + A123045 (n + 1)

end

end A032275.P3833466606906385556

/-! ## A032275.P1846553654377024659

`A051137(∑[n+5]+6-A289207(n))`
-/

namespace A032275.P1846553654377024659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ) - A289207 n).toNat

end

end A032275.P1846553654377024659

/-!
# A032276: Number of bracelets (turnover necklaces) with n beads of 5 colors.

The programs for A032276, there is no canonical definition to state claims against.
-/

/-! ## A032276.P12727432843223573282

`(A001869(n+1)+A056487(n+2))/2`
-/

namespace A032276.P12727432843223573282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001869 (n + 1) + A056487 (n + 2) : ℚ) / 2

end

end A032276.P12727432843223573282

/-! ## A032276.P1779440369880058544

`A001869(n+1)-A278641(n+1)`
-/

namespace A032276.P1779440369880058544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001869 (n + 1) - A278641 (n + 1)

end

end A032276.P1779440369880058544

/-! ## A032276.P11496351822374416027

`A278641(n+1)+A056487(n+2)`
-/

namespace A032276.P11496351822374416027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278641 (n + 1) + A056487 (n + 2)

end

end A032276.P11496351822374416027

/-! ## A032276.P1190212345130190668

`∑{d}[n+1, A032296(#)]`
-/

namespace A032276.P1190212345130190668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032296 d

end

end A032276.P1190212345130190668

/-! ## A032276.P8505923120723047506

`A051137(∑[n+5]+14)`
-/

namespace A032276.P8505923120723047506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 (∑ j ∈ Finset.range (n + 1), f1 j + 14)

end

end A032276.P8505923120723047506

/-!
# A032277: Number of ways to partition n elements into pie slices each with an odd number of elements allowing the pie to be turned over.

The programs for A032277, there is no canonical definition to state claims against.
-/

/-! ## A032277.P888223146888868715

`A059841(n)+A032278(n+1)`
-/

namespace A032277.P888223146888868715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A032278 (n + 1)

end

end A032277.P888223146888868715

/-! ## A032277.P8184349042201292990

`A032278(n+1)+C(2*A004526(n), n)`
-/

namespace A032277.P8184349042201292990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032278 (n + 1) + (Nat.choose (2 * A004526 n).toNat n : ℤ)

end

end A032277.P8184349042201292990

/-! ## A032277.P3881974478835183247

`A032278(n+1)+C(A004526(n), A004526(n+1))`
-/

namespace A032277.P3881974478835183247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032278 (n + 1) + (Nat.choose (A004526 n).toNat (A004526 (n + 1)).toNat : ℤ)

end

end A032277.P3881974478835183247

/-! ## A032277.P11350565804646865450

`A032278(n+1)+∑[A042963(n+1)-A014601(n)]`
-/

namespace A032277.P11350565804646865450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) - A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032278 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032277.P11350565804646865450

/-! ## A032277.P9956849784891575199

`A097331(A014741(val(n+1, 2)+1))+A032278(n+1)`
-/

namespace A032277.P9956849784891575199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A014741 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat + A032278 (n + 1)

end

end A032277.P9956849784891575199

/-!
# A032278: Number of ways to partition n elements into pie slices each with at least 2 elements allowing the pie to be turned over.

The programs for A032278, there is no canonical definition to state claims against.
-/

/-! ## A032278.P8568615486203483357

`A032277(n+1)-char[2*n]`
-/

namespace A032278.P8568615486203483357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A032278.P8568615486203483357

/-! ## A032278.P15797756901443939649

`A032277(n+1)+A000035(n)-1`
-/

namespace A032278.P15797756901443939649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + A000035 n - 1

end

end A032278.P15797756901443939649

/-! ## A032278.P4663908265389330725

`A032277(n+1)+A000034(n)-2`
-/

namespace A032278.P4663908265389330725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + A000034 n - 2

end

end A032278.P4663908265389330725

/-! ## A032278.P9296312313606110768

`A032277(n+1)+n-A109613(n)`
-/

namespace A032278.P9296312313606110768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + (n : ℤ) - A109613 n

end

end A032278.P9296312313606110768

/-! ## A032278.P9293025365368271139

`A032277(n+1)+Δ[A008619(n)]-1`
-/

namespace A032278.P9293025365368271139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + (f1 (n + 1) - f1 n) - 1

end

end A032278.P9293025365368271139

/-! ## A032278.P12555103284722198509

`A032277(n+1)+char[A005408(n)]-1`
-/

namespace A032278.P12555103284722198509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

end

end A032278.P12555103284722198509

/-! ## A032278.P11787530592716076869

`A032277(n+1)+char[A093178(n)]-1`
-/

namespace A032278.P11787530592716076869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1

end

end A032278.P11787530592716076869

/-! ## A032278.P18303945598780397191

`A032277(n+1)+1-A328580(A328580(n))`
-/

namespace A032278.P18303945598780397191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032277 (n + 1) + 1 - A328580 (A328580 n).toNat

end

end A032278.P18303945598780397191

/-!
# A032279: Number of bracelets (turnover necklaces) of n beads of 2 colors, 5 of them black.

The programs for A032279, the canonical program `A032279.P18072235396307489489` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032279 has offset 5).

The definition of A032279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A032279.P18072235396307489489

`(A008646(n)+C(floor((n+4)/2), 2))/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A032279

/-- `(A008646(n)+C(floor((n+4)/2), 2))/2` -/
def P18072235396307489489.Spec : Prop :=
  ∀ n, P18072235396307489489.a n = (A032279 (n + 5) : ℚ)

end A032279

/-! ## A032279.P16514170401848741144

`(ceil(C(n+4, 4)/5)+C(floor(n/2)+2, 2))/2`
-/

namespace A032279.P16514170401848741144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(Nat.choose (n + 4) 4 : ℚ) / 5⌉ + (Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2 : ℤ) : ℚ) / 2

end

end A032279.P16514170401848741144

namespace A032279

/-- `(ceil(C(n+4, 4)/5)+C(floor(n/2)+2, 2))/2` -/
def P16514170401848741144.Spec : Prop :=
  ∀ n, P16514170401848741144.a n = (A032279 (n + 5) : ℚ)

end A032279

/-! ## A032279.P16305451612539004269

`(A008805(n)+A008646(n))/2`
-/

namespace A032279.P16305451612539004269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008805 n + A008646 n : ℚ) / 2

end

end A032279.P16305451612539004269

namespace A032279

/-- `(A008805(n)+A008646(n))/2` -/
def P16305451612539004269.Spec : Prop :=
  ∀ n, P16305451612539004269.a n = (A032279 (n + 5) : ℚ)

end A032279

/-! ## A032279.P17943641493429582298

`A052307(A167499(n+4))`
-/

namespace A032279.P17943641493429582298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167499 (n + 4)).toNat

end

end A032279.P17943641493429582298

namespace A032279

/-- `A052307(A167499(n+4))` -/
def P17943641493429582298.Spec : Prop :=
  ∀ n, P17943641493429582298.a n = A032279 (n + 5)

end A032279

/-! ## A032279.P16588683362581574762

`A052307(A000096(n+4)+6)`
-/

namespace A032279.P16588683362581574762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 4) + 6).toNat

end

end A032279.P16588683362581574762

namespace A032279

/-- `A052307(A000096(n+4)+6)` -/
def P16588683362581574762.Spec : Prop :=
  ∀ n, P16588683362581574762.a n = A032279 (n + 5)

end A032279

/-! ## A032279.P11545824199233017905

`A052307(A000217(n+5)+5)`
-/

namespace A032279.P11545824199233017905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000217 (n + 5) + 5).toNat

end

end A032279.P11545824199233017905

namespace A032279

/-- `A052307(A000217(n+5)+5)` -/
def P11545824199233017905.Spec : Prop :=
  ∀ n, P11545824199233017905.a n = A032279 (n + 5)

end A032279

/-! ## A032279.P12646366584045724844

`A052307(A000124(n+4)+n+9)`
-/

namespace A032279.P12646366584045724844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000124 (n + 4) + (n + 9 : ℤ)).toNat

end

end A032279.P12646366584045724844

namespace A032279

/-- `A052307(A000124(n+4)+n+9)` -/
def P12646366584045724844.Spec : Prop :=
  ∀ n, P12646366584045724844.a n = A032279 (n + 5)

end A032279

/-! ## A032279.P7109154926401874276

`A052307(A055999(n+3))`
-/

namespace A032279.P7109154926401874276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 3)).toNat

end

end A032279.P7109154926401874276

namespace A032279

/-- `A052307(A055999(n+3))` -/
def P7109154926401874276.Spec : Prop :=
  ∀ n, P7109154926401874276.a n = A032279 (n + 5)

end A032279

/-! ## A032279.P2264602610514583915

`A052307(eq[5, A025581(n)])`
-/

namespace A032279.P2264602610514583915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032279.P2264602610514583915

namespace A032279

/-- `A052307(eq[5, A025581(n)])` -/
def P2264602610514583915.Spec : Prop :=
  ∀ n, P2264602610514583915.a n = A032279 (n + 5)

end A032279

/-!
# A032280: Number of bracelets (turnover necklaces) of n beads of 2 colors, 7 of them black.

The programs for A032280, there is no canonical definition to state claims against.
-/

/-! ## A032280.P12634655089695819802

`A052307(A167499(n+6)+2)`
-/

namespace A032280.P12634655089695819802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167499 (n + 6) + 2).toNat

end

end A032280.P12634655089695819802

/-! ## A032280.P17695289361410337380

`A052307(A167614(n+6)+4)`
-/

namespace A032280.P17695289361410337380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 6) + 4).toNat

end

end A032280.P17695289361410337380

/-! ## A032280.P16626967677456890460

`A052307(A134869(n+7)+6)`
-/

namespace A032280.P16626967677456890460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A134869 (n + 7) + 6).toNat

end

end A032280.P16626967677456890460

/-! ## A032280.P5060468406496648655

`A052307(A000096(n+6)+8)`
-/

namespace A032280.P5060468406496648655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 6) + 8).toNat

end

end A032280.P5060468406496648655

/-! ## A032280.P8153083905281786523

`A052307(eq[7, A025581(n)])`
-/

namespace A032280.P8153083905281786523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032280.P8153083905281786523

/-! ## A032280.P4317194939938873321

`A052307(A056000(n+4)+2)`
-/

namespace A032280.P4317194939938873321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056000 (n + 4) + 2).toNat

end

end A032280.P4317194939938873321

/-! ## A032280.P8679218900939771530

`A052307(A055999(n+5)-2)`
-/

namespace A032280.P8679218900939771530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 5) - 2).toNat

end

end A032280.P8679218900939771530

/-! ## A032280.P7873579413813904045

`A052307(A034856(n+7)-6)`
-/

namespace A032280.P7873579413813904045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A034856 (n + 7) - 6).toNat

end

end A032280.P7873579413813904045

/-! ## A032280.P5375549947073009624

`A052307(A000217(n+8)-8)`
-/

namespace A032280.P5375549947073009624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000217 (n + 8) - 8).toNat

end

end A032280.P5375549947073009624

/-!
# A032281: Number of bracelets (turnover necklaces) of n beads of 2 colors, 9 of them black.

The programs for A032281, there is no canonical definition to state claims against.
-/

/-! ## A032281.P4264138350229669225

`A052307(A000096(n+8)+10)`
-/

namespace A032281.P4264138350229669225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 8) + 10).toNat

end

end A032281.P4264138350229669225

/-! ## A032281.P9177212577096208662

`A052307(A167614(n+10)-A004273(n+8))`
-/

namespace A032281.P9177212577096208662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 10) - A004273 (n + 8)).toNat

end

end A032281.P9177212577096208662

/-! ## A032281.P1990917186901645567

`A052307(A056000(n+6))`
-/

namespace A032281.P1990917186901645567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056000 (n + 6)).toNat

end

end A032281.P1990917186901645567

/-! ## A032281.P4274336285287675320

`A052307(A000217(n+10)-10)`
-/

namespace A032281.P4274336285287675320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000217 (n + 10) - 10).toNat

end

end A032281.P4274336285287675320

/-! ## A032281.P8385004409271903116

`A052307(A055999(n+5)+A004273(n+8))`
-/

namespace A032281.P8385004409271903116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 5) + A004273 (n + 8)).toNat

end

end A032281.P8385004409271903116

/-! ## A032281.P7866755948113346272

`A052307(A165900(n+9)-A167499(n+5))`
-/

namespace A032281.P7866755948113346272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A165900 (n + 9) - A167499 (n + 5)).toNat

end

end A032281.P7866755948113346272

/-!
# A032282: Number of bracelets (turnover necklaces) of n beads of 2 colors, 11 of them black.

The programs for A032282, the canonical program `A032282.P16459769969451444963` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A032282 has offset 11).

The definition of A032282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A032282.P16459769969451444963

`(ceil(C(n+10, 10)/11)+C(floor(n/2)+5, 5))/2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A032282

/-- `(ceil(C(n+10, 10)/11)+C(floor(n/2)+5, 5))/2` -/
def P16459769969451444963.Spec : Prop :=
  ∀ n, P16459769969451444963.a n = (A032282 (n + 11) : ℚ)

end A032282

/-! ## A032282.P3199773373486242064

`(A189980(n)+A032196(n))/2`
-/

namespace A032282.P3199773373486242064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189980 (n + 10) + A032196 (n + 11) : ℚ) / 2

end

end A032282.P3199773373486242064

namespace A032282

/-- `(A189980(n)+A032196(n))/2` -/
def P3199773373486242064.Spec : Prop :=
  ∀ n, P3199773373486242064.a n = (A032282 (n + 11) : ℚ)

end A032282

/-! ## A032282.P9049422892620750312

`(A189980(n)+A032196(n))*2^A008683(A092627(n+1))`
-/

namespace A032282.P9049422892620750312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189980 (n + 10) + A032196 (n + 11) : ℚ) * (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ)

end

end A032282.P9049422892620750312

namespace A032282

/-- `(A189980(n)+A032196(n))*2^A008683(A092627(n+1))` -/
def P9049422892620750312.Spec : Prop :=
  ∀ n, P9049422892620750312.a n = (A032282 (n + 11) : ℚ)

end A032282

/-! ## A032282.P11293940325456679104

`A052307(A056000(n+8)-2)`
-/

namespace A032282.P11293940325456679104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A056000 (n + 8) - 2).toNat

end

end A032282.P11293940325456679104

namespace A032282

/-- `A052307(A056000(n+8)-2)` -/
def P11293940325456679104.Spec : Prop :=
  ∀ n, P11293940325456679104.a n = A032282 (n + 11)

end A032282

/-! ## A032282.P7525959501803996501

`A052307(A155212(n+8)-4)`
-/

namespace A032282.P7525959501803996501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A155212 (n + 8) - 4).toNat

end

end A032282.P7525959501803996501

namespace A032282

/-- `A052307(A155212(n+8)-4)` -/
def P7525959501803996501.Spec : Prop :=
  ∀ n, P7525959501803996501.a n = A032282 (n + 11)

end A032282

/-! ## A032282.P7176784273149280194

`A052307(A167614(n+10)+8)`
-/

namespace A032282.P7176784273149280194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A167614 (n + 10) + 8).toNat

end

end A032282.P7176784273149280194

namespace A032282

/-- `A052307(A167614(n+10)+8)` -/
def P7176784273149280194.Spec : Prop :=
  ∀ n, P7176784273149280194.a n = A032282 (n + 11)

end A032282

/-! ## A032282.P7365626562516747441

`A052307(A000096(n+10)+12)`
-/

namespace A032282.P7365626562516747441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A000096 (n + 10) + 12).toNat

end

end A032282.P7365626562516747441

namespace A032282

/-- `A052307(A000096(n+10)+12)` -/
def P7365626562516747441.Spec : Prop :=
  ∀ n, P7365626562516747441.a n = A032282 (n + 11)

end A032282

/-! ## A032282.P10441166353235072765

`A052307(A133263(n+8)+A008574(n+7))`
-/

namespace A032282.P10441166353235072765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A133263 (n + 8) + A008574 (n + 7)).toNat

end

end A032282.P10441166353235072765

namespace A032282

/-- `A052307(A133263(n+8)+A008574(n+7))` -/
def P10441166353235072765.Spec : Prop :=
  ∀ n, P10441166353235072765.a n = A032282 (n + 11)

end A032282

/-! ## A032282.P2570912609310044526

`A052307(A055999(n+7)+A004273(n+9))`
-/

namespace A032282.P2570912609310044526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A055999 (n + 7) + A004273 (n + 9)).toNat

end

end A032282.P2570912609310044526

namespace A032282

/-- `A052307(A055999(n+7)+A004273(n+9))` -/
def P2570912609310044526.Spec : Prop :=
  ∀ n, P2570912609310044526.a n = A032282 (n + 11)

end A032282

/-!
# A032283: "DIK" (bracelet, indistinct, unlabeled) transform of 2,2,2,2...

The programs for A032283, there is no canonical definition to state claims against.
-/

/-! ## A032283.P18044896153445888383

`A208668(n+1)-2`
-/

namespace A032283.P18044896153445888383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208668 (n + 1) - 2

end

end A032283.P18044896153445888383

/-! ## A032283.P15051344227423089984

`A327274(A138642(n+1))+A208668(n+1)`
-/

namespace A032283.P15051344227423089984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A138642 (n + 1)).toNat + A208668 (n + 1)

end

end A032283.P15051344227423089984

/-! ## A032283.P3871671147321856316

`A327274(A139889(n+1))+A208668(n+1)`
-/

namespace A032283.P3871671147321856316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A139889 (n + 1)).toNat + A208668 (n + 1)

end

end A032283.P3871671147321856316

/-! ## A032283.P1611816237460410350

`A327274(A154114(n+1))+A208668(n+1)`
-/

namespace A032283.P1611816237460410350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A154114 (n + 1)).toNat + A208668 (n + 1)

end

end A032283.P1611816237460410350

/-! ## A032283.P9872901089803930977

`A327274(A006005(n+2))+A208668(n+1)`
-/

namespace A032283.P9872901089803930977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A006005 (n + 2)).toNat + A208668 (n + 1)

end

end A032283.P9872901089803930977

/-!
# A032284: "DIK" (bracelet, indistinct, unlabeled) transform of 3,3,3,3...

The programs for A032284, there is no canonical definition to state claims against.
-/

/-! ## A032284.P7952569925814942744

`A161221(n+1)+A000918(n)`
-/

namespace A032284.P7952569925814942744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161221 (n + 1) + A000918 n

end

end A032284.P7952569925814942744

/-! ## A032284.P9560925508855456678

`A161221(n+1)+A000225(n)-1`
-/

namespace A032284.P9560925508855456678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161221 (n + 1) + (A000225 n - 1)

end

end A032284.P9560925508855456678

/-! ## A032284.P481347399063181317

`A161221(n+1)+A000079(n)-2`
-/

namespace A032284.P481347399063181317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161221 (n + 1) + (A000079 n - 2)

end

end A032284.P481347399063181317

/-!
# A032285: "DIK" (bracelet, indistinct, unlabeled) transform of 4,4,4,4...

The programs for A032285, there is no canonical definition to state claims against.
-/

/-! ## A032285.P8077081718202858521

`A248561(∑[A082590(n)])`
-/

namespace A032285.P8077081718202858521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248561 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A032285.P8077081718202858521

/-!
# A032286: "DIK" (bracelet, indistinct, unlabeled) transform of 5,5,5,5...

The programs for A032286, there is no canonical definition to state claims against.
-/

/-! ## A032286.P6579593412243684875

`A347398(A291256(n+1))+A291244(n)`
-/

namespace A032286.P6579593412243684875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347398 (A291256 (n + 1)).toNat + A291244 n

end

end A032286.P6579593412243684875

/-!
# A032287: "DIK" (bracelet, indistinct, unlabeled) transform of 1,2,3,4,...

The programs for A032287, there is no canonical definition to state claims against.
-/

/-! ## A032287.P15373671326478497758

`(A032198(n+1)+A308747(n+1))/2`
-/

namespace A032287.P15373671326478497758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032198 (n + 1) + A308747 (n + 1) : ℚ) / 2

end

end A032287.P15373671326478497758

/-! ## A032287.P5045120898688411998

`A004525(A308747(n+1)+A032198(n+1))`
-/

namespace A032287.P5045120898688411998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A308747 (n + 1) + A032198 (n + 1)).toNat

end

end A032287.P5045120898688411998

/-! ## A032287.P15765153905998799047

`A004526(A308747(n+1)+A032198(n+1))`
-/

namespace A032287.P15765153905998799047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A308747 (n + 1) + A032198 (n + 1)).toNat

end

end A032287.P15765153905998799047

/-! ## A032287.P10444911164315103088

`A026741(A308747(n+1)+A032198(n+1))`
-/

namespace A032287.P10444911164315103088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A308747 (n + 1) + A032198 (n + 1)).toNat

end

end A032287.P10444911164315103088

/-! ## A032287.P1863571639357754896

`A110654(A308747(n+1)+A032198(n+1))`
-/

namespace A032287.P1863571639357754896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A308747 (n + 1) + A032198 (n + 1)).toNat

end

end A032287.P1863571639357754896

/-!
# A032288: "DIK" (bracelet, indistinct, unlabeled) transform of 1,3,5,7...

The programs for A032288, there is no canonical definition to state claims against.
-/

/-! ## A032288.P10626882042296802701

`A325690(n)+A325682(A008574(n))`
-/

namespace A032288.P10626882042296802701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 n + A325682 (A008574 n).toNat

end

end A032288.P10626882042296802701

/-! ## A032288.P453265148885952942

`record[A038566(floor(5^n/(13*(n+1)))+1)]`
-/

namespace A032288.P453265148885952942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (⌊(5 ^ n : ℚ) / (13 * (n + 1) : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A032288.P453265148885952942

/-!
# A032289: Number of dyslexic rooted compound windmills with n nodes.

The programs for A032289, there is no canonical definition to state claims against.
-/

/-! ## A032289.P11984862576267415361

`A024417(A092566(n)+A029062(n))`
-/

namespace A032289.P11984862576267415361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A092566 n + A029062 n).toNat

end

end A032289.P11984862576267415361

/-! ## A032289.P10064739087253229932

`A024417(A092566(n)+A029090(n))`
-/

namespace A032289.P10064739087253229932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A092566 n + A029090 n).toNat

end

end A032289.P10064739087253229932

/-! ## A032289.P2918555812005442328

`A024417(A092566(n)+A047920(n))`
-/

namespace A032289.P2918555812005442328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A092566 n + A047920 n).toNat

end

end A032289.P2918555812005442328

/-! ## A032289.P9802311035093430312

`A024417(A092566(n)+A051274(n))`
-/

namespace A032289.P9802311035093430312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A092566 n + A051274 n).toNat

end

end A032289.P9802311035093430312

/-! ## A032289.P16137773517288988041

`A024417(A105809(n)+A092566(n))`
-/

namespace A032289.P16137773517288988041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A105809 n + A092566 n).toNat

end

end A032289.P16137773517288988041

/-!
# A032290: Number of dyslexic rooted compound windmills with n nodes and leaves of 2 colors.

The programs for A032290, there is no canonical definition to state claims against.
-/

/-! ## A032290.P2575117581779998696

`A243156(n)+A002024(A002873(n))`
-/

namespace A032290.P2575117581779998696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243156 n + A002024 (A002873 n).toNat

end

end A032290.P2575117581779998696

/-! ## A032290.P12435863946508076077

`A194640(A071721(n))+A108350(n)`
-/

namespace A032290.P12435863946508076077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A071721 n).toNat + A108350 n

end

end A032290.P12435863946508076077

/-! ## A032290.P11555242267036460300

`A030530(A166340(n+1)+A001077(n))`
-/

namespace A032290.P11555242267036460300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (A166340 (n + 1) + A001077 n).toNat

end

end A032290.P11555242267036460300

/-!
# A032291: Shifts left 2 places under "DIK" (bracelet, indistinct, unlabeled) transform.

The programs for A032291, there is no canonical definition to state claims against.
-/

/-! ## A032291.P5531306819193362603

`A114886(A030227(n))`
-/

namespace A032291.P5531306819193362603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114886 (A030227 n).toNat

end

end A032291.P5531306819193362603

/-! ## A032291.P13407902948916307744

`A342526(A274160(n))`
-/

namespace A032291.P13407902948916307744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342526 (A274160 n).toNat

end

end A032291.P13407902948916307744

/-! ## A032291.P9350266039639903907

`A120951(A008928(n+1))`
-/

namespace A032291.P9350266039639903907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120951 (A008928 (n + 1)).toNat

end

end A032291.P9350266039639903907

/-! ## A032291.P9899536243884299188

`A085736(A324407(n+1))`
-/

namespace A032291.P9899536243884299188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A324407 (n + 1)).toNat

end

end A032291.P9899536243884299188

/-! ## A032291.P16971917222622257386

`A000196(A149146(abs(1-n)))`
-/

namespace A032291.P16971917222622257386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A149146 |1 - (n : ℤ)|.toNat).toNat

end

end A032291.P16971917222622257386

/-!
# A032292: Number of series-reduced dyslexic planted compound windmills with n leaves.

The programs for A032292, there is no canonical definition to state claims against.
-/

/-! ## A032292.P263183864001567495

`A038567(A001586(n))-A102541(n)`
-/

namespace A032292.P263183864001567495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A001586 n).toNat - A102541 n

end

end A032292.P263183864001567495

/-! ## A032292.P5778814265300663821

`A249728(A036619(n)*A148082(n))`
-/

namespace A032292.P5778814265300663821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A036619 n * A148082 n).toNat

end

end A032292.P5778814265300663821

/-! ## A032292.P3214609212202085496

`A191769(n)+A032741(A241703(n+1))`
-/

namespace A032292.P3214609212202085496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191769 n + A032741 (A241703 (n + 1)).toNat

end

end A032292.P3214609212202085496

/-! ## A032292.P10056675282506727364

`A194640(A345200(n+1)+A036719(n))`
-/

namespace A032292.P10056675282506727364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A345200 (n + 1) + A036719 n).toNat

end

end A032292.P10056675282506727364

/-!
# A032293: Number of series-reduced dyslexic planted compound windmills with n leaves of 2 colors.

The programs for A032293, there is no canonical definition to state claims against.
-/

/-! ## A032293.P12525828182821185657

`A195120(A165817(n))+A097613(n+1)`
-/

namespace A032293.P12525828182821185657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A165817 n).toNat + A097613 (n + 1)

end

end A032293.P12525828182821185657

/-!
# A032294: Number of aperiodic bracelets (turnover necklaces) with n beads of 3 colors.

The programs for A032294, there is no canonical definition to state claims against.
-/

/-! ## A032294.P273262176104338632

`A276550(∑[n+3]+1)`
-/

namespace A032294.P273262176104338632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A032294.P273262176104338632

/-! ## A032294.P5308814407975664410

`Δ[A276550(A034856(n+1))]+a(n-1)` with `a(0)=3`
-/

namespace A032294.P5308814407975664410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A032294.P5308814407975664410

/-! ## A032294.P7771731041153452577

`A276550(A034856(n+2))%A199555(n)`
-/

namespace A032294.P7771731041153452577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276550 (A034856 (n + 2)).toNat) (A199555 n)

end

end A032294.P7771731041153452577

/-! ## A032294.P1139998833619967837

`A276550(eq[2, A140996(n)])%A022034(n)`
-/

namespace A032294.P1139998833619967837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A022034 n)

end

end A032294.P1139998833619967837

/-! ## A032294.P13073206183876682429

`A033999(n)²*A276550(A034856(n+2))`
-/

namespace A032294.P13073206183876682429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A276550 (A034856 (n + 2)).toNat

end

end A032294.P13073206183876682429

/-! ## A032294.P4067737990957307018

`A057427(n+1)*A276550(A034856(n+2))`
-/

namespace A032294.P4067737990957307018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A276550 (A034856 (n + 2)).toNat

end

end A032294.P4067737990957307018

/-! ## A032294.P14998765484029107076

`A057427(n+2)+A276550(A034856(n+2))-1`
-/

namespace A032294.P14998765484029107076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) + (A276550 (A034856 (n + 2)).toNat - 1)

end

end A032294.P14998765484029107076

/-! ## A032294.P13286607151342405678

`((-1)^A007318(n))²*A276550(A034856(n+2))`
-/

namespace A032294.P13286607151342405678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A276550 (A034856 (n + 2)).toNat : ℚ)

end

end A032294.P13286607151342405678

/-! ## A032294.P7565395210782632131

`A276550(A034856(n+2))+floor(A191153(n+1)/2)`
-/

namespace A032294.P7565395210782632131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A034856 (n + 2)).toNat + ⌊(A191153 (n + 1) : ℚ) / 2⌋

end

end A032294.P7565395210782632131

/-! ## A032294.P3293575480013489777

`A276550(A034856(n+2))+A166586(or(1, 3*n)+1)`
-/

namespace A032294.P3293575480013489777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A034856 (n + 2)).toNat + A166586 (Nat.lor 1 (3 * n) + 1)

end

end A032294.P3293575480013489777

/-!
# A032295: Number of aperiodic bracelets (turn over necklaces) with n beads of 4 colors.

The programs for A032295, there is no canonical definition to state claims against.
-/

/-! ## A032295.P5000430657735265443

`∑{d}[n+1, A008683(#)*A032275((n+1)/#)]`
-/

namespace A032295.P5000430657735265443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A032275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A032295.P5000430657735265443

/-! ## A032295.P11974845334015528615

`A276550(A027379(n+2))`
-/

namespace A032295.P11974845334015528615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A027379 (n + 2)).toNat

end

end A032295.P11974845334015528615

/-! ## A032295.P786073227699622773

`A276550(A055998(n+2))`
-/

namespace A032295.P786073227699622773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A055998 (n + 2)).toNat

end

end A032295.P786073227699622773

/-! ## A032295.P6478135111533754891

`A276550(A056000(n)+7)`
-/

namespace A032295.P6478135111533754891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A056000 n + 7).toNat

end

end A032295.P6478135111533754891

/-! ## A032295.P17947375087624318226

`A276550(eq[4, A140996(n)])`
-/

namespace A032295.P17947375087624318226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032295.P17947375087624318226

/-! ## A032295.P3490049298705663738

`A276550(A046691(n+2)+1)`
-/

namespace A032295.P3490049298705663738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A046691 (n + 2) + 1).toNat

end

end A032295.P3490049298705663738

/-! ## A032295.P14384722731498847576

`A276550(A052905(n+1)+2)`
-/

namespace A032295.P14384722731498847576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A052905 (n + 1) + 2).toNat

end

end A032295.P14384722731498847576

/-! ## A032295.P4936326876292913339

`A276550(A000217(n+4)-3)`
-/

namespace A032295.P4936326876292913339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A000217 (n + 4) - 3).toNat

end

end A032295.P4936326876292913339

/-! ## A032295.P5156166634778606554

`A276550(A016028(n+5)+2*n+1)`
-/

namespace A032295.P5156166634778606554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (A016028 (n + 5) + (2 * n + 1 : ℤ)).toNat

end

end A032295.P5156166634778606554

/-!
# A032296: Number of aperiodic bracelets (turnover necklaces) with n beads of 5 colors.

The programs for A032296, there is no canonical definition to state claims against.
-/

/-! ## A032296.P18231770956267059917

`∑{d}[n+1, A008683(#)*A032276((n+1)/#)]`
-/

namespace A032296.P18231770956267059917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A032276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A032296.P18231770956267059917

/-! ## A032296.P5923744362642246913

`A276550(∑[n+5]+6)`
-/

namespace A032296.P5923744362642246913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A032296.P5923744362642246913

/-! ## A032296.P17594027146221525976

`A276550(eq[8, A140996(n)])%A022034(n)`
-/

namespace A032296.P17594027146221525976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A022034 n)

end

end A032296.P17594027146221525976

/-! ## A032296.P10386674390105911232

`A276550(eq[8, A140996(n)])+A000007(n+1)`
-/

namespace A032296.P10386674390105911232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A032296.P10386674390105911232

/-! ## A032296.P11875044181880623708

`A276550(eq[8, A140996(n)])+A000038(n+1)`
-/

namespace A032296.P11875044181880623708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000038 (n + 1)

end

end A032296.P11875044181880623708

/-! ## A032296.P11474291629798805565

`A115357((n+1)*(n+2))*A276550(eq[8, A140996(n)])`
-/

namespace A032296.P11474291629798805565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 ((n + 1) * (n + 2)) * A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032296.P11474291629798805565

/-! ## A032296.P9539986410787394744

`A115360((n+1)*(n+2))*A276550(eq[8, A140996(n)])`
-/

namespace A032296.P9539986410787394744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115360 ((n + 1) * (n + 2)) * A276550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A032296.P9539986410787394744

/-!
# A032297: "EFJ" (unordered, size, labeled) transform of 2,2,2,2,...

The programs for A032297, there is no canonical definition to state claims against.
-/

/-! ## A032297.P8837125888544466086

`A000027(A032209(n))`
-/

namespace A032297.P8837125888544466086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A032209 n).toNat

end

end A032297.P8837125888544466086

/-! ## A032297.P4562883925486161790

`filter[A032209(n), A105597(#)]`
-/

namespace A032297.P4562883925486161790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A032297.P4562883925486161790

/-! ## A032297.P2372876085212566832

`filter[A032209(n), A166486(#)]`
-/

namespace A032297.P2372876085212566832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A032297.P2372876085212566832

/-! ## A032297.P5123166164574223372

`filter[A032209(n), A168185(#)]`
-/

namespace A032297.P5123166164574223372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A032297.P5123166164574223372

/-! ## A032297.P10131228959112846003

`filter[A032209(n), A336834(#)]`
-/

namespace A032297.P10131228959112846003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336834 (f1 j).toNat = 1) n)

end

end A032297.P10131228959112846003

/-!
# A032298: "EFJ" (unordered, size, labeled) transform of 2,1,1,1,...

The programs for A032298, there is no canonical definition to state claims against.
-/

/-! ## A032298.P4318200617118590029

`A327876(n)+A007837(n)`
-/

namespace A032298.P4318200617118590029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327876 n + A007837 n

end

end A032298.P4318200617118590029

/-! ## A032298.P8775111187795051600

`A327876(n)+A327869(∑[n])`
-/

namespace A032298.P8775111187795051600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327876 n + A327869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A032298.P8775111187795051600

/-! ## A032298.P10709334361795470897

`A032311(n)+2*A327876(n)`
-/

namespace A032298.P10709334361795470897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032311 n + 2 * A327876 n

end

end A032298.P10709334361795470897

/-! ## A032298.P14234928870288392986

`2*A007837(n)-A032311(n)`
-/

namespace A032298.P14234928870288392986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007837 n - A032311 n

end

end A032298.P14234928870288392986

/-! ## A032298.P874180132747503409

`A327876(n)+A327876(n)+A327876(n+1)/(n+1)`
-/

namespace A032298.P874180132747503409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327876 n : ℚ) + ((A327876 n : ℚ) + (A327876 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A032298.P874180132747503409

/-! ## A032298.P15461586694696603490

`A327876(n)+A271423(A133263(n)-1)`
-/

namespace A032298.P15461586694696603490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327876 n + A271423 (A133263 n - 1).toNat

end

end A032298.P15461586694696603490

/-! ## A032298.P17609837101482666796

`A327869(A000124(n))+A271423(A000124(n))`
-/

namespace A032298.P17609837101482666796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (A000124 n).toNat + A271423 (A000124 n).toNat

end

end A032298.P17609837101482666796

/-! ## A032298.P16157464014616894989

`A332253(A000096(n))+A327876(n)`
-/

namespace A032298.P16157464014616894989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332253 (A000096 n).toNat + A327876 n

end

end A032298.P16157464014616894989

/-!
# A032299: "EFJ" (unordered, size, labeled) transform of 1,2,3,4,...

The programs for A032299, there is no canonical definition to state claims against.
-/

/-! ## A032299.P1116061268344347275

`A000027(A032211(n))`
-/

namespace A032299.P1116061268344347275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A032211 n).toNat

end

end A032299.P1116061268344347275

/-! ## A032299.P17096837268588159329

`A032211(A061479(n))`
-/

namespace A032299.P17096837268588159329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032211 (A061479 n).toNat

end

end A032299.P17096837268588159329

/-! ## A032299.P18416562907872549197

`filter[A032211(n), A296077(#)]`
-/

namespace A032299.P18416562907872549197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296077 (f1 j).toNat = 1) n)

end

end A032299.P18416562907872549197

/-! ## A032299.P4030706796640816813

`A032211(n)+A000007(A032210(n))`
-/

namespace A032299.P4030706796640816813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032211 n + A000007 (A032210 n).toNat

end

end A032299.P4030706796640816813

/-! ## A032299.P1708946162193140288

`A032211(n)+A000007(A297708(n))`
-/

namespace A032299.P1708946162193140288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032211 n + A000007 (A297708 n).toNat

end

end A032299.P1708946162193140288

