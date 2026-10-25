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
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A311000: Coordination sequence Gal.6.16.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311000, there is no canonical definition to state claims against.
-/

/-! ## A311000.P2787383375859785242

`A301291(n)-A358379(A064609(n+1))`
-/

namespace A311000.P2787383375859785242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A358379 (A064609 (n + 1)).toNat

end

end A311000.P2787383375859785242

/-! ## A311000.P13632285177283898172

`A310994(n)+A202238(A042563(n))`
-/

namespace A311000.P13632285177283898172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310994 n + A202238 (A042563 n).toNat

end

end A311000.P13632285177283898172

/-! ## A311000.P4162187924123944332

`A310995(n)+A202238(A042563(n))`
-/

namespace A311000.P4162187924123944332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310995 n + A202238 (A042563 n).toNat

end

end A311000.P4162187924123944332

/-! ## A311000.P9699810976210318024

`A020498(n+1)+A001221(A098515(n+1))`
-/

namespace A311000.P9699810976210318024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020498 (n + 1) + A001221 (A098515 (n + 1)).toNat

end

end A311000.P9699810976210318024

/-! ## A311000.P17445053146684322147

`A307598(A163786(n+1))+A300306(n+1)`
-/

namespace A311000.P17445053146684322147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A163786 (n + 1)).toNat + A300306 (n + 1)

end

end A311000.P17445053146684322147

/-!
# A311001: Coordination sequence Gal.6.70.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311001, there is no canonical definition to state claims against.
-/

/-! ## A311001.P1399253106147644124

`A311269(n)-A302110(A320460(n+1))`
-/

namespace A311001.P1399253106147644124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311269 n - A302110 (A320460 (n + 1)).toNat

end

end A311001.P1399253106147644124

/-! ## A311001.P15669976873984758438

`A206914(3*n)+A066016(A000837(n))`
-/

namespace A311001.P15669976873984758438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206914 (3 * n) + A066016 (A000837 n).toNat

end

end A311001.P15669976873984758438

/-!
# A311002: Coordination sequence Gal.3.3.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311002, there is no canonical definition to state claims against.
-/

/-! ## A311002.P18367601751883991546

`A312981(n)-A265227(n+1)+n`
-/

namespace A311002.P18367601751883991546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312981 n - A265227 (n + 1) + (n : ℤ)

end

end A311002.P18367601751883991546

/-! ## A311002.P11699010629743581835

`A244895(n)+A004525(A310200(2*n))`
-/

namespace A311002.P11699010629743581835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + A004525 (A310200 (2 * n)).toNat

end

end A311002.P11699010629743581835

/-! ## A311002.P7891693370340880779

`A004525(A310252(2*n)+A244895(n))`
-/

namespace A311002.P7891693370340880779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310252 (2 * n) + A244895 n).toNat

end

end A311002.P7891693370340880779

/-! ## A311002.P15755845984916507160

`A330025(2*n)+A004525(A310200(2*n))`
-/

namespace A311002.P15755845984916507160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A004525 (A310200 (2 * n)).toNat

end

end A311002.P15755845984916507160

/-! ## A311002.P124726353254039819

`A004525(A330025(2*n)+A310252(2*n))`
-/

namespace A311002.P124726353254039819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A330025 (2 * n) + A310252 (2 * n)).toNat

end

end A311002.P124726353254039819

/-!
# A311003: Coordination sequence Gal.6.492.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311003, there is no canonical definition to state claims against.
-/

/-! ## A311003.P13092500060415520102

`A000120(A127498(n))+3*n`
-/

namespace A311003.P13092500060415520102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A127498 n).toNat + (3 * n : ℤ)

end

end A311003.P13092500060415520102

/-! ## A311003.P2895538258707629988

`A008585(n)+A000120(A127498(n))`
-/

namespace A311003.P2895538258707629988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A000120 (A127498 n).toNat

end

end A311003.P2895538258707629988

/-! ## A311003.P6109206999207799027

`A072473(n+1)-A001222(A279333(n))`
-/

namespace A311003.P6109206999207799027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A001222 (A279333 n).toNat

end

end A311003.P6109206999207799027

/-! ## A311003.P17174149787382578498

`lt[A107830(A107860(n+2)), A107860(n+2)]`
-/

namespace A311003.P17174149787382578498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107830 (A107860 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107860 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311003.P17174149787382578498

/-! ## A311003.P12702341973197457113

`A356104(n+1)-A164659(A023221(2*n+1))`
-/

namespace A311003.P12702341973197457113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356104 (n + 1) - A164659 (A023221 (2 * n + 1)).toNat

end

end A311003.P12702341973197457113

/-!
# A311004: Coordination sequence Gal.5.28.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311004, there is no canonical definition to state claims against.
-/

/-! ## A311004.P2720107830326233456

`A168224(n+1)-A057077(A168248(n+1))`
-/

namespace A311004.P2720107830326233456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168224 (n + 1) - A057077 (A168248 (n + 1)).toNat

end

end A311004.P2720107830326233456

/-! ## A311004.P17614324346780487769

`A168224(n+1)+A057077(A168248(n+1)+1)`
-/

namespace A311004.P17614324346780487769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168224 (n + 1) + A057077 (A168248 (n + 1) + 1).toNat

end

end A311004.P17614324346780487769

/-! ## A311004.P5900325781124484044

`∑[A099774(A248326(n))]`
-/

namespace A311004.P5900325781124484044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A248326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311004.P5900325781124484044

/-! ## A311004.P8072577310555236401

`eq[1, A347380(A027642(n))]`
-/

namespace A311004.P8072577310555236401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347380 (A027642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A311004.P8072577310555236401

/-!
# A311005: Coordination sequence Gal.5.27.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311005, there is no canonical definition to state claims against.
-/

/-! ## A311005.P7112562379851851974

`A311335(n)-A333842(A120305(n))`
-/

namespace A311005.P7112562379851851974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311335 n - A333842 (A120305 n).toNat

end

end A311005.P7112562379851851974

/-! ## A311005.P7476757351112098036

`A003002(A003002(3*n+1)*A231014(n+1))`
-/

namespace A311005.P7476757351112098036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A003002 (3 * n + 1) * A231014 (n + 1)).toNat

end

end A311005.P7476757351112098036

/-! ## A311005.P7078562153988362785

`∑[A099774(Δ[A292480(n)])]`
-/

namespace A311005.P7078562153988362785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292480 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311005.P7078562153988362785

/-! ## A311005.P10670396832355633464

`∑[A181819(A092321(n)+A062927(n+1))]`
-/

namespace A311005.P10670396832355633464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A092321 n + A062927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311005.P10670396832355633464

/-!
# A311006: Coordination sequence Gal.6.71.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311006, there is no canonical definition to state claims against.
-/

/-! ## A311006.P7397627080072233037

`∑[A132881(∑[A154150(n+1)])]`
-/

namespace A311006.P7397627080072233037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154150 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311006.P7397627080072233037

/-! ## A311006.P12077495055654199386

`A310997(n)+A163534(ceil(4^n/2))`
-/

namespace A311006.P12077495055654199386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310997 n + A163534 ⌈(4 ^ n : ℚ) / 2⌉.toNat

end

end A311006.P12077495055654199386

/-! ## A311006.P5828029641319932948

`∑[A304492(A292127((n+1)*∏{p}[n+1, #]))]`
-/

namespace A311006.P5828029641319932948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304492 (A292127 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311006.P5828029641319932948

/-! ## A311006.P12624521558792643023

`and(A095312(A042262(n)), A312437(n))`
-/

namespace A311006.P12624521558792643023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095312 (A042262 n).toNat) (A312437 n)

end

end A311006.P12624521558792643023

/-! ## A311006.P17944239044486447447

`A111224(n+1)+A048896(A179190(n))`
-/

namespace A311006.P17944239044486447447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111224 (n + 1) + A048896 (A179190 n).toNat

end

end A311006.P17944239044486447447

/-!
# A311007: Coordination sequence Gal.4.19.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311007, there is no canonical definition to state claims against.
-/

/-! ## A311007.P7032695350807191611

`A072473(n+1)-A248327(A001815(n))`
-/

namespace A311007.P7032695350807191611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A248327 (A001815 n).toNat

end

end A311007.P7032695350807191611

/-! ## A311007.P18025561179616779704

`A039956(n+1)-A001227(A001608(3*n+4))`
-/

namespace A311007.P18025561179616779704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A001227 (A001608 (3 * n + 4)).toNat

end

end A311007.P18025561179616779704

/-! ## A311007.P9606706150997265955

`∑[A005811(A085128((2*n+1)²)/5)]`
-/

namespace A311007.P9606706150997265955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (SequenceMachineLib.roundAway ((A085128 ((2 * n + 1) ^ 2) : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311007.P9606706150997265955

/-! ## A311007.P5852356804371958533

`A311000(n)+A202238(A042563(n))`
-/

namespace A311007.P5852356804371958533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311000 n + A202238 (A042563 n).toNat

end

end A311007.P5852356804371958533

/-! ## A311007.P7528204633462892136

`A311599(n)-A079205(A168542(n))`
-/

namespace A311007.P7528204633462892136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311599 n - A079205 (A168542 n).toNat

end

end A311007.P7528204633462892136

/-!
# A311019: Coordination sequence Gal.6.492.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311019, there is no canonical definition to state claims against.
-/

/-! ## A311019.P13766368045783134356

`A120887(A030752(n+1))`
-/

namespace A311019.P13766368045783134356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120887 (A030752 (n + 1)).toNat

end

end A311019.P13766368045783134356

/-! ## A311019.P9463633777066406043

`∑[A204217(∑[A303278(3*n+1)])]`
-/

namespace A311019.P9463633777066406043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303278 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204217 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311019.P9463633777066406043

/-! ## A311019.P9437362867899278771

`A120887(or(A052905(n), A174956(n+1)))`
-/

namespace A311019.P9437362867899278771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120887 (Int.lor (A052905 n) (A174956 (n + 1))).toNat

end

end A311019.P9437362867899278771

/-! ## A311019.P12277431167282136602

`A251533(n+1)+A029837(A086991(n+1))`
-/

namespace A311019.P12277431167282136602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251533 (n + 1) + A029837 (A086991 (n + 1)).toNat

end

end A311019.P12277431167282136602

/-! ## A311019.P107550356719442815

`A013948(2*n+1)-A135010(A000244(n))`
-/

namespace A311019.P107550356719442815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (2 * n + 1) - A135010 (A000244 n).toNat

end

end A311019.P107550356719442815

/-!
# A311022: Coordination sequence Gal.5.36.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311022, there is no canonical definition to state claims against.
-/

/-! ## A311022.P12022350296982402637

`A280814(A314004(n)+A293448(n+1))`
-/

namespace A311022.P12022350296982402637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A314004 n + A293448 (n + 1)).toNat

end

end A311022.P12022350296982402637

/-! ## A311022.P6507802119742269168

`A240025(A301277(n+2))+∑[A061395(∏[A085358(n+1)])]`
-/

namespace A311022.P6507802119742269168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (A301277 (n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311022.P6507802119742269168

/-! ## A311022.P15692681437079263243

`A240025(A301277(n+2))+A000267(A008778(n)%A119965(2*n))`
-/

namespace A311022.P15692681437079263243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 (A301277 (n + 2)).toNat + A000267 (Int.tmod (A008778 n) (A119965 (2 * n))).toNat

end

end A311022.P15692681437079263243

/-! ## A311022.P10577287876972530444

`∑[A102855(A005006(n+1)²)]`
-/

namespace A311022.P10577287876972530444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102855 (A005006 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311022.P10577287876972530444

/-!
# A311023: Coordination sequence Gal.4.25.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311023, there is no canonical definition to state claims against.
-/

/-! ## A311023.P16158905879991292346

`A311022(n)+A185284(A311022(n))`
-/

namespace A311023.P16158905879991292346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311022 n + A185284 (A311022 n).toNat

end

end A311023.P16158905879991292346

/-! ## A311023.P13079506634906734834

`∑[A007814(A005817(n+1))+2]-1`
-/

namespace A311023.P13079506634906734834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005817 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311023.P13079506634906734834

/-! ## A311023.P5089039171787707534

`A353472(A190531(n+1))+A311022(n)`
-/

namespace A311023.P5089039171787707534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (A190531 (n + 1)).toNat + A311022 n

end

end A311023.P5089039171787707534

/-! ## A311023.P8467501600006504234

`A311022(n)+A273302(A058276(2*n))`
-/

namespace A311023.P8467501600006504234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311022 n + A273302 (A058276 (2 * n)).toNat

end

end A311023.P8467501600006504234

/-! ## A311023.P8607051507892381187

`A326880(3*(n+1))-A004539(A000108(n))`
-/

namespace A311023.P8607051507892381187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326880 (3 * (n + 1)) - A004539 (A000108 n).toNat

end

end A311023.P8607051507892381187

/-!
# A311024: Coordination sequence Gal.3.35.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311024, there is no canonical definition to state claims against.
-/

/-! ## A311024.P5174940199374477170

`record[A313546(n)-A276156(n)]`
-/

namespace A311024.P5174940199374477170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n - A276156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311024.P5174940199374477170

/-!
# A311025: Coordination sequence Gal.5.49.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311025, there is no canonical definition to state claims against.
-/

/-! ## A311025.P12330248259063153195

`∩[lt[2, A153782(n+1)], A153762(n+1)]`
-/

namespace A311025.P12330248259063153195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153782 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A311025.P12330248259063153195

/-! ## A311025.P2566871595781271449

`A153762(lt[A088670(n), A060791(n+1)])`
-/

namespace A311025.P2566871595781271449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A311025.P2566871595781271449

/-! ## A311025.P15191000709250474353

`lt[A306333(n+1), A306366(A306352(2*(n+1)))]`
-/

namespace A311025.P15191000709250474353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306366 (A306352 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311025.P15191000709250474353

/-! ## A311025.P2129085537765953134

`lt[A349123(A056106(2*(n+2))), A095801(n+1)]`
-/

namespace A311025.P2129085537765953134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349123 (A056106 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311025.P2129085537765953134

/-!
# A311026: Coordination sequence Gal.6.481.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311026, there is no canonical definition to state claims against.
-/

/-! ## A311026.P225165197857660835

`A153762(A069623(n+1)+A062399(n))`
-/

namespace A311026.P225165197857660835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (A069623 (n + 1) + A062399 n).toNat

end

end A311026.P225165197857660835

/-! ## A311026.P6894914346044832442

`A265337(A070198(n))+A052488(n+1)`
-/

namespace A311026.P6894914346044832442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (A070198 n).toNat + A052488 (n + 1)

end

end A311026.P6894914346044832442

/-! ## A311026.P5906637353525412710

`∑[A061394(A229573(n+1)+1)]`
-/

namespace A311026.P5906637353525412710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061394 (A229573 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311026.P5906637353525412710

/-! ## A311026.P13562904587388895803

`∑[A001222(∑[A269240(n+1)]+n)]+n`
-/

namespace A311026.P13562904587388895803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269240 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311026.P13562904587388895803

/-! ## A311026.P16282513826014034426

`A032512(3*n)+A000002(A290206(n))`
-/

namespace A311026.P16282513826014034426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032512 (3 * n) + A000002 (A290206 n).toNat

end

end A311026.P16282513826014034426

/-!
# A311029: Coordination sequence Gal.6.112.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311029, there is no canonical definition to state claims against.
-/

/-! ## A311029.P7936408764179011662

`A265036(n)+A080791(A014417(n))`
-/

namespace A311029.P7936408764179011662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265036 n + A080791 (A014417 n).toNat

end

end A311029.P7936408764179011662

/-! ## A311029.P8394493818763581500

`A311289(n)-A001222(A126101(n))`
-/

namespace A311029.P8394493818763581500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A001222 (A126101 n).toNat

end

end A311029.P8394493818763581500

/-! ## A311029.P15069192481987520133

`A311176(n)-A293435(A020112(n))`
-/

namespace A311029.P15069192481987520133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n - A293435 (A020112 n).toNat

end

end A311029.P15069192481987520133

/-! ## A311029.P10448619255290427297

`∑[A162226(n+1)+A001222(A162224(n))]`
-/

namespace A311029.P10448619255290427297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (n + 1) + A001222 (A162224 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311029.P10448619255290427297

/-!
# A311030: Coordination sequence Gal.5.36.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311030, there is no canonical definition to state claims against.
-/

/-! ## A311030.P9299207469480814759

`A375758(3*n+1)+A327205(A266707(n))`
-/

namespace A311030.P9299207469480814759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375758 (3 * n + 1) + A327205 (A266707 n).toNat

end

end A311030.P9299207469480814759

/-!
# A311031: Coordination sequence Gal.6.114.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311031, there is no canonical definition to state claims against.
-/

/-! ## A311031.P4849578563315994192

`∑[A007895(A283205(3*n+2)²)]`
-/

namespace A311031.P4849578563315994192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A283205 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311031.P4849578563315994192

/-! ## A311031.P17959388353126196323

`A090955(n+1)+A005614(A299262(2*(n+1)))`
-/

namespace A311031.P17959388353126196323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090955 (n + 1) + A005614 (A299262 (2 * (n + 1))).toNat

end

end A311031.P17959388353126196323

/-!
# A311032: Coordination sequence Gal.6.10.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311032, there is no canonical definition to state claims against.
-/

/-! ## A311032.P8668663804230335137

`∑[A066400(A001792(n)-A130321(n)+1)]`
-/

namespace A311032.P8668663804230335137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (A001792 n - A130321 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311032.P8668663804230335137

/-! ## A311032.P13523014669440619368

`∑[A175064(n²+1)]+n`
-/

namespace A311032.P13523014669440619368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175064 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311032.P13523014669440619368

/-! ## A311032.P8272163417546005394

`∑[A066400(∑[A057960(n)])]`
-/

namespace A311032.P8272163417546005394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311032.P8272163417546005394

/-! ## A311032.P3205513164000582451

`A335519(A036378(n))+3*n`
-/

namespace A311032.P3205513164000582451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (A036378 n).toNat + (3 * n : ℤ)

end

end A311032.P3205513164000582451

/-! ## A311032.P13485097196210517796

`A000005(A245879(n+1))+3*n`
-/

namespace A311032.P13485097196210517796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A245879 (n + 1)).toNat + (3 * n : ℤ)

end

end A311032.P13485097196210517796

/-!
# A311033: Coordination sequence Gal.5.19.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311033, there is no canonical definition to state claims against.
-/

/-! ## A311033.P15928578572332366783

`A313502(n)-record[A348528(n)]`
-/

namespace A311033.P15928578572332366783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311033.P15928578572332366783

/-! ## A311033.P1910546786056306800

`A313502(A062399(n))-A052413(n+1)`
-/

namespace A311033.P1910546786056306800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 (A062399 n).toNat - A052413 (n + 1)

end

end A311033.P1910546786056306800

/-! ## A311033.P1600777877451001263

`A313502(n)-A052413(A351870(n)+1)`
-/

namespace A311033.P1600777877451001263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313502 n - A052413 (A351870 n + 1).toNat

end

end A311033.P1600777877451001263

/-! ## A311033.P11711086589663489168

`A100721(3*n+1)+lt[A293688(n), A126892(n)]`
-/

namespace A311033.P11711086589663489168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (3 * n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A311033.P11711086589663489168

/-! ## A311033.P3153779119042325780

`A312876(n)-A001221(A149382(n))`
-/

namespace A311033.P3153779119042325780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312876 n - A001221 (A149382 n).toNat

end

end A311033.P3153779119042325780

/-!
# A311034: Coordination sequence Gal.6.1.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311034, there is no canonical definition to state claims against.
-/

/-! ## A311034.P6821731655703800376

`A219361(3*n+1)+A010051(A022917(n))`
-/

namespace A311034.P6821731655703800376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219361 (3 * n + 1) + A010051 (A022917 n).toNat

end

end A311034.P6821731655703800376

/-! ## A311034.P11240879733091550508

`A314671(A120126(n))-A094606(n+1)`
-/

namespace A311034.P11240879733091550508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314671 (A120126 n).toNat - A094606 (n + 1)

end

end A311034.P11240879733091550508

/-! ## A311034.P3145840681862668180

`A135677(n+1)-A304819(A145072(n))`
-/

namespace A311034.P3145840681862668180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135677 (n + 1) - A304819 (A145072 n).toNat

end

end A311034.P3145840681862668180

/-! ## A311034.P5781920477949636739

`A336356(A007716(n))+A219361(3*n+1)`
-/

namespace A311034.P5781920477949636739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A007716 n).toNat + A219361 (3 * n + 1)

end

end A311034.P5781920477949636739

/-! ## A311034.P17244670206033015375

`A107846(A000583(n))+A052413(3*n+2)`
-/

namespace A311034.P17244670206033015375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A000583 n).toNat + A052413 (3 * n + 2)

end

end A311034.P17244670206033015375

/-!
# A311035: Coordination sequence Gal.6.87.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311035, there is no canonical definition to state claims against.
-/

/-! ## A311035.P9920048578280493405

`∑[A001222(A002805(n+2)+2*n)]`
-/

namespace A311035.P9920048578280493405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002805 (n + 2) + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311035.P9920048578280493405

/-! ## A311035.P6399771682926917763

`A022844(n)+A003056(A322260(n+1))`
-/

namespace A311035.P6399771682926917763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + A003056 (A322260 (n + 1)).toNat

end

end A311035.P6399771682926917763

/-! ## A311035.P5978484099481496621

`A244511(3*n+2)+A100995(A126940(n))`
-/

namespace A311035.P5978484099481496621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244511 (3 * n + 2) + A100995 (A126940 n).toNat

end

end A311035.P5978484099481496621

/-! ## A311035.P4774115185803149472

`round(log2(A225614(n+1)))`
-/

namespace A311035.P4774115185803149472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A225614 (n + 1) : ℝ))

end

end A311035.P4774115185803149472

/-! ## A311035.P4353787912232069893

`A297464(n)+A037803(A247602(n+1))`
-/

namespace A311035.P4353787912232069893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297464 n + A037803 (A247602 (n + 1)).toNat

end

end A311035.P4353787912232069893

/-!
# A311036: Coordination sequence Gal.6.37.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311036, there is no canonical definition to state claims against.
-/

/-! ## A311036.P14803897135690921374

`∑[A333252(n²+1)]+2*n`
-/

namespace A311036.P14803897135690921374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333252 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A311036.P14803897135690921374

/-! ## A311036.P10535866533775435601

`∑[A272851(A272845(n))]-1`
-/

namespace A311036.P10535866533775435601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272851 (A272845 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311036.P10535866533775435601

/-! ## A311036.P8732663400232557685

`A311137(n)-A001221(A074859(n))`
-/

namespace A311036.P8732663400232557685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311137 n - A001221 (A074859 n).toNat

end

end A311036.P8732663400232557685

/-! ## A311036.P16249818119217506579

`A008574(n)-A302242(A089790(n+2))`
-/

namespace A311036.P16249818119217506579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A302242 (A089790 (n + 2)).toNat

end

end A311036.P16249818119217506579

/-! ## A311036.P18216849163431972274

`A073576(n)+A029837(A096461(3*n+1))`
-/

namespace A311036.P18216849163431972274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073576 n + A029837 (A096461 (3 * n + 1)).toNat

end

end A311036.P18216849163431972274

/-!
# A311037: Coordination sequence Gal.5.1.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311037, there is no canonical definition to state claims against.
-/

/-! ## A311037.P10960693418076890930

`A003056(A085787(3*n+1)+A029964(n+1))`
-/

namespace A311037.P10960693418076890930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A085787 (3 * n + 1) + A029964 (n + 1)).toNat

end

end A311037.P10960693418076890930

/-! ## A311037.P6871449228149517288

`∑[A126805(A017281(n)²)]`
-/

namespace A311037.P6871449228149517288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (A017281 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311037.P6871449228149517288

/-! ## A311037.P10110064447731899514

`∑[A126805(sqrt(A017284(n)))]`
-/

namespace A311037.P10110064447731899514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126805 (SequenceMachineLib.roundAway (Real.sqrt (A017284 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311037.P10110064447731899514

/-! ## A311037.P15961815746165065832

`∑[∑{e}[A337181(A103147(n)), #]]`
-/

namespace A311037.P15961815746165065832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337181 (A103147 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311037.P15961815746165065832

/-! ## A311037.P16951579466647616964

`A176843(A141214(n))+A031876(n)`
-/

namespace A311037.P16951579466647616964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176843 (A141214 n).toNat + A031876 n

end

end A311037.P16951579466647616964

/-!
# A311038: Coordination sequence Gal.6.87.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311038, there is no canonical definition to state claims against.
-/

/-! ## A311038.P1921138338181052366

`2*A310954(n)-A265036(n)`
-/

namespace A311038.P1921138338181052366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A310954 n - A265036 n

end

end A311038.P1921138338181052366

/-! ## A311038.P10548881779526924131

`A004277(A310954(n))-A265036(n)`
-/

namespace A311038.P10548881779526924131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A310954 n).toNat - A265036 n

end

end A311038.P10548881779526924131

/-! ## A311038.P13987355456033546837

`A332014(A241981(n))+A029927(3*n)`
-/

namespace A311038.P13987355456033546837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332014 (A241981 n).toNat + A029927 (3 * n)

end

end A311038.P13987355456033546837

/-! ## A311038.P15316364251169914497

`A042996(2*(n+1))-A259936(A006720(n+1))`
-/

namespace A311038.P15316364251169914497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (2 * (n + 1)) - A259936 (A006720 (n + 1)).toNat

end

end A311038.P15316364251169914497

/-! ## A311038.P18428948679386542337

`A111660(A265188(2*n+1)+A047363(2*(n+1)))`
-/

namespace A311038.P18428948679386542337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A265188 (2 * n + 1) + A047363 (2 * (n + 1))).toNat

end

end A311038.P18428948679386542337

/-!
# A311039: Coordination sequence Gal.6.81.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311039, there is no canonical definition to state claims against.
-/

/-! ## A311039.P14529811633045851510

`lt[A240204(n), A007318(A291166(3*n+5))]+2*n+1`
-/

namespace A311039.P14529811633045851510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A291166 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2 * n + 1

end

end A311039.P14529811633045851510

/-! ## A311039.P7183160188346098918

`floor(A322901(6*n+3)/2)`
-/

namespace A311039.P7183160188346098918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322901 (6 * n + 3) : ℚ) / 2⌋

end

end A311039.P7183160188346098918

/-! ## A311039.P6216479737596647640

`A311187(n)-A001221(A178010(n))`
-/

namespace A311039.P6216479737596647640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311187 n - A001221 (A178010 n).toNat

end

end A311039.P6216479737596647640

/-! ## A311039.P17887483984068936547

`A130259(A000041(3*n+2))+A130240(n)`
-/

namespace A311039.P17887483984068936547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A000041 (3 * n + 2)).toNat + A130240 n

end

end A311039.P17887483984068936547

/-! ## A311039.P1290130429360913315

`A103679(3*(n+1))-A328308(A001168(n))`
-/

namespace A311039.P1290130429360913315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103679 (3 * (n + 1)) - A328308 (A001168 n).toNat

end

end A311039.P1290130429360913315

/-!
# A311040: Coordination sequence Gal.5.16.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311040, there is no canonical definition to state claims against.
-/

/-! ## A311040.P1033687174886996509

`∑[A001222(A114146(2*n))+1]`
-/

namespace A311040.P1033687174886996509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114146 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311040.P1033687174886996509

/-! ## A311040.P17586777808842801174

`A004709(A346132(3*n+2))-1`
-/

namespace A311040.P17586777808842801174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A346132 (3 * n + 2)).toNat - 1

end

end A311040.P17586777808842801174

/-! ## A311040.P9869979133739454747

`A122437(n+1)+A105564(A163866(2*n+3))`
-/

namespace A311040.P9869979133739454747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) + A105564 (A163866 (2 * n + 3)).toNat

end

end A311040.P9869979133739454747

/-! ## A311040.P5175563467209390363

`∑[A276605(A275971(n+1))]`
-/

namespace A311040.P5175563467209390363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276605 (A275971 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311040.P5175563467209390363

/-! ## A311040.P6395994144646562872

`∑[A134852(A200816(n+1))+1]`
-/

namespace A311040.P6395994144646562872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134852 (A200816 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311040.P6395994144646562872

/-!
# A311041: Coordination sequence Gal.6.492.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311041, there is no canonical definition to state claims against.
-/

/-! ## A311041.P17548061638898302522

`A311246(A062399(n))-A057354(A047263(n+1))`
-/

namespace A311041.P17548061638898302522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311246 (A062399 n).toNat - A057354 (A047263 (n + 1)).toNat

end

end A311041.P17548061638898302522

/-! ## A311041.P13325819272946644397

`A284684(n+1)+A029837(A000108(n))`
-/

namespace A311041.P13325819272946644397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284684 (n + 1) + A029837 (A000108 n).toNat

end

end A311041.P13325819272946644397

/-! ## A311041.P10442367730887805561

`A008574(n)-A359542(A171270(n+1))`
-/

namespace A311041.P10442367730887805561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A359542 (A171270 (n + 1)).toNat

end

end A311041.P10442367730887805561

/-!
# A311042: Coordination sequence Gal.4.11.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311042, there is no canonical definition to state claims against.
-/

/-! ## A311042.P15780518788841846091

`A072774(3*(n+1))-A202340(A000041(3*n+1))`
-/

namespace A311042.P15780518788841846091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (3 * (n + 1)) - A202340 (A000041 (3 * n + 1)).toNat

end

end A311042.P15780518788841846091

/-! ## A311042.P5829921437976043479

`∑[A060502(A007504(n+3)²)]`
-/

namespace A311042.P5829921437976043479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A007504 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311042.P5829921437976043479

/-! ## A311042.P5223344341247946756

`A016813(n)-∑{e}[A002098(3*n), #]`
-/

namespace A311042.P5223344341247946756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002098 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A311042.P5223344341247946756

/-! ## A311042.P4122790162436047988

`A008574(n)-A032741(A052709(n))`
-/

namespace A311042.P4122790162436047988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A032741 (A052709 n).toNat

end

end A311042.P4122790162436047988

/-! ## A311042.P3792729332333498492

`A016813(n)-A001221(A352683(n))`
-/

namespace A311042.P3792729332333498492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A001221 (A352683 n).toNat

end

end A311042.P3792729332333498492

/-!
# A311043: Coordination sequence Gal.6.113.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311043, there is no canonical definition to state claims against.
-/

/-! ## A311043.P17115200273980901726

`A160755(A313709(n)-A145569(n))`
-/

namespace A311043.P17115200273980901726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A313709 n - A145569 n).toNat

end

end A311043.P17115200273980901726

/-! ## A311043.P16276862185106151898

`A242663(n+1)+A060130(A022327(n+1))`
-/

namespace A311043.P16276862185106151898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1) + A060130 (A022327 (n + 1)).toNat

end

end A311043.P16276862185106151898

/-! ## A311043.P1200486124415395390

`A020497(n+1)+A001221(A114590(n))`
-/

namespace A311043.P1200486124415395390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1) + A001221 (A114590 n).toNat

end

end A311043.P1200486124415395390

/-! ## A311043.P418016698164867460

`A312859(n)-A001221(A353944(n+1))`
-/

namespace A311043.P418016698164867460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312859 n - A001221 (A353944 (n + 1)).toNat

end

end A311043.P418016698164867460

/-! ## A311043.P2452240998035326212

`A190593(A190587(n+2))+A008407(n+1)`
-/

namespace A311043.P2452240998035326212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 (A190587 (n + 2)).toNat + A008407 (n + 1)

end

end A311043.P2452240998035326212

/-!
# A311044: Coordination sequence Gal.4.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311044, there is no canonical definition to state claims against.
-/

/-! ## A311044.P9640067110593594995

`A138385(A352667(n+1))+A052414(3*n+2)`
-/

namespace A311044.P9640067110593594995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138385 (A352667 (n + 1)).toNat + A052414 (3 * n + 2)

end

end A311044.P9640067110593594995

/-! ## A311044.P6657100876147046840

`∑[A043559(A017294(n))]`
-/

namespace A311044.P6657100876147046840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A017294 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311044.P6657100876147046840

/-! ## A311044.P964488444221143262

`∑[A043559(A017293(n)²)]`
-/

namespace A311044.P964488444221143262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 (A017293 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311044.P964488444221143262

/-! ## A311044.P17031311426865346330

`∑[A334347(n+1)%A292937(n)+2]-1`
-/

namespace A311044.P17031311426865346330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334347 (n + 1)) (A292937 n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A311044.P17031311426865346330

/-! ## A311044.P11935234988271930817

`A342515(A022954(n+1))`
-/

namespace A311044.P11935234988271930817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A022954 (n + 1)).toNat

end

end A311044.P11935234988271930817

/-!
# A311045: Coordination sequence Gal.5.207.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311045, there is no canonical definition to state claims against.
-/

/-! ## A311045.P5525073350250421622

`A301692(n)+A147648(A326244(n))`
-/

namespace A311045.P5525073350250421622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301692 n + A147648 (A326244 n).toNat

end

end A311045.P5525073350250421622

/-! ## A311045.P9578055015885026625

`A314224(A087051(n))-A265227(n+1)`
-/

namespace A311045.P9578055015885026625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314224 (A087051 n).toNat - A265227 (n + 1)

end

end A311045.P9578055015885026625

/-! ## A311045.P13494281912163725279

`∑[A084558(A045539(n)²)]-A265227(n+1)`
-/

namespace A311045.P13494281912163725279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A045539 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265227 (n + 1)

end

end A311045.P13494281912163725279

/-! ## A311045.P16573380234491282660

`A008683(A254260(n+1))+A314198(n)-A265227(n+1)`
-/

namespace A311045.P16573380234491282660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A254260 (n + 1)).toNat + (A314198 n - A265227 (n + 1))

end

end A311045.P16573380234491282660

/-!
# A311046: Coordination sequence Gal.6.47.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311046, there is no canonical definition to state claims against.
-/

/-! ## A311046.P7139381028694597981

`A250120(n)-A304536(A035011(n))`
-/

namespace A311046.P7139381028694597981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A304536 (A035011 n).toNat

end

end A311046.P7139381028694597981

/-! ## A311046.P11632488665795665742

`A303750(n+1)+A000035(A236321(n+1))`
-/

namespace A311046.P11632488665795665742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303750 (n + 1) + A000035 (A236321 (n + 1)).toNat

end

end A311046.P11632488665795665742

/-! ## A311046.P12103052577754240561

`A304530(n+1)+A000035(A236321(n+1))`
-/

namespace A311046.P12103052577754240561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304530 (n + 1) + A000035 (A236321 (n + 1)).toNat

end

end A311046.P12103052577754240561

/-! ## A311046.P5961740226513714129

`eq[A049076(A100353(n+4)), A260455(n+1)]`
-/

namespace A311046.P5961740226513714129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A100353 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311046.P5961740226513714129

/-! ## A311046.P13786344068328641085

`lt[A260455(A088617(n+3)), A260455(n+1)]`
-/

namespace A311046.P13786344068328641085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260455 (A088617 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311046.P13786344068328641085

/-!
# A311047: Coordination sequence Gal.5.213.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311047, there is no canonical definition to state claims against.
-/

/-! ## A311047.P11992256210965191458

`A332278(A084422(n))+A275833(2*n)`
-/

namespace A311047.P11992256210965191458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332278 (A084422 n).toNat + A275833 (2 * n)

end

end A311047.P11992256210965191458

/-! ## A311047.P4294335398395762449

`A099308(3*n+2)-A001222(A150485(n))`
-/

namespace A311047.P4294335398395762449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099308 (3 * n + 2) - A001222 (A150485 n).toNat

end

end A311047.P4294335398395762449

/-!
# A311048: Coordination sequence Gal.6.614.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311048, there is no canonical definition to state claims against.
-/

/-! ## A311048.P1199891322801738555

`A066207(n+1)+A001222(A000151(n+1))`
-/

namespace A311048.P1199891322801738555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) + A001222 (A000151 (n + 1)).toNat

end

end A311048.P1199891322801738555

/-! ## A311048.P9262309195417161363

`A227742(n+1)-A227740(A008336(n+1))`
-/

namespace A311048.P9262309195417161363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227742 (n + 1) - A227740 (A008336 (n + 1)).toNat

end

end A311048.P9262309195417161363

/-! ## A311048.P3369762769345388637

`eq[A161072(n+1), A238794(A031297(n+2))]`
-/

namespace A311048.P3369762769345388637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238794 (A031297 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311048.P3369762769345388637

/-!
# A311050: Coordination sequence Gal.6.13.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311050, there is no canonical definition to state claims against.
-/

/-! ## A311050.P9994639332937539971

`∑[A212625(A301670(2*n))]`
-/

namespace A311050.P9994639332937539971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A301670 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311050.P9994639332937539971

/-! ## A311050.P8977223463740220221

`∑[A104246(∑[A001867(n)]+n)]+n`
-/

namespace A311050.P8977223463740220221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104246 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311050.P8977223463740220221

/-! ## A311050.P10229566491426137009

`A106744(A313491(n)+A044939(n+1))`
-/

namespace A311050.P10229566491426137009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A313491 n + A044939 (n + 1)).toNat

end

end A311050.P10229566491426137009

/-! ## A311050.P11514530364633935938

`A278452(n+1)+A198517(A319755(n))`
-/

namespace A311050.P11514530364633935938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278452 (n + 1) + A198517 (A319755 n).toNat

end

end A311050.P11514530364633935938

/-! ## A311050.P936272757429429097

`A325457(3*n+1)+A121262(A007716(n))`
-/

namespace A311050.P936272757429429097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (3 * n + 1) + A121262 (A007716 n).toNat

end

end A311050.P936272757429429097

/-!
# A311051: Coordination sequence Gal.6.32.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311051, there is no canonical definition to state claims against.
-/

/-! ## A311051.P14936555190086301747

`record[xor(3, n)]-A001221(A002415(3*(n+1)))`
-/

namespace A311051.P14936555190086301747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A001221 (A002415 (3 * (n + 1))).toNat

end

end A311051.P14936555190086301747

/-! ## A311051.P10216122088866601984

`A016813(n)-A001221(A115626(n+1))`
-/

namespace A311051.P10216122088866601984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A001221 (A115626 (n + 1)).toNat

end

end A311051.P10216122088866601984

/-! ## A311051.P10870316113835164693

`A004767(n)-A001221(A002415(3*(n+1)))`
-/

namespace A311051.P10870316113835164693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A001221 (A002415 (3 * (n + 1))).toNat

end

end A311051.P10870316113835164693

/-! ## A311051.P13671993413508479429

`A343107(3*n+1)+A188294(A095062(n+1))`
-/

namespace A311051.P13671993413508479429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343107 (3 * n + 1) + A188294 (A095062 (n + 1)).toNat

end

end A311051.P13671993413508479429

/-! ## A311051.P11516709807922388076

`A180123(n+1)-A352517(A014664(2*(n+2)))`
-/

namespace A311051.P11516709807922388076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180123 (n + 1) - A352517 (A014664 (2 * (n + 2))).toNat

end

end A311051.P11516709807922388076

/-!
# A311052: Coordination sequence Gal.6.14.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311052, there is no canonical definition to state claims against.
-/

/-! ## A311052.P13268144900864233958

`∑[A023416(A217308(n+2))]+n`
-/

namespace A311052.P13268144900864233958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A217308 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311052.P13268144900864233958

/-! ## A311052.P3018722239749686444

`∑[A098037(A350947(n+1)/A350388(n+2))]`
-/

namespace A311052.P3018722239749686444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098037 (SequenceMachineLib.roundAway ((A350947 (n + 1) : ℚ) / (A350388 (n + 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311052.P3018722239749686444

/-! ## A311052.P14566955468769401157

`∑[A001221(A135264(n))]+n`
-/

namespace A311052.P14566955468769401157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311052.P14566955468769401157

/-! ## A311052.P17584390488848653519

`∑[A381205(A049311(n+1))+1]`
-/

namespace A311052.P17584390488848653519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381205 (A049311 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311052.P17584390488848653519

/-! ## A311052.P16512424040723682279

`A372825(A002202(3*n+2))+A324088(n+1)`
-/

namespace A311052.P16512424040723682279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (A002202 (3 * n + 2)).toNat + A324088 (n + 1)

end

end A311052.P16512424040723682279

/-!
# A311053: Coordination sequence Gal.6.317.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311053, there is no canonical definition to state claims against.
-/

/-! ## A311053.P9235637688114477009

`A238468(A321228(n))+A008574(n)`
-/

namespace A311053.P9235637688114477009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 (A321228 n).toNat + A008574 n

end

end A311053.P9235637688114477009

/-! ## A311053.P5097793500167314838

`A059009(n)+lt[A007217(n), 1]`
-/

namespace A311053.P5097793500167314838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007217 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A311053.P5097793500167314838

/-! ## A311053.P5572374747852278122

`A302929(3*n+4)+comp[A302926(n)]`
-/

namespace A311053.P5572374747852278122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302926 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302929 (3 * n + 4) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A311053.P5572374747852278122

/-! ## A311053.P7304541778545286405

`A303234(n+1)+A302929(3*n+4)`
-/

namespace A311053.P7304541778545286405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303234 (n + 1) + A302929 (3 * n + 4)

end

end A311053.P7304541778545286405

/-! ## A311053.P3475702212275571048

`A008574(n)-A044940(A000984(n))`
-/

namespace A311053.P3475702212275571048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A044940 (A000984 n).toNat

end

end A311053.P3475702212275571048

/-!
# A311054: Coordination sequence Gal.5.94.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311054, there is no canonical definition to state claims against.
-/

/-! ## A311054.P11441682197689721787

`A311536(n)-A306433(A295718(n))`
-/

namespace A311054.P11441682197689721787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n - A306433 (A295718 n).toNat

end

end A311054.P11441682197689721787

/-! ## A311054.P3692132955287523177

`A311147(n)-A220400(A056654(n+1))`
-/

namespace A311054.P3692132955287523177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A220400 (A056654 (n + 1)).toNat

end

end A311054.P3692132955287523177

/-! ## A311054.P12643952040874076577

`A311147(n)-A220400(A097683(n+2)-1)`
-/

namespace A311054.P12643952040874076577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A220400 (A097683 (n + 2) - 1).toNat

end

end A311054.P12643952040874076577

/-! ## A311054.P9009995229433957520

`A228246(∑[A145866(n+1)+A228245(3*n+1)%2])`
-/

namespace A311054.P9009995229433957520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145866 (n + 1) + Int.tmod (A228245 (3 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311054.P9009995229433957520

/-! ## A311054.P4546606369663333770

`A302478(A065667(3*(n+1)))-2`
-/

namespace A311054.P4546606369663333770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (A065667 (3 * (n + 1))).toNat - 2

end

end A311054.P4546606369663333770

/-!
# A311055: Coordination sequence Gal.4.9.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311055, there is no canonical definition to state claims against.
-/

/-! ## A311055.P5871580700755888779

`A219529(n)-A102364(A085810(n+1))`
-/

namespace A311055.P5871580700755888779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A102364 (A085810 (n + 1)).toNat

end

end A311055.P5871580700755888779

/-! ## A311055.P13459692144751820513

`∑[A008620(A349709(n+1))%6]`
-/

namespace A311055.P13459692144751820513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008620 (A349709 (n + 1)).toNat) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311055.P13459692144751820513

/-! ## A311055.P17237229634086570283

`A376665(3*n+1)-A365730(n+1)`
-/

namespace A311055.P17237229634086570283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (3 * n + 1) - A365730 (n + 1)

end

end A311055.P17237229634086570283

/-! ## A311055.P10820520878923228602

`A353812(A000142(n))+A311053(n)`
-/

namespace A311055.P10820520878923228602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A000142 n).toNat + A311053 n

end

end A311055.P10820520878923228602

/-! ## A311055.P16789566135675894473

`A008574(n)-A238468(A089403(n))`
-/

namespace A311055.P16789566135675894473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A238468 (A089403 n).toNat

end

end A311055.P16789566135675894473

/-!
# A311056: Coordination sequence Gal.6.64.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311056, there is no canonical definition to state claims against.
-/

/-! ## A311056.P6746827775543053621

`A311289(n)-A086967(A262030(n+1))`
-/

namespace A311056.P6746827775543053621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n - A086967 (A262030 (n + 1)).toNat

end

end A311056.P6746827775543053621

/-! ## A311056.P120076156418190879

`record[A007916(n+1)-A340527(n+1)]`
-/

namespace A311056.P120076156418190879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1) - A340527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311056.P120076156418190879

/-! ## A311056.P8493732249547599716

`A311282(n)-A064911(A088218(n))`
-/

namespace A311056.P8493732249547599716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311282 n - A064911 (A088218 n).toNat

end

end A311056.P8493732249547599716

/-! ## A311056.P7514039156517821362

`record[A311057(n)-A036632(n)]`
-/

namespace A311056.P7514039156517821362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311057 n - A036632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311056.P7514039156517821362

/-! ## A311056.P7588537361197037932

`A350682(A118044(n))+4*n`
-/

namespace A311056.P7588537361197037932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350682 (A118044 n).toNat + (4 * n : ℤ)

end

end A311056.P7588537361197037932

/-!
# A311057: Coordination sequence Gal.4.18.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311057, there is no canonical definition to state claims against.
-/

/-! ## A311057.P8470996761007336027

`A311295(n)-A064911(A157100(n))`
-/

namespace A311057.P8470996761007336027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311295 n - A064911 (A157100 n).toNat

end

end A311057.P8470996761007336027

/-! ## A311057.P1577141294505950375

`∑[A293390(A347693((n+1)*2^∑{e}[n+1, #]))]`
-/

namespace A311057.P1577141294505950375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293390 (A347693 ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311057.P1577141294505950375

/-! ## A311057.P3663064295097112831

`∑[A392369(∑[A291899(n+1)])]`
-/

namespace A311057.P3663064295097112831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392369 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311057.P3663064295097112831

/-! ## A311057.P6350876004862329620

`A029837(A100058(n))+A005153(n+1)`
-/

namespace A311057.P6350876004862329620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A100058 n).toNat + A005153 (n + 1)

end

end A311057.P6350876004862329620

/-! ## A311057.P485547951346450849

`A349463(A065091(2*n+5))-A303300(n+1)`
-/

namespace A311057.P485547951346450849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349463 (A065091 (2 * n + 5)).toNat - A303300 (n + 1)

end

end A311057.P485547951346450849

/-!
# A311058: Coordination sequence Gal.6.7.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311058, there is no canonical definition to state claims against.
-/

/-! ## A311058.P11171684643557940226

`A008574(n)-A025457(A120477(n))`
-/

namespace A311058.P11171684643557940226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A025457 (A120477 n).toNat

end

end A311058.P11171684643557940226

/-! ## A311058.P3037767530369446327

`A016825(n)-A001221(A269601(n+2))`
-/

namespace A311058.P3037767530369446327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A001221 (A269601 (n + 2)).toNat

end

end A311058.P3037767530369446327

/-! ## A311058.P3672137713807202590

`A004277(2*n)-A025457(A120477(n))`
-/

namespace A311058.P3672137713807202590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A025457 (A120477 n).toNat

end

end A311058.P3672137713807202590

/-! ## A311058.P8590222175132366956

`∑[A194447(A025523(2*(n+2)))+1]+1`
-/

namespace A311058.P8590222175132366956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (A025523 (2 * (n + 2))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A311058.P8590222175132366956

/-! ## A311058.P10956069570927897812

`A008574(n)-A104245(A300208(n+2))`
-/

namespace A311058.P10956069570927897812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A104245 (A300208 (n + 2)).toNat

end

end A311058.P10956069570927897812

/-!
# A311059: Coordination sequence Gal.6.88.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311059, there is no canonical definition to state claims against.
-/

/-! ## A311059.P11301313934002098671

`A311060(n)-A160753(A160790(n))`
-/

namespace A311059.P11301313934002098671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311060 n - A160753 (A160790 n).toNat

end

end A311059.P11301313934002098671

/-! ## A311059.P3203489104366327113

`A364056(n+1)-A359781(A018261(n+1))`
-/

namespace A311059.P3203489104366327113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364056 (n + 1) - A359781 (A018261 (n + 1)).toNat

end

end A311059.P3203489104366327113

/-! ## A311059.P15829480620648266813

`A029246(A217378(2*n+1))+A008486(n)`
-/

namespace A311059.P15829480620648266813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029246 (A217378 (2 * n + 1)).toNat + A008486 n

end

end A311059.P15829480620648266813

/-! ## A311059.P16393700010932863433

`A312896(n)-A325225(A293993(n))`
-/

namespace A311059.P16393700010932863433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n - A325225 (A293993 n).toNat

end

end A311059.P16393700010932863433

/-! ## A311059.P10330860204122671207

`A179874(n+1)+A010059(A380798(n+1))`
-/

namespace A311059.P10330860204122671207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179874 (n + 1) + A010059 (A380798 (n + 1)).toNat

end

end A311059.P10330860204122671207

/-!
# A311060: Coordination sequence Gal.5.33.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311060, there is no canonical definition to state claims against.
-/

/-! ## A311060.P6148340687520409289

`A070965(A300902(n))+A004273(2*n)`
-/

namespace A311060.P6148340687520409289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070965 (A300902 n).toNat + A004273 (2 * n)

end

end A311060.P6148340687520409289

/-! ## A311060.P6781970118207529447

`∑[A001222(A077338(n+1)*A306215(n+1))]`
-/

namespace A311060.P6781970118207529447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077338 (n + 1) * A306215 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311060.P6781970118207529447

/-! ## A311060.P13987507308844929708

`∑[A000005(A353124(n+1)^A336500(n+2))]`
-/

namespace A311060.P13987507308844929708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A353124 (n + 1) : ℚ) ^ (A336500 (n + 2) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311060.P13987507308844929708

/-! ## A311060.P6723559517149899385

`∑{e}[∏[A028330(n)], #]+2*n`
-/

namespace A311060.P6723559517149899385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 2 * n

end

end A311060.P6723559517149899385

/-! ## A311060.P2857145647317171358

`A184823(A000005(4^n))+char[6]`
-/

namespace A311060.P2857145647317171358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184823 (A000005 (4 ^ n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311060.P2857145647317171358

/-!
# A311061: Coordination sequence Gal.6.4.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311061, there is no canonical definition to state claims against.
-/

/-! ## A311061.P9170614607043261083

`A008574(n)-A193238(A103293(n))`
-/

namespace A311061.P9170614607043261083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A193238 (A103293 n).toNat

end

end A311061.P9170614607043261083

/-! ## A311061.P2503985111064649710

`A008574(n)-A268389(A002854(n+1))`
-/

namespace A311061.P2503985111064649710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A268389 (A002854 (n + 1)).toNat

end

end A311061.P2503985111064649710

/-! ## A311061.P14961961947329416611

`A004277(2*n)-A193238(A103293(n))`
-/

namespace A311061.P14961961947329416611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A193238 (A103293 n).toNat

end

end A311061.P14961961947329416611

/-! ## A311061.P14101418240166021395

`∑[A272886(record[A047884(n+1)])]`
-/

namespace A311061.P14101418240166021395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272886 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311061.P14101418240166021395

/-! ## A311061.P8243269186599033193

`A001221(n+1)+∑[∑{e}[A368763(n), #]+1]`
-/

namespace A311061.P8243269186599033193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368763 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A311061.P8243269186599033193

/-!
# A311062: Coordination sequence Gal.6.40.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311062, there is no canonical definition to state claims against.
-/

/-! ## A311062.P4251523745995202953

`∑[A234533(∑[A141483(n)])]`
-/

namespace A311062.P4251523745995202953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141483 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234533 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311062.P4251523745995202953

/-! ## A311062.P13292653967728755844

`A311147(n)-A275855(A027376(n))`
-/

namespace A311062.P13292653967728755844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A275855 (A027376 n).toNat

end

end A311062.P13292653967728755844

/-! ## A311062.P7350587489873447160

`A311141(n)-A269242(A352650(3*(n+1)))`
-/

namespace A311062.P7350587489873447160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311141 n - A269242 (A352650 (3 * (n + 1))).toNat

end

end A311062.P7350587489873447160

/-! ## A311062.P10395914717667328351

`4*n-A008683(A153873(n+1))`
-/

namespace A311062.P10395914717667328351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A008683 (A153873 (n + 1)).toNat

end

end A311062.P10395914717667328351

/-! ## A311062.P7249930675136019084

`∑[A329313(A327516(2*n))]+2*n`
-/

namespace A311062.P7249930675136019084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A327516 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A311062.P7249930675136019084

/-!
# A311063: Coordination sequence Gal.6.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311063, there is no canonical definition to state claims against.
-/

/-! ## A311063.P5043819154811539466

`A311306(A001222(3^n))-A283316(A250120(n))`
-/

namespace A311063.P5043819154811539466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311306 (A001222 (3 ^ n)).toNat - A283316 (A250120 n).toNat

end

end A311063.P5043819154811539466

/-! ## A311063.P12988486812124591035

`A311306(A001222(3^n))-A283316(A315187(n))`
-/

namespace A311063.P12988486812124591035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311306 (A001222 (3 ^ n)).toNat - A283316 (A315187 n).toNat

end

end A311063.P12988486812124591035

/-! ## A311063.P15626053039595208378

`A311306(A001222(3^n))-A283316(A072154(2*n))`
-/

namespace A311063.P15626053039595208378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311306 (A001222 (3 ^ n)).toNat - A283316 (A072154 (2 * n)).toNat

end

end A311063.P15626053039595208378

/-! ## A311063.P13389350180147868184

`A352513(A095062(n+1))+A073491(3*n+1)`
-/

namespace A311063.P13389350180147868184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A095062 (n + 1)).toNat + A073491 (3 * n + 1)

end

end A311063.P13389350180147868184

/-! ## A311063.P3513258780680016135

`A302540(3*n+1)+A000038(A050486(n))`
-/

namespace A311063.P3513258780680016135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (3 * n + 1) + A000038 (A050486 n).toNat

end

end A311063.P3513258780680016135

/-!
# A311064: Coordination sequence Gal.4.8.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311064, there is no canonical definition to state claims against.
-/

/-! ## A311064.P3225065756020589714

`A301301(n)+A056594(A006961(n))`
-/

namespace A311064.P3225065756020589714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A056594 (A006961 n).toNat

end

end A311064.P3225065756020589714

/-! ## A311064.P7711568582865788205

`∑[A069903(A377061(2*(n+1)))]+n`
-/

namespace A311064.P7711568582865788205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (A377061 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311064.P7711568582865788205

/-! ## A311064.P10100650506550104716

`A339212(n+1)+A099314(A000108(n))`
-/

namespace A311064.P10100650506550104716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339212 (n + 1) + A099314 (A000108 n).toNat

end

end A311064.P10100650506550104716

/-! ## A311064.P16238469812088945036

`char[8]+A311483(n)-A001221(A032011(n))`
-/

namespace A311064.P16238469812088945036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311483 n - A001221 (A032011 n).toNat)

end

end A311064.P16238469812088945036

/-!
# A311065: Coordination sequence Gal.5.6.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311065, there is no canonical definition to state claims against.
-/

/-! ## A311065.P11579416567005035561

`A356862(3*n+1)-A043564(A162434(n+1))`
-/

namespace A311065.P11579416567005035561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (3 * n + 1) - A043564 (A162434 (n + 1)).toNat

end

end A311065.P11579416567005035561

/-! ## A311065.P5921602924630541591

`A070939(A270929(3*n+1))+A003071(n+1)`
-/

namespace A311065.P5921602924630541591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A270929 (3 * n + 1)).toNat + A003071 (n + 1)

end

end A311065.P5921602924630541591

/-! ## A311065.P884968159045317865

`A356862(3*n+1)-A001221(A161905(n+1))`
-/

namespace A311065.P884968159045317865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (3 * n + 1) - A001221 (A161905 (n + 1)).toNat

end

end A311065.P884968159045317865

/-!
# A311066: Coordination sequence Gal.6.53.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311066, there is no canonical definition to state claims against.
-/

/-! ## A311066.P5848426920278985374

`A311450(n)-A285139(A001519(n))`
-/

namespace A311066.P5848426920278985374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311450 n - A285139 (A001519 n).toNat

end

end A311066.P5848426920278985374

/-! ## A311066.P6025988793794562442

`∑[A140887(∑[∑{p}[n+1, #]+1+n])]`
-/

namespace A311066.P6025988793794562442
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p + 1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140887 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311066.P6025988793794562442

/-! ## A311066.P15562757067364285880

`∑[A358372(A151568(round(4^(n/3))))]`
-/

namespace A311066.P15562757067364285880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358372 (A151568 (SequenceMachineLib.roundAway ((4 : ℝ) ^ ((n : ℚ) / 3 : ℝ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311066.P15562757067364285880

/-! ## A311066.P483203967100501744

`A314754(n)-A001221(A292668(n))`
-/

namespace A311066.P483203967100501744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314754 n - A001221 (A292668 n).toNat

end

end A311066.P483203967100501744

/-! ## A311066.P10444034353654870698

`A311265(n)-A327174(A000719(n))`
-/

namespace A311066.P10444034353654870698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311265 n - A327174 (A000719 n).toNat

end

end A311066.P10444034353654870698

/-!
# A311067: Coordination sequence Gal.6.79.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311067, there is no canonical definition to state claims against.
-/

/-! ## A311067.P911411893346987693

`lt[A076837(n+1), A071028(n)]`
-/

namespace A311067.P911411893346987693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311067.P911411893346987693

/-! ## A311067.P15203292009484337848

`eq[A076837(n+1), A333275(n+1)]`
-/

namespace A311067.P15203292009484337848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311067.P15203292009484337848

/-! ## A311067.P346523913321797705

`ceil(∑[A342818(A271269(2*(n+2)))]/2)`
-/

namespace A311067.P346523913321797705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342818 (A271269 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A311067.P346523913321797705

/-! ## A311067.P9013128536153257808

`A311528(n)-A278700(A028338(n))`
-/

namespace A311067.P9013128536153257808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311528 n - A278700 (A028338 n).toNat

end

end A311067.P9013128536153257808

/-! ## A311067.P813683837728335757

`A085516(A311184(n))`
-/

namespace A311067.P813683837728335757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A311184 n).toNat

end

end A311067.P813683837728335757

/-!
# A311068: Coordination sequence Gal.6.20.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311068, there is no canonical definition to state claims against.
-/

/-! ## A311068.P11660464573278676842

`A225099(A167614(n+1))+A037143(3*n+1)`
-/

namespace A311068.P11660464573278676842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A167614 (n + 1)).toNat + A037143 (3 * n + 1)

end

end A311068.P11660464573278676842

/-! ## A311068.P2519812568275632534

`A311356(n)-A190224(A073799(n+1))`
-/

namespace A311068.P2519812568275632534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n - A190224 (A073799 (n + 1)).toNat

end

end A311068.P2519812568275632534

/-! ## A311068.P13582587782057386829

`A346132(A313637(n)-n)`
-/

namespace A311068.P13582587782057386829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A313637 n - (n : ℤ)).toNat

end

end A311068.P13582587782057386829

/-! ## A311068.P15180274800205319232

`A287272(∑[2*n])+A215800(n+1)`
-/

namespace A311068.P15180274800205319232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (∑ j ∈ Finset.range (n + 1), f1 j) + A215800 (n + 1)

end

end A311068.P15180274800205319232

/-! ## A311068.P13179194851127516662

`A133872(A112095(3*(n+1)))+A037143(3*n+1)`
-/

namespace A311068.P13179194851127516662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A112095 (3 * (n + 1))).toNat + A037143 (3 * n + 1)

end

end A311068.P13179194851127516662

/-!
# A311069: Coordination sequence Gal.6.468.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311069, there is no canonical definition to state claims against.
-/

/-! ## A311069.P14315180443895322764

`eq[A074457(A326376(n+1)), A106737(n)]`
-/

namespace A311069.P14315180443895322764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074457 (A326376 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311069.P14315180443895322764

/-! ## A311069.P4485626205720877310

`record[A003002(or(n, n+1)+n*A000005(n+1))]`
-/

namespace A311069.P4485626205720877310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 ((Nat.lor n (n + 1) : ℤ) + (n : ℤ) * A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311069.P4485626205720877310

/-! ## A311069.P11582253513927413520

`A090501(A311471(n)+A004958(n))`
-/

namespace A311069.P11582253513927413520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090501 (A311471 n + A004958 n).toNat

end

end A311069.P11582253513927413520

/-! ## A311069.P14460965971078232536

`A311552(n)-A025075(A279556(n))`
-/

namespace A311069.P14460965971078232536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311552 n - A025075 (A279556 n).toNat

end

end A311069.P14460965971078232536

/-! ## A311069.P1001654685405825339

`eq[A179775(A141214(n)), A192006(n)]`
-/

namespace A311069.P1001654685405825339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179775 (A141214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A311069.P1001654685405825339

/-!
# A311070: Coordination sequence Gal.6.22.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311070, there is no canonical definition to state claims against.
-/

/-! ## A311070.P5537273011841268843

`xor(A010122(A004685(n)), A324697(2*n+1))`
-/

namespace A311070.P5537273011841268843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010122 (A004685 n).toNat) (A324697 (2 * n + 1))

end

end A311070.P5537273011841268843

/-!
# A311071: Coordination sequence Gal.6.58.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311071, there is no canonical definition to state claims against.
-/

/-! ## A311071.P8645834875453356043

`A314744(n)-A001222(A263245(n))`
-/

namespace A311071.P8645834875453356043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314744 n - A001222 (A263245 n).toNat

end

end A311071.P8645834875453356043

/-! ## A311071.P6809696476301194527

`A311546(n)-A364260(A057574(n))`
-/

namespace A311071.P6809696476301194527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311546 n - A364260 (A057574 n).toNat

end

end A311071.P6809696476301194527

/-! ## A311071.P17103808668184907350

`A250120(n)-A001222(A325510(n+2))`
-/

namespace A311071.P17103808668184907350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A325510 (n + 2)).toNat

end

end A311071.P17103808668184907350

/-! ## A311071.P14826789982911491510

`A325118(n+1)+A318994(A189394(n+1))`
-/

namespace A311071.P14826789982911491510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1) + A318994 (A189394 (n + 1)).toNat

end

end A311071.P14826789982911491510

/-! ## A311071.P5311106426199244611

`A325118(n+1)+A318994(A335831(n+1))`
-/

namespace A311071.P5311106426199244611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325118 (n + 1) + A318994 (A335831 (n + 1)).toNat

end

end A311071.P5311106426199244611

/-!
# A311072: Coordination sequence Gal.6.504.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311072, there is no canonical definition to state claims against.
-/

/-! ## A311072.P910956400550647344

`∑[A000005(A091010((n+1)*∏{p}[n+1, #]))]`
-/

namespace A311072.P910956400550647344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A091010 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311072.P910956400550647344

/-! ## A311072.P10779890464739234960

`A313126(n)-A001222(A045499(n))`
-/

namespace A311072.P10779890464739234960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - A001222 (A045499 n).toNat

end

end A311072.P10779890464739234960

/-! ## A311072.P14313381044908895028

`A165034(A275206(n))+A001481(2*(n+1))`
-/

namespace A311072.P14313381044908895028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165034 (A275206 n).toNat + A001481 (2 * (n + 1))

end

end A311072.P14313381044908895028

/-! ## A311072.P18288048592826241584

`A057890(3*n+2)+A001222(A340022(n))`
-/

namespace A311072.P18288048592826241584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (3 * n + 2) + A001222 (A340022 n).toNat

end

end A311072.P18288048592826241584

/-! ## A311072.P1869582839132496300

`A059519(3*n+2)-A230632(A244763(3*(n+1)))`
-/

namespace A311072.P1869582839132496300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059519 (3 * n + 2) - A230632 (A244763 (3 * (n + 1))).toNat

end

end A311072.P1869582839132496300

/-!
# A311073: Coordination sequence Gal.6.60.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311073, there is no canonical definition to state claims against.
-/

/-! ## A311073.P2564047485655717803

`A312945(n)-A001221(A220881(n+4))`
-/

namespace A311073.P2564047485655717803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312945 n - A001221 (A220881 (n + 4)).toNat

end

end A311073.P2564047485655717803

/-! ## A311073.P12442402312213824774

`A301291(n)-A001222(A001075(n))`
-/

namespace A311073.P12442402312213824774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A001222 (A001075 n).toNat

end

end A311073.P12442402312213824774

/-! ## A311073.P856407521684239521

`A311584(n)-A284203(A079289(n))`
-/

namespace A311073.P856407521684239521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311584 n - A284203 (A079289 n).toNat

end

end A311073.P856407521684239521

/-! ## A311073.P3389766868666753342

`A311585(n)-A284203(A079289(n))`
-/

namespace A311073.P3389766868666753342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311585 n - A284203 (A079289 n).toNat

end

end A311073.P3389766868666753342

/-! ## A311073.P2941744366889932555

`A311586(n)-A284203(A079289(n))`
-/

namespace A311073.P2941744366889932555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n - A284203 (A079289 n).toNat

end

end A311073.P2941744366889932555

/-!
# A311074: Coordination sequence Gal.5.22.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311074, there is no canonical definition to state claims against.
-/

/-! ## A311074.P7001867345019941300

`lt[A126696(2*(n+1)), -A126713(n)]`
-/

namespace A311074.P7001867345019941300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A126713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311074.P7001867345019941300

/-! ## A311074.P6940275516595987840

`lt[A342322(2*n+1)², A342321(n+1)]`
-/

namespace A311074.P6940275516595987840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342322 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311074.P6940275516595987840

/-! ## A311074.P16247332759145632866

`A091863(or(A003106(n), A055999(n)))`
-/

namespace A311074.P16247332759145632866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (Int.lor (A003106 n) (A055999 n)).toNat

end

end A311074.P16247332759145632866

/-! ## A311074.P6459197806414873318

`A072473(n+1)-A001221(A281182(n))`
-/

namespace A311074.P6459197806414873318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) - A001221 (A281182 n).toNat

end

end A311074.P6459197806414873318

/-! ## A311074.P11397677247053952323

`A002004(n+1)-A255851(A280731(n+3))`
-/

namespace A311074.P11397677247053952323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002004 (n + 1) - A255851 (A280731 (n + 3)).toNat

end

end A311074.P11397677247053952323

/-!
# A311075: Coordination sequence Gal.6.72.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311075, there is no canonical definition to state claims against.
-/

/-! ## A311075.P7152393225921082384

`A085516(A117497(n+1)+A113127(n))`
-/

namespace A311075.P7152393225921082384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A117497 (n + 1) + A113127 n).toNat

end

end A311075.P7152393225921082384

/-! ## A311075.P5814080980081174726

`A311645(n)-A130731(A130726(n+1))`
-/

namespace A311075.P5814080980081174726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311645 n - A130731 (A130726 (n + 1)).toNat

end

end A311075.P5814080980081174726

/-! ## A311075.P634562772566049176

`A311646(n)-A001221(A350020(n+1))`
-/

namespace A311075.P634562772566049176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311646 n - A001221 (A350020 (n + 1)).toNat

end

end A311075.P634562772566049176

/-!
# A311079: Coordination sequence Gal.5.36.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311079, there is no canonical definition to state claims against.
-/

/-! ## A311079.P5092290995717935954

`A383709(A089238(n+1)+A089227(2*n+1))`
-/

namespace A311079.P5092290995717935954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383709 (A089238 (n + 1) + A089227 (2 * n + 1)).toNat

end

end A311079.P5092290995717935954

/-!
# A311080: Coordination sequence Gal.6.13.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311080, there is no canonical definition to state claims against.
-/

/-! ## A311080.P6651302148123365902

`∑[A120454(A086770((n+1)²))]`
-/

namespace A311080.P6651302148123365902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A086770 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311080.P6651302148123365902

/-! ## A311080.P4914224926614696895

`A311153(n)-A028961(A148240(n))`
-/

namespace A311080.P4914224926614696895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311153 n - A028961 (A148240 n).toNat

end

end A311080.P4914224926614696895

/-! ## A311080.P7744555384574374146

`A020639(A046161(n))*A219645(n+1)`
-/

namespace A311080.P7744555384574374146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046161 n).toNat * A219645 (n + 1)

end

end A311080.P7744555384574374146

/-! ## A311080.P9516111713729012388

`A003002(A023213(2*n+1)-A001227(n+1))`
-/

namespace A311080.P9516111713729012388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A023213 (2 * n + 1) - A001227 (n + 1)).toNat

end

end A311080.P9516111713729012388

/-!
# A311083: Coordination sequence Gal.5.9.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311083, there is no canonical definition to state claims against.
-/

/-! ## A311083.P1087508619771785155

`A312854(n)-A353849(A006748(n+1))`
-/

namespace A311083.P1087508619771785155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312854 n - A353849 (A006748 (n + 1)).toNat

end

end A311083.P1087508619771785155

/-! ## A311083.P14823172520027627020

`∑[A001222(A170954(n+1)*A221898(n+1))]`
-/

namespace A311083.P14823172520027627020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A170954 (n + 1) * A221898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311083.P14823172520027627020

/-! ## A311083.P9264751019595454126

`A083051(n)+A023416(A299968(n))`
-/

namespace A311083.P9264751019595454126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n + A023416 (A299968 n).toNat

end

end A311083.P9264751019595454126

/-! ## A311083.P18143754951551585942

`A000040(n+2)+(n-2)^A010892(A102647(n+1))`
-/

namespace A311083.P18143754951551585942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) + ((n : ℤ) - 2 : ℚ) ^ (A010892 (A102647 (n + 1)).toNat : ℤ)

end

end A311083.P18143754951551585942

/-!
# A311084: Coordination sequence Gal.6.52.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311084, there is no canonical definition to state claims against.
-/

/-! ## A311084.P16622873920611021393

`A024894(n+1)-A006996(A264852(n))`
-/

namespace A311084.P16622873920611021393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - A006996 (A264852 n).toNat

end

end A311084.P16622873920611021393

/-! ## A311084.P15856854801654421738

`A024894(n+1)-A048298(A236110(n+1))`
-/

namespace A311084.P15856854801654421738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - A048298 (A236110 (n + 1)).toNat

end

end A311084.P15856854801654421738

/-! ## A311084.P4964394492658026945

`A311373(A062399(n))-A108913(A312561(n))`
-/

namespace A311084.P4964394492658026945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 (A062399 n).toNat - A108913 (A312561 n).toNat

end

end A311084.P4964394492658026945

/-! ## A311084.P9189504004291464692

`A311373(A120126(n))-A108913(A312561(n))`
-/

namespace A311084.P9189504004291464692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 (A120126 n).toNat - A108913 (A312561 n).toNat

end

end A311084.P9189504004291464692

/-! ## A311084.P10359052549160245438

`A311373(A351870(n))-A108913(A312561(n))`
-/

namespace A311084.P10359052549160245438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311373 (A351870 n).toNat - A108913 (A312561 n).toNat

end

end A311084.P10359052549160245438

/-!
# A311087: Coordination sequence Gal.6.87.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311087, there is no canonical definition to state claims against.
-/

/-! ## A311087.P14632815696261516453

`∑[A259154(A016994(2*n))]+n`
-/

namespace A311087.P14632815696261516453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259154 (A016994 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A311087.P14632815696261516453

/-! ## A311087.P2189200460463677656

`A198269(n)-A049347(A068875(n))`
-/

namespace A311087.P2189200460463677656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 n - A049347 (A068875 n).toNat

end

end A311087.P2189200460463677656

/-! ## A311087.P8018221904597193204

`A311089(n)-A037850(A077659(n+1))`
-/

namespace A311087.P8018221904597193204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311089 n - A037850 (A077659 (n + 1)).toNat

end

end A311087.P8018221904597193204

/-! ## A311087.P7033326097956371393

`A179983(3*n+2)-A000120(A176502(n+1))`
-/

namespace A311087.P7033326097956371393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179983 (3 * n + 2) - A000120 (A176502 (n + 1)).toNat

end

end A311087.P7033326097956371393

/-!
# A311088: Coordination sequence Gal.4.25.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311088, the canonical program `A311088.P16529327285930187099` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311088 has offset 0).

The definition of A311088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311088.P16529327285930187099

`A046978(n)+A313090(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A311088

/-- `A046978(n)+A313090(n)-n` -/
def P16529327285930187099.Spec : Prop :=
  ∀ n, P16529327285930187099.a n = A311088 n

theorem P16529327285930187099.correct : P16529327285930187099.Spec := by
  intro n
  simp only [A311088]

end A311088

/-! ## A311088.P11223567055253297388

`A315447(n)-A047363(n+1)`
-/

namespace A311088.P11223567055253297388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n - A047363 (n + 1)

end

end A311088.P11223567055253297388

namespace A311088

/-- `A315447(n)-A047363(n+1)` -/
def P11223567055253297388.Spec : Prop :=
  ∀ n, P11223567055253297388.a n = A311088 n

end A311088

/-! ## A311088.P2649619601383115984

`A028310(n)+A315447(n)-A072154(n)`
-/

namespace A311088.P2649619601383115984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A315447 n - A072154 n)

end

end A311088.P2649619601383115984

namespace A311088

/-- `A028310(n)+A315447(n)-A072154(n)` -/
def P2649619601383115984.Spec : Prop :=
  ∀ n, P2649619601383115984.a n = A311088 n

end A311088

/-! ## A311088.P7178536481566497943

`A028310(n-(A072154(n)-A315447(n)))`
-/

namespace A311088.P7178536481566497943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - (A072154 n - A315447 n)).toNat

end

end A311088.P7178536481566497943

namespace A311088

/-- `A028310(n-(A072154(n)-A315447(n)))` -/
def P7178536481566497943.Spec : Prop :=
  ∀ n, P7178536481566497943.a n = A311088 n

end A311088

/-! ## A311088.P16672611377896197282

`A046978(n)+A301718(n)-A005843(n)`
-/

namespace A311088.P16672611377896197282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A301718 n - A005843 n)

end

end A311088.P16672611377896197282

namespace A311088

/-- `A046978(n)+A301718(n)-A005843(n)` -/
def P16672611377896197282.Spec : Prop :=
  ∀ n, P16672611377896197282.a n = A311088 n

theorem P16672611377896197282.correct : P16672611377896197282.Spec := by
  intro n
  simp only [A311088, Nat.add_sub_cancel, A311088.P16672611377896197282.a, A311088.P16529327285930187099.a, A005843, A005843.P3167286115683555970.a, A046978, A046978.P71107966793699888.a, A301718, A301718.P12470946639720229977.f1, A301718.P12470946639720229977.a, A313090, A313090.P5828089164501002712.f1, A313090.P5828089164501002712.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311088

/-! ## A311088.P5075860130624971427

`A068962(A315447(n))+A047486(n+1)`
-/

namespace A311088.P5075860130624971427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A315447 n).toNat + A047486 (n + 1)

end

end A311088.P5075860130624971427

namespace A311088

/-- `A068962(A315447(n))+A047486(n+1)` -/
def P5075860130624971427.Spec : Prop :=
  ∀ n, P5075860130624971427.a n = A311088 n

end A311088

/-! ## A311088.P12907974012831111196

`A046978(n)+A004396(A313916(n))`
-/

namespace A311088.P12907974012831111196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + A004396 (A313916 n).toNat

end

end A311088.P12907974012831111196

namespace A311088

/-- `A046978(n)+A004396(A313916(n))` -/
def P12907974012831111196.Spec : Prop :=
  ∀ n, P12907974012831111196.a n = A311088 n

end A311088

/-!
# A311089: Coordination sequence Gal.6.81.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311089, there is no canonical definition to state claims against.
-/

/-! ## A311089.P13110611916023781397

`A311087(n)+A128616(A153707(n+1))`
-/

namespace A311089.P13110611916023781397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311087 n + A128616 (A153707 (n + 1)).toNat

end

end A311089.P13110611916023781397

/-! ## A311089.P17403208697502069476

`A291137(A213332(2*n+1))+A246091(3*n+2)`
-/

namespace A311089.P17403208697502069476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291137 (A213332 (2 * n + 1)).toNat + A246091 (3 * n + 2)

end

end A311089.P17403208697502069476

/-!
# A311090: Coordination sequence Gal.6.67.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311090, there is no canonical definition to state claims against.
-/

/-! ## A311090.P9300170168366236951

`A343150(3*n+1)+A249441(3^n)`
-/

namespace A311090.P9300170168366236951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343150 (3 * n + 1) + A249441 (3 ^ n)

end

end A311090.P9300170168366236951

/-!
# A311091: Coordination sequence Gal.6.83.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311091, there is no canonical definition to state claims against.
-/

/-! ## A311091.P13202507278064211843

`A035280(or(1, 3*n))-round(xor(1, n)/6)`
-/

namespace A311091.P13202507278064211843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (Nat.lor 1 (3 * n)) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

end

end A311091.P13202507278064211843

/-! ## A311091.P7033779299012987655

`A311094(n)-A297155(A041387(n))`
-/

namespace A311091.P7033779299012987655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311094 n - A297155 (A041387 n).toNat

end

end A311091.P7033779299012987655

/-! ## A311091.P8628796048004461072

`A010074(A028355(n+1))+A008585(n)`
-/

namespace A311091.P8628796048004461072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010074 (A028355 (n + 1)).toNat + A008585 n

end

end A311091.P8628796048004461072

/-! ## A311091.P14013858274662507770

`A342789(A061419(n+1))+A029918(n)`
-/

namespace A311091.P14013858274662507770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342789 (A061419 (n + 1)).toNat + A029918 n

end

end A311091.P14013858274662507770

/-! ## A311091.P2447020783883228042

`A323422(n+1)+A010074(A028355(n+1))`
-/

namespace A311091.P2447020783883228042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323422 (n + 1) + A010074 (A028355 (n + 1)).toNat

end

end A311091.P2447020783883228042

/-!
# A311092: Coordination sequence Gal.6.3.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311092, there is no canonical definition to state claims against.
-/

/-! ## A311092.P784692529410660193

`A312402(n)-A182850(A121690(n))`
-/

namespace A311092.P784692529410660193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312402 n - A182850 (A121690 n).toNat

end

end A311092.P784692529410660193

/-! ## A311092.P7136010886642703350

`A008574(n)-A001221(A342213(n+1))`
-/

namespace A311092.P7136010886642703350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001221 (A342213 (n + 1)).toNat

end

end A311092.P7136010886642703350

/-! ## A311092.P1421602921841445835

`A008574(n)-A342845(∑[A000108(n)]-1)`
-/

namespace A311092.P1421602921841445835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A342845 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A311092.P1421602921841445835

/-! ## A311092.P12981857892375591993

`A008574(n)-A342845(A155587(n+1)-2)`
-/

namespace A311092.P12981857892375591993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A342845 (A155587 (n + 1) - 2).toNat

end

end A311092.P12981857892375591993

/-! ## A311092.P10383998184579465884

`A023055(3*n+2)-A054521(A130556(n+1))`
-/

namespace A311092.P10383998184579465884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023055 (3 * n + 2) - A054521 (A130556 (n + 1)).toNat

end

end A311092.P10383998184579465884

/-!
# A311093: Coordination sequence Gal.6.39.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311093, there is no canonical definition to state claims against.
-/

/-! ## A311093.P13435418291430214679

`∑[A097849(record[A343925(n+1)])]`
-/

namespace A311093.P13435418291430214679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097849 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311093.P13435418291430214679

/-! ## A311093.P6277235934034416076

`∑[A079715(n+5)%A079766(n)]`
-/

namespace A311093.P6277235934034416076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079715 (n + 5)) (A079766 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311093.P6277235934034416076

/-! ## A311093.P10128318867163601477

`A311088(n)+A157230(A147264(n+1))`
-/

namespace A311093.P10128318867163601477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311088 n + A157230 (A147264 (n + 1)).toNat

end

end A311093.P10128318867163601477

/-! ## A311093.P17148213821153996229

`A073454(A073452(n+2))+A073432(n+1)`
-/

namespace A311093.P17148213821153996229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073454 (A073452 (n + 2)).toNat + A073432 (n + 1)

end

end A311093.P17148213821153996229

/-! ## A311093.P3099025433600217173

`∑[A327657(A000232(2*(n+1))*A078175(3*n+1))]`
-/

namespace A311093.P3099025433600217173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327657 (A000232 (2 * (n + 1)) * A078175 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311093.P3099025433600217173

/-!
# A311094: Coordination sequence Gal.6.32.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311094, there is no canonical definition to state claims against.
-/

/-! ## A311094.P12772876297421100833

`record[Δ[A086742(A318500(3*n+2))]]`
-/

namespace A311094.P12772876297421100833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086742 (A318500 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311094.P12772876297421100833

/-! ## A311094.P11130426370349355856

`A310203(n)+A049240(A041387(n))`
-/

namespace A311094.P11130426370349355856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310203 n + A049240 (A041387 n).toNat

end

end A311094.P11130426370349355856

/-! ## A311094.P11354194596688578096

`A310203(n)+A001221(A069027(n+1))`
-/

namespace A311094.P11354194596688578096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310203 n + A001221 (A069027 (n + 1)).toNat

end

end A311094.P11354194596688578096

/-! ## A311094.P3067250798284756533

`A004277(2*n)-A005091(A001006(n))`
-/

namespace A311094.P3067250798284756533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) - A005091 (A001006 n).toNat

end

end A311094.P3067250798284756533

/-! ## A311094.P568860395098271299

`A321177(n+1)-A064547(A046073(n+1))`
-/

namespace A311094.P568860395098271299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321177 (n + 1) - A064547 (A046073 (n + 1)).toNat

end

end A311094.P568860395098271299

/-!
# A311095: Coordination sequence Gal.5.217.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311095, there is no canonical definition to state claims against.
-/

/-! ## A311095.P2181101833568471280

`(A310675(n)+A301293(n))/2`
-/

namespace A311095.P2181101833568471280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310675 n + A301293 n : ℚ) / 2

end

end A311095.P2181101833568471280

/-! ## A311095.P7769353493031727358

`A301293(n)-A001281(A312849(n)-A310937(n))`
-/

namespace A311095.P7769353493031727358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A001281 (A312849 n - A310937 n).toNat

end

end A311095.P7769353493031727358

/-! ## A311095.P3073767294617820968

`A004525(A310675(n)+A301293(n))`
-/

namespace A311095.P3073767294617820968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310675 n + A301293 n).toNat

end

end A311095.P3073767294617820968

/-! ## A311095.P15778038035243172

`A006370(A310675(n)+A301293(n))`
-/

namespace A311095.P15778038035243172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A310675 n + A301293 n).toNat

end

end A311095.P15778038035243172

/-! ## A311095.P16768812040159076343

`A032742(A310675(n)+A301293(n))`
-/

namespace A311095.P16768812040159076343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A310675 n + A301293 n).toNat

end

end A311095.P16768812040159076343

/-!
# A311096: Coordination sequence Gal.5.3.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311096, there is no canonical definition to state claims against.
-/

/-! ## A311096.P1862168141648882500

`xor(A122285(A000071(n+1)), A312849(n))`
-/

namespace A311096.P1862168141648882500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122285 (A000071 (n + 1)).toNat) (A312849 n)

end

end A311096.P1862168141648882500

/-! ## A311096.P11745882434653524627

`∑[A050252(A299383(n+1))]`
-/

namespace A311096.P11745882434653524627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A299383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311096.P11745882434653524627

/-! ## A311096.P17642016038761139972

`eq[1, A122200(A007298(n+1))]`
-/

namespace A311096.P17642016038761139972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 (A007298 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A311096.P17642016038761139972

/-! ## A311096.P130404077599774711

`∑[A297770(A300062(n+1)²)]`
-/

namespace A311096.P130404077599774711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A300062 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311096.P130404077599774711

/-! ## A311096.P17353862843895553996

`∑[A005812(∑[A014532(n+1)])]`
-/

namespace A311096.P17353862843895553996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311096.P17353862843895553996

/-!
# A311097: Coordination sequence Gal.6.14.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311097, there is no canonical definition to state claims against.
-/

/-! ## A311097.P10712558915719694521

`A311096(n)+A130654(A283920(n+1))`
-/

namespace A311097.P10712558915719694521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311096 n + A130654 (A283920 (n + 1)).toNat

end

end A311097.P10712558915719694521

/-! ## A311097.P11665291025544132040

`∑[A225230(A007272(n))+3]-3`
-/

namespace A311097.P11665291025544132040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A007272 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A311097.P11665291025544132040

/-! ## A311097.P1098664281659125637

`∑[A118668(A285790(2*n+1))]`
-/

namespace A311097.P1098664281659125637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 (A285790 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311097.P1098664281659125637

/-! ## A311097.P16790520482704219955

`A311865(n)-A031346(A090577(n))`
-/

namespace A311097.P16790520482704219955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n - A031346 (A090577 n).toNat

end

end A311097.P16790520482704219955

/-! ## A311097.P1736160330616654104

`or(A277007(A246604(n)), A311096(n))`
-/

namespace A311097.P1736160330616654104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277007 (A246604 n).toNat) (A311096 n)

end

end A311097.P1736160330616654104

/-!
# A311098: Coordination sequence Gal.5.35.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311098, there is no canonical definition to state claims against.
-/

/-! ## A311098.P2995607949799146258

`A300305(A190193(n+1)+A000217(n))`
-/

namespace A311098.P2995607949799146258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300305 (A190193 (n + 1) + A000217 n).toNat

end

end A311098.P2995607949799146258

/-! ## A311098.P10256331271561766871

`A288174(3*n+1)-A001221(A262441(n))`
-/

namespace A311098.P10256331271561766871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288174 (3 * n + 1) - A001221 (A262441 n).toNat

end

end A311098.P10256331271561766871

/-! ## A311098.P15582591638385363509

`lt[A181391(A217575(n+4)), A303837(2*(n+1))]`
-/

namespace A311098.P15582591638385363509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A217575 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A311098.P15582591638385363509

/-! ## A311098.P10726620379332280683

`A286340(2*n+1)+A084888(A318783(2*(n+1)))`
-/

namespace A311098.P10726620379332280683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286340 (2 * n + 1) + A084888 (A318783 (2 * (n + 1))).toNat

end

end A311098.P10726620379332280683

/-! ## A311098.P8979070518467824331

`A049472(eq[A084680(2*n+1), A212619(2*(n+1))])`
-/

namespace A311098.P8979070518467824331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A311098.P8979070518467824331

/-!
# A311099: Coordination sequence Gal.6.480.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311099, there is no canonical definition to state claims against.
-/

/-! ## A311099.P17088762023840526552

`A311148(A120126(n))-floor(atan(n/2))`
-/

namespace A311099.P17088762023840526552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311148 (A120126 n).toNat - ⌊Real.arctan ((n : ℚ) / 2 : ℝ)⌋

end

end A311099.P17088762023840526552

/-! ## A311099.P9893897250370613469

`A228361(A062399(n))+A016777(n)`
-/

namespace A311099.P9893897250370613469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A062399 n).toNat + A016777 n

end

end A311099.P9893897250370613469

/-! ## A311099.P4607324263579870733

`A228361(A120126(n))+A016777(n)`
-/

namespace A311099.P4607324263579870733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (A120126 n).toNat + A016777 n

end

end A311099.P4607324263579870733

/-! ## A311099.P10657977774080060475

`A311147(n)+A057428(A093566(n))`
-/

namespace A311099.P10657977774080060475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n + A057428 (A093566 n).toNat

end

end A311099.P10657977774080060475

/-! ## A311099.P6255231502578171581

`A311147(n)-A088469(A270339(n+1))`
-/

namespace A311099.P6255231502578171581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311147 n - A088469 (A270339 (n + 1)).toNat

end

end A311099.P6255231502578171581

